package jcifs.http;

import com.dropbox.client2.exception.DropboxServerException;
import java.util.Enumeration;
import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jcifs.Config;
import jcifs.UniAddress;
import jcifs.netbios.NbtAddress;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.smb.SmbAuthException;
import jcifs.smb.SmbSession;
import jcifs.util.Base64;
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
public abstract class NtlmServlet extends HttpServlet {
    private String defaultDomain;
    private String domainController;
    private boolean enableBasic;
    private boolean insecureBasic;
    private boolean loadBalance;
    private String realm;

    public void init(ServletConfig servletConfig) {
        super.init(servletConfig);
        Config.setProperty("jcifs.smb.client.soTimeout", "300000");
        Config.setProperty("jcifs.netbios.cachePolicy", "600");
        Enumeration initParameterNames = servletConfig.getInitParameterNames();
        while (initParameterNames.hasMoreElements()) {
            String str = (String) initParameterNames.nextElement();
            if (str.startsWith("jcifs.")) {
                Config.setProperty(str, servletConfig.getInitParameter(str));
            }
        }
        this.defaultDomain = Config.getProperty("jcifs.smb.client.domain");
        this.domainController = Config.getProperty("jcifs.http.domainController");
        if (this.domainController == null) {
            this.domainController = this.defaultDomain;
            this.loadBalance = Config.getBoolean("jcifs.http.loadBalance", true);
        }
        this.enableBasic = Boolean.valueOf(Config.getProperty("jcifs.http.enableBasic")).booleanValue();
        this.insecureBasic = Boolean.valueOf(Config.getProperty("jcifs.http.insecureBasic")).booleanValue();
        this.realm = Config.getProperty("jcifs.http.basicRealm");
        if (this.realm == null) {
            this.realm = "jCIFS";
        }
    }

    protected void service(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        NtlmPasswordAuthentication ntlmPasswordAuthentication;
        boolean z = this.enableBasic && (this.insecureBasic || httpServletRequest.isSecure());
        String header = httpServletRequest.getHeader(OAuth.HTTP_AUTHORIZATION_HEADER);
        if (header == null || !(header.startsWith("NTLM ") || (z && header.startsWith("Basic ")))) {
            HttpSession session = httpServletRequest.getSession(false);
            if (session == null || session.getAttribute("NtlmHttpAuth") == null) {
                httpServletResponse.setHeader("WWW-Authenticate", "NTLM");
                if (z) {
                    httpServletResponse.addHeader("WWW-Authenticate", "Basic realm=\"" + this.realm + "\"");
                }
                httpServletResponse.setStatus(DropboxServerException._401_UNAUTHORIZED);
                httpServletResponse.flushBuffer();
                return;
            }
        } else {
            UniAddress uniAddress = this.loadBalance ? new UniAddress(NbtAddress.getByName(this.domainController, 28, null)) : UniAddress.getByName(this.domainController, true);
            if (header.startsWith("NTLM ")) {
                ntlmPasswordAuthentication = NtlmSsp.authenticate(httpServletRequest, httpServletResponse, SmbSession.getChallenge(uniAddress));
                if (ntlmPasswordAuthentication == null) {
                    return;
                }
            } else {
                String str = new String(Base64.decode(header.substring(6)), "US-ASCII");
                int indexOf = str.indexOf(58);
                String substring = indexOf != -1 ? str.substring(0, indexOf) : str;
                String substring2 = indexOf != -1 ? str.substring(indexOf + 1) : "";
                int indexOf2 = substring.indexOf(92);
                int indexOf3 = indexOf2 == -1 ? substring.indexOf(47) : indexOf2;
                ntlmPasswordAuthentication = new NtlmPasswordAuthentication(indexOf3 != -1 ? substring.substring(0, indexOf3) : this.defaultDomain, indexOf3 != -1 ? substring.substring(indexOf3 + 1) : substring, substring2);
            }
            try {
                SmbSession.logon(uniAddress, ntlmPasswordAuthentication);
                HttpSession session2 = httpServletRequest.getSession();
                session2.setAttribute("NtlmHttpAuth", ntlmPasswordAuthentication);
                session2.setAttribute("ntlmdomain", ntlmPasswordAuthentication.getDomain());
                session2.setAttribute("ntlmuser", ntlmPasswordAuthentication.getUsername());
            } catch (SmbAuthException e) {
                httpServletResponse.setHeader("WWW-Authenticate", "NTLM");
                if (z) {
                    httpServletResponse.addHeader("WWW-Authenticate", "Basic realm=\"" + this.realm + "\"");
                }
                httpServletResponse.setHeader("Connection", "close");
                httpServletResponse.setStatus(DropboxServerException._401_UNAUTHORIZED);
                httpServletResponse.flushBuffer();
                return;
            }
        }
        super.service(httpServletRequest, httpServletResponse);
    }
}
