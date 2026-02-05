package jcifs.http;

import com.dropbox.client2.exception.DropboxServerException;
import java.io.IOException;
import java.util.Enumeration;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jcifs.Config;
import jcifs.UniAddress;
import jcifs.smb.NtlmChallenge;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.smb.SmbAuthException;
import jcifs.smb.SmbSession;
import jcifs.util.Base64;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
public class NtlmHttpFilter implements Filter {
    private static LogStream log = LogStream.getInstance();
    private String defaultDomain;
    private String domainController;
    private boolean enableBasic;
    private boolean insecureBasic;
    private boolean loadBalance;
    private String realm;

    public void destroy() {
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        NtlmPasswordAuthentication negotiate = negotiate(httpServletRequest, (HttpServletResponse) servletResponse, false);
        if (negotiate == null) {
            return;
        }
        filterChain.doFilter(new NtlmHttpServletRequest(httpServletRequest, negotiate), servletResponse);
    }

    public FilterConfig getFilterConfig() {
        return null;
    }

    public void init(FilterConfig filterConfig) {
        Config.setProperty("jcifs.smb.client.soTimeout", "1800000");
        Config.setProperty("jcifs.netbios.cachePolicy", "1200");
        Config.setProperty("jcifs.smb.lmCompatibility", "0");
        Config.setProperty("jcifs.smb.client.useExtendedSecurity", "false");
        Enumeration initParameterNames = filterConfig.getInitParameterNames();
        while (initParameterNames.hasMoreElements()) {
            String str = (String) initParameterNames.nextElement();
            if (str.startsWith("jcifs.")) {
                Config.setProperty(str, filterConfig.getInitParameter(str));
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
        int i = Config.getInt("jcifs.util.loglevel", -1);
        if (i != -1) {
            LogStream.setLevel(i);
        }
        LogStream logStream = log;
        if (LogStream.level > 2) {
            try {
                Config.store(log, "JCIFS PROPERTIES");
            } catch (IOException e) {
            }
        }
    }

    protected NtlmPasswordAuthentication negotiate(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, boolean z) {
        NtlmPasswordAuthentication ntlmPasswordAuthentication;
        UniAddress byName;
        HttpSession session;
        byte[] challenge;
        String header = httpServletRequest.getHeader(OAuth.HTTP_AUTHORIZATION_HEADER);
        boolean z2 = this.enableBasic && (this.insecureBasic || httpServletRequest.isSecure());
        if (header != null && (header.startsWith("NTLM ") || (z2 && header.startsWith("Basic ")))) {
            if (header.startsWith("NTLM ")) {
                HttpSession session2 = httpServletRequest.getSession();
                if (this.loadBalance) {
                    NtlmChallenge ntlmChallenge = (NtlmChallenge) session2.getAttribute("NtlmHttpChal");
                    if (ntlmChallenge == null) {
                        ntlmChallenge = SmbSession.getChallengeForDomain();
                        session2.setAttribute("NtlmHttpChal", ntlmChallenge);
                    }
                    byName = ntlmChallenge.dc;
                    challenge = ntlmChallenge.challenge;
                } else {
                    byName = UniAddress.getByName(this.domainController, true);
                    challenge = SmbSession.getChallenge(byName);
                }
                ntlmPasswordAuthentication = NtlmSsp.authenticate(httpServletRequest, httpServletResponse, challenge);
                if (ntlmPasswordAuthentication == null) {
                    return null;
                }
                session2.removeAttribute("NtlmHttpChal");
            } else {
                String str = new String(Base64.decode(header.substring(6)), "US-ASCII");
                int indexOf = str.indexOf(58);
                String substring = indexOf != -1 ? str.substring(0, indexOf) : str;
                String substring2 = indexOf != -1 ? str.substring(indexOf + 1) : "";
                int indexOf2 = substring.indexOf(92);
                int indexOf3 = indexOf2 == -1 ? substring.indexOf(47) : indexOf2;
                String substring3 = indexOf3 != -1 ? substring.substring(0, indexOf3) : this.defaultDomain;
                if (indexOf3 != -1) {
                    substring = substring.substring(indexOf3 + 1);
                }
                NtlmPasswordAuthentication ntlmPasswordAuthentication2 = new NtlmPasswordAuthentication(substring3, substring, substring2);
                byName = UniAddress.getByName(this.domainController, true);
                ntlmPasswordAuthentication = ntlmPasswordAuthentication2;
            }
            try {
                SmbSession.logon(byName, ntlmPasswordAuthentication);
                LogStream logStream = log;
                if (LogStream.level > 2) {
                    log.println("NtlmHttpFilter: " + ntlmPasswordAuthentication + " successfully authenticated against " + byName);
                }
                httpServletRequest.getSession().setAttribute("NtlmHttpAuth", ntlmPasswordAuthentication);
            } catch (SmbAuthException e) {
                LogStream logStream2 = log;
                if (LogStream.level > 1) {
                    log.println("NtlmHttpFilter: " + ntlmPasswordAuthentication.getName() + ": 0x" + Hexdump.toHexString(e.getNtStatus(), 8) + ": " + e);
                }
                if (e.getNtStatus() == -1073741819 && (session = httpServletRequest.getSession(false)) != null) {
                    session.removeAttribute("NtlmHttpAuth");
                }
                httpServletResponse.setHeader("WWW-Authenticate", "NTLM");
                if (z2) {
                    httpServletResponse.addHeader("WWW-Authenticate", "Basic realm=\"" + this.realm + "\"");
                }
                httpServletResponse.setStatus(DropboxServerException._401_UNAUTHORIZED);
                httpServletResponse.setContentLength(0);
                httpServletResponse.flushBuffer();
                return null;
            }
        } else if (z) {
            ntlmPasswordAuthentication = null;
        } else {
            HttpSession session3 = httpServletRequest.getSession(false);
            if (session3 == null || (ntlmPasswordAuthentication = (NtlmPasswordAuthentication) session3.getAttribute("NtlmHttpAuth")) == null) {
                httpServletResponse.setHeader("WWW-Authenticate", "NTLM");
                if (z2) {
                    httpServletResponse.addHeader("WWW-Authenticate", "Basic realm=\"" + this.realm + "\"");
                }
                httpServletResponse.setStatus(DropboxServerException._401_UNAUTHORIZED);
                httpServletResponse.setContentLength(0);
                httpServletResponse.flushBuffer();
                return null;
            }
        }
        return ntlmPasswordAuthentication;
    }

    public void setFilterConfig(FilterConfig filterConfig) {
        try {
            init(filterConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
