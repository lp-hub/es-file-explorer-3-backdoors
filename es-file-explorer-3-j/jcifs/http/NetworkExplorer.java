package jcifs.http;

import com.dropbox.client2.exception.DropboxServerException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.LinkedList;
import java.util.ListIterator;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jcifs.Config;
import jcifs.UniAddress;
import jcifs.netbios.NbtAddress;
import jcifs.smb.DfsReferral;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.smb.SmbAuthException;
import jcifs.smb.SmbException;
import jcifs.smb.SmbFile;
import jcifs.smb.SmbFileInputStream;
import jcifs.smb.SmbSession;
import jcifs.util.Base64;
import jcifs.util.LogStream;
import jcifs.util.MimeMap;
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
public class NetworkExplorer extends HttpServlet {
    private static LogStream log = LogStream.getInstance();
    private boolean credentialsSupplied;
    private String defaultDomain;
    private boolean enableBasic;
    private boolean insecureBasic;
    private MimeMap mimeMap;
    private NtlmSsp ntlmSsp;
    private String realm;
    private String style;

    private String parseServerAndShare(String str) {
        int i;
        char[] cArr = new char[256];
        if (str == null) {
            return null;
        }
        int length = str.length();
        int i2 = 0;
        while (i2 < length && str.charAt(i2) == '/') {
            i2++;
        }
        if (i2 == length) {
            return null;
        }
        int i3 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt == '/') {
                break;
            }
            cArr[i3] = charAt;
            i2++;
            i3++;
        }
        while (i2 < length && str.charAt(i2) == '/') {
            i2++;
        }
        if (i2 < length) {
            int i4 = i3 + 1;
            cArr[i3] = '/';
            int i5 = i2;
            while (true) {
                i = i4 + 1;
                int i6 = i5 + 1;
                char charAt2 = str.charAt(i5);
                cArr[i4] = charAt2;
                if (i6 >= length || charAt2 == '/') {
                    break;
                }
                i4 = i;
                i5 = i6;
            }
        } else {
            i = i3;
        }
        return new String(cArr, 0, i);
    }

    protected int compareDates(SmbFile smbFile, String str, SmbFile smbFile2) {
        return smbFile.isDirectory() != smbFile2.isDirectory() ? smbFile.isDirectory() ? -1 : 1 : smbFile.isDirectory() ? str.compareToIgnoreCase(smbFile2.getName()) : smbFile.lastModified() <= smbFile2.lastModified() ? 1 : -1;
    }

    protected int compareNames(SmbFile smbFile, String str, SmbFile smbFile2) {
        return smbFile.isDirectory() != smbFile2.isDirectory() ? smbFile.isDirectory() ? -1 : 1 : str.compareToIgnoreCase(smbFile2.getName());
    }

    protected int compareSizes(SmbFile smbFile, String str, SmbFile smbFile2) {
        if (smbFile.isDirectory() != smbFile2.isDirectory()) {
            return smbFile.isDirectory() ? -1 : 1;
        }
        if (smbFile.isDirectory()) {
            return str.compareToIgnoreCase(smbFile2.getName());
        }
        long length = smbFile.length() - smbFile2.length();
        return length == 0 ? str.compareToIgnoreCase(smbFile2.getName()) : length <= 0 ? 1 : -1;
    }

    protected int compareTypes(SmbFile smbFile, String str, SmbFile smbFile2) {
        if (smbFile.isDirectory() != smbFile2.isDirectory()) {
            return smbFile.isDirectory() ? -1 : 1;
        }
        String name = smbFile2.getName();
        if (smbFile.isDirectory()) {
            return str.compareToIgnoreCase(name);
        }
        int lastIndexOf = str.lastIndexOf(46);
        String substring = lastIndexOf == -1 ? "" : str.substring(lastIndexOf + 1);
        int lastIndexOf2 = name.lastIndexOf(46);
        int compareToIgnoreCase = substring.compareToIgnoreCase(lastIndexOf2 == -1 ? "" : name.substring(lastIndexOf2 + 1));
        return compareToIgnoreCase == 0 ? str.compareToIgnoreCase(name) : compareToIgnoreCase;
    }

    protected void doDirectory(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, SmbFile smbFile) {
        int i;
        String str;
        int i2;
        int i3;
        int i4;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/d/yy h:mm a");
        simpleDateFormat.setCalendar(new GregorianCalendar());
        SmbFile[] listFiles = smbFile.listFiles();
        LogStream logStream = log;
        if (LogStream.level > 2) {
            log.println(listFiles.length + " items listed");
        }
        LinkedList linkedList = new LinkedList();
        String parameter = httpServletRequest.getParameter("fmt");
        String str2 = parameter == null ? "col" : parameter;
        String parameter2 = httpServletRequest.getParameter("sort");
        char c = (parameter2 == null || parameter2.equals("name")) ? (char) 0 : parameter2.equals("size") ? (char) 1 : parameter2.equals("type") ? (char) 2 : parameter2.equals("date") ? (char) 3 : (char) 0;
        int i5 = 0;
        int i6 = 28;
        int i7 = 0;
        for (0; i < listFiles.length; i + 1) {
            try {
            } catch (SmbAuthException e) {
                LogStream logStream2 = log;
                if (LogStream.level > 2) {
                    e.printStackTrace(log);
                }
            } catch (SmbException e2) {
                LogStream logStream3 = log;
                if (LogStream.level > 2) {
                    e2.printStackTrace(log);
                }
                if (e2.getNtStatus() != -1073741823) {
                    throw e2;
                }
            }
            i = listFiles[i].getType() == 16 ? i + 1 : 0;
            if (listFiles[i].isDirectory()) {
                i2 = i7 + 1;
                i3 = i5;
            } else {
                i2 = i7;
                i3 = i5 + 1;
            }
            String name = listFiles[i].getName();
            LogStream logStream4 = log;
            if (LogStream.level > 3) {
                log.println(i + ": " + name);
            }
            int length = name.length();
            if (length > i6) {
                i6 = length;
            }
            ListIterator listIterator = linkedList.listIterator();
            int i8 = 0;
            while (true) {
                i4 = i8;
                if (!listIterator.hasNext()) {
                    break;
                }
                if (c == 0) {
                    if (compareNames(listFiles[i], name, (SmbFile) listIterator.next()) < 0) {
                        break;
                    } else {
                        i8 = i4 + 1;
                    }
                } else if (c == 1) {
                    if (compareSizes(listFiles[i], name, (SmbFile) listIterator.next()) < 0) {
                        break;
                    } else {
                        i8 = i4 + 1;
                    }
                } else if (c != 2) {
                    if (c == 3 && compareDates(listFiles[i], name, (SmbFile) listIterator.next()) < 0) {
                        break;
                    }
                    i8 = i4 + 1;
                } else if (compareTypes(listFiles[i], name, (SmbFile) listIterator.next()) < 0) {
                    break;
                } else {
                    i8 = i4 + 1;
                }
            }
            linkedList.add(i4, listFiles[i]);
            i5 = i3;
            i7 = i2;
        }
        if (i6 > 50) {
            i6 = 50;
        }
        int i9 = i6 * 9;
        PrintWriter writer = httpServletResponse.getWriter();
        httpServletResponse.setContentType("text/html");
        writer.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
        writer.println("<html><head><title>Network Explorer</title>");
        writer.println("<meta HTTP-EQUIV=\"Pragma\" CONTENT=\"no-cache\">");
        writer.println("<style TYPE=\"text/css\">");
        writer.println(this.style);
        if (listFiles.length < 200) {
            writer.println("    a:hover {");
            writer.println("        background: #a2ff01;");
            writer.println("    }");
        }
        writer.println("</STYLE>");
        writer.println("</head><body>");
        writer.print("<a class=\"sort\" style=\"width: " + i9 + ";\" href=\"?fmt=detail&sort=name\">Name</a>");
        writer.println("<a class=\"sort\" href=\"?fmt=detail&sort=size\">Size</a>");
        writer.println("<a class=\"sort\" href=\"?fmt=detail&sort=type\">Type</a>");
        writer.println("<a class=\"sort\" style=\"width: 180\" href=\"?fmt=detail&sort=date\">Modified</a><br clear='all'><p>");
        String canonicalPath = smbFile.getCanonicalPath();
        if (canonicalPath.length() < 7) {
            writer.println("<b><big>smb://</big></b><br>");
            str = ".";
        } else {
            writer.println("<b><big>" + canonicalPath + "</big></b><br>");
            str = "../";
        }
        writer.println((i7 + i5) + " objects (" + i7 + " directories, " + i5 + " files)<br>");
        writer.println("<b><a class=\"plain\" href=\".\">normal</a> | <a class=\"plain\" href=\"?fmt=detail\">detailed</a></b>");
        writer.println("<p><table border='0' cellspacing='0' cellpadding='0'><tr><td>");
        writer.print("<A style=\"width: " + i9);
        writer.print("; height: 18;\" HREF=\"");
        writer.print(str);
        writer.println("\"><b>&uarr;</b></a>");
        if (str2.equals("detail")) {
            writer.println("<br clear='all'>");
        }
        if (str.length() == 1 || smbFile.getType() != 2) {
            str = "";
        }
        ListIterator listIterator2 = linkedList.listIterator();
        while (listIterator2.hasNext()) {
            SmbFile smbFile2 = (SmbFile) listIterator2.next();
            String name2 = smbFile2.getName();
            if (str2.equals("detail")) {
                writer.print("<A style=\"width: " + i9);
                writer.print("; height: 18;\" HREF=\"");
                writer.print(str);
                writer.print(name2);
                if (smbFile2.isDirectory()) {
                    writer.print("?fmt=detail\"><b>");
                    writer.print(name2);
                    writer.print("</b></a>");
                } else {
                    writer.print("\"><b>");
                    writer.print(name2);
                    writer.print("</b></a><div align='right'>");
                    writer.print((smbFile2.length() / 1024) + " KB </div><div>");
                    int lastIndexOf = name2.lastIndexOf(46) + 1;
                    if (lastIndexOf <= 1 || name2.length() - lastIndexOf >= 6) {
                        writer.print("&nbsp;</div>");
                    } else {
                        writer.print(name2.substring(lastIndexOf).toUpperCase() + "</div class='ext'>");
                    }
                    writer.print("<div style='width: 180'>");
                    writer.print(simpleDateFormat.format(new Date(smbFile2.lastModified())));
                    writer.print("</div>");
                }
                writer.println("<br clear='all'>");
            } else {
                writer.print("<A style=\"width: " + i9);
                if (smbFile2.isDirectory()) {
                    writer.print("; height: 18;\" HREF=\"");
                    writer.print(str);
                    writer.print(name2);
                    writer.print("\"><b>");
                    writer.print(name2);
                    writer.print("</b></a>");
                } else {
                    writer.print(";\" HREF=\"");
                    writer.print(str);
                    writer.print(name2);
                    writer.print("\"><b>");
                    writer.print(name2);
                    writer.print("</b><br><small>");
                    writer.print((smbFile2.length() / 1024) + "KB <br>");
                    writer.print(simpleDateFormat.format(new Date(smbFile2.lastModified())));
                    writer.print("</small>");
                    writer.println("</a>");
                }
            }
        }
        writer.println("</td></tr></table>");
        writer.println("</BODY></HTML>");
        writer.close();
    }

    protected void doFile(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, SmbFile smbFile) {
        String substring;
        byte[] bArr = new byte[8192];
        SmbFileInputStream smbFileInputStream = new SmbFileInputStream(smbFile);
        ServletOutputStream outputStream = httpServletResponse.getOutputStream();
        String path = smbFile.getPath();
        httpServletResponse.setContentType("text/plain");
        int lastIndexOf = path.lastIndexOf(46);
        if (lastIndexOf > 0 && (substring = path.substring(lastIndexOf + 1)) != null && substring.length() > 1 && substring.length() < 6) {
            httpServletResponse.setContentType(this.mimeMap.getMimeType(substring));
        }
        httpServletResponse.setHeader("Content-Length", smbFile.length() + "");
        httpServletResponse.setHeader("Accept-Ranges", "Bytes");
        while (true) {
            int read = smbFileInputStream.read(bArr);
            if (read == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        boolean z;
        String str;
        NtlmPasswordAuthentication ntlmPasswordAuthentication;
        int indexOf;
        NtlmPasswordAuthentication ntlmPasswordAuthentication2 = null;
        HttpSession session = httpServletRequest.getSession(false);
        String pathInfo = httpServletRequest.getPathInfo();
        if (pathInfo != null) {
            String parseServerAndShare = parseServerAndShare(pathInfo);
            if (parseServerAndShare == null || (indexOf = parseServerAndShare.indexOf(47)) <= 0) {
                str = parseServerAndShare;
                z = true;
            } else {
                str = parseServerAndShare.substring(0, indexOf).toLowerCase();
                z = false;
            }
        } else {
            z = true;
            str = null;
        }
        String header = httpServletRequest.getHeader(OAuth.HTTP_AUTHORIZATION_HEADER);
        boolean z2 = this.enableBasic && (this.insecureBasic || httpServletRequest.isSecure());
        if (header != null && (header.startsWith("NTLM ") || (z2 && header.startsWith("Basic ")))) {
            if (header.startsWith("NTLM ")) {
                UniAddress byName = (pathInfo == null || str == null) ? UniAddress.getByName(NbtAddress.getByName(NbtAddress.MASTER_BROWSER_NAME, 1, null).getHostAddress()) : UniAddress.getByName(str, z);
                httpServletRequest.getSession();
                ntlmPasswordAuthentication = NtlmSsp.authenticate(httpServletRequest, httpServletResponse, SmbSession.getChallenge(byName));
                if (ntlmPasswordAuthentication == null) {
                    return;
                }
            } else {
                String str2 = new String(Base64.decode(header.substring(6)), "US-ASCII");
                int indexOf2 = str2.indexOf(58);
                String substring = indexOf2 != -1 ? str2.substring(0, indexOf2) : str2;
                String substring2 = indexOf2 != -1 ? str2.substring(indexOf2 + 1) : "";
                int indexOf3 = substring.indexOf(92);
                int indexOf4 = indexOf3 == -1 ? substring.indexOf(47) : indexOf3;
                String substring3 = indexOf4 != -1 ? substring.substring(0, indexOf4) : this.defaultDomain;
                if (indexOf4 != -1) {
                    substring = substring.substring(indexOf4 + 1);
                }
                ntlmPasswordAuthentication = new NtlmPasswordAuthentication(substring3, substring, substring2);
            }
            httpServletRequest.getSession().setAttribute("npa-" + str, ntlmPasswordAuthentication);
            ntlmPasswordAuthentication2 = ntlmPasswordAuthentication;
        } else if (!this.credentialsSupplied) {
            NtlmPasswordAuthentication ntlmPasswordAuthentication3 = session != null ? (NtlmPasswordAuthentication) session.getAttribute("npa-" + str) : null;
            if (ntlmPasswordAuthentication3 == null) {
                httpServletResponse.setHeader("WWW-Authenticate", "NTLM");
                if (z2) {
                    httpServletResponse.addHeader("WWW-Authenticate", "Basic realm=\"" + this.realm + "\"");
                }
                httpServletResponse.setHeader("Connection", "close");
                httpServletResponse.setStatus(DropboxServerException._401_UNAUTHORIZED);
                httpServletResponse.flushBuffer();
                return;
            }
            ntlmPasswordAuthentication2 = ntlmPasswordAuthentication3;
        }
        try {
            SmbFile smbFile = ntlmPasswordAuthentication2 != null ? new SmbFile("smb:/" + pathInfo, ntlmPasswordAuthentication2) : str == null ? new SmbFile("smb://") : new SmbFile("smb:/" + pathInfo);
            if (smbFile.isDirectory()) {
                doDirectory(httpServletRequest, httpServletResponse, smbFile);
            } else {
                doFile(httpServletRequest, httpServletResponse, smbFile);
            }
        } catch (DfsReferral e) {
            StringBuffer requestURL = httpServletRequest.getRequestURL();
            String queryString = httpServletRequest.getQueryString();
            StringBuffer stringBuffer = new StringBuffer(requestURL.substring(0, requestURL.length() - httpServletRequest.getPathInfo().length()));
            stringBuffer.append('/');
            stringBuffer.append(e.server);
            stringBuffer.append('/');
            stringBuffer.append(e.share);
            stringBuffer.append('/');
            if (queryString != null) {
                stringBuffer.append(httpServletRequest.getQueryString());
            }
            httpServletResponse.sendRedirect(stringBuffer.toString());
            httpServletResponse.flushBuffer();
        } catch (SmbAuthException e2) {
            if (session != null) {
                session.removeAttribute("npa-" + str);
            }
            if (e2.getNtStatus() == -1073741819) {
                httpServletResponse.sendRedirect(httpServletRequest.getRequestURL().toString());
                return;
            }
            httpServletResponse.setHeader("WWW-Authenticate", "NTLM");
            if (z2) {
                httpServletResponse.addHeader("WWW-Authenticate", "Basic realm=\"" + this.realm + "\"");
            }
            httpServletResponse.setHeader("Connection", "close");
            httpServletResponse.setStatus(DropboxServerException._401_UNAUTHORIZED);
            httpServletResponse.flushBuffer();
        }
    }

    public void init() {
        StringBuffer stringBuffer = new StringBuffer();
        byte[] bArr = new byte[1024];
        Config.setProperty("jcifs.smb.client.soTimeout", "600000");
        Config.setProperty("jcifs.smb.client.attrExpirationPeriod", "300000");
        Enumeration initParameterNames = getInitParameterNames();
        while (initParameterNames.hasMoreElements()) {
            String str = (String) initParameterNames.nextElement();
            if (str.startsWith("jcifs.")) {
                Config.setProperty(str, getInitParameter(str));
            }
        }
        if (Config.getProperty("jcifs.smb.client.username") == null) {
            this.ntlmSsp = new NtlmSsp();
        } else {
            this.credentialsSupplied = true;
        }
        try {
            this.mimeMap = new MimeMap();
            InputStream resourceAsStream = getClass().getClassLoader().getResourceAsStream("jcifs/http/ne.css");
            while (true) {
                int read = resourceAsStream.read(bArr);
                if (read == -1) {
                    break;
                } else {
                    stringBuffer.append(new String(bArr, 0, read, "ISO8859_1"));
                }
            }
            this.style = stringBuffer.toString();
            this.enableBasic = Config.getBoolean("jcifs.http.enableBasic", false);
            this.insecureBasic = Config.getBoolean("jcifs.http.insecureBasic", false);
            this.realm = Config.getProperty("jcifs.http.basicRealm");
            if (this.realm == null) {
                this.realm = "jCIFS";
            }
            this.defaultDomain = Config.getProperty("jcifs.smb.client.domain");
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
        } catch (IOException e2) {
            throw new ServletException(e2.getMessage());
        }
    }
}
