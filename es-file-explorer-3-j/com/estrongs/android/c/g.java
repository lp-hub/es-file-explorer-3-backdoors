package com.estrongs.android.c;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class g {
    private static List<String> g = new ArrayList();
    private static Hashtable h = new Hashtable();
    private static SimpleDateFormat i;

    /* renamed from: a, reason: collision with root package name */
    public int f267a;
    private byte[] d;
    private final ServerSocket f;
    private String c = "NanoHTTPD";
    private boolean e = false;

    /* renamed from: b, reason: collision with root package name */
    public Thread f268b = new Thread(new h(this));

    static {
        StringTokenizer stringTokenizer = new StringTokenizer("css\t\ttext/css js\t\t\ttext/javascript htm\t\ttext/html html\t\ttext/html txt\t\ttext/plain asc\t\ttext/plain gif\t\timage/gif jpg\t\timage/jpeg jpeg\t\timage/jpeg png\t\timage/png mp3\t\taudio/mpeg m3u\t\taudio/mpeg-url pdf\t\tapplication/pdf doc\t\tapplication/msword ogg\t\tapplication/x-ogg zip\t\tapplication/octet-stream exe\t\tapplication/octet-stream class\t\tapplication/octet-stream ");
        while (stringTokenizer.hasMoreTokens()) {
            h.put(stringTokenizer.nextToken(), stringTokenizer.nextToken());
        }
        i = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        i.setTimeZone(TimeZone.getTimeZone("GMT"));
    }

    public g(int i2) {
        this.f267a = i2;
        this.f = new ServerSocket(this.f267a);
        this.f268b.setDaemon(true);
        this.f268b.start();
    }

    private String a(String str) {
        String str2 = "";
        StringTokenizer stringTokenizer = new StringTokenizer(str, "/ ", true);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            str2 = nextToken.equals("/") ? str2 + "/" : nextToken.equals(" ") ? str2 + "%20" : str2 + URLEncoder.encode(nextToken);
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(String str) {
        synchronized (g) {
            for (int i2 = 0; i2 < g.size(); i2++) {
                if (g.get(i2).equals(str)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static void c(String str) {
        synchronized (g) {
            for (int i2 = 0; i2 < g.size(); i2++) {
                if (g.get(i2).equals(str)) {
                    return;
                }
            }
            g.add(str);
        }
    }

    public static void d(String str) {
        synchronized (g) {
            for (int i2 = 0; i2 < g.size(); i2++) {
                if (g.get(i2).equals(str)) {
                    g.remove(i2);
                    return;
                }
            }
        }
    }

    public static void j() {
        synchronized (g) {
            g.clear();
        }
    }

    public j a(String str, String str2, Properties properties, Properties properties2, Properties properties3) {
        System.out.println(str2 + " '" + str + "' ");
        Enumeration<?> propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            String str3 = (String) propertyNames.nextElement();
            System.out.println("  HDR: '" + str3 + "' = '" + properties.getProperty(str3) + "'");
        }
        Enumeration<?> propertyNames2 = properties2.propertyNames();
        while (propertyNames2.hasMoreElements()) {
            String str4 = (String) propertyNames2.nextElement();
            System.out.println("  PRM: '" + str4 + "' = '" + properties2.getProperty(str4) + "'");
        }
        Enumeration<?> propertyNames3 = properties3.propertyNames();
        while (propertyNames3.hasMoreElements()) {
            String str5 = (String) propertyNames3.nextElement();
            System.out.println("  UPLOADED: '" + str5 + "' = '" + properties3.getProperty(str5) + "'");
        }
        return a(str, properties, new File("."), true);
    }

    public j a(String str, Properties properties, File file, boolean z) {
        File file2;
        long j;
        String substring;
        int lastIndexOf;
        if (!file.isDirectory()) {
            return new j(this, "500 Internal Server Error", "text/plain", "INTERNAL ERRROR: serveFile(): given homeDir is not a directory.");
        }
        String replace = str.trim().replace(File.separatorChar, '/');
        if (replace.indexOf(63) >= 0) {
            replace = replace.substring(0, replace.indexOf(63));
        }
        if (replace.startsWith("..") || replace.endsWith("..") || replace.indexOf("../") >= 0) {
            return new j(this, "403 Forbidden", "text/plain", "FORBIDDEN: Won't serve ../ for security reasons.");
        }
        File file3 = new File(file, replace);
        if (!file3.exists()) {
            return new j(this, "404 Not Found", "text/plain", "Error 404, file not found.");
        }
        if (!file3.isDirectory()) {
            file2 = file3;
        } else {
            if (!replace.endsWith("/")) {
                String str2 = replace + "/";
                j jVar = new j(this, "301 Moved Permanently", "text/html", "<html><body>Redirected: <a href=\"" + str2 + "\">" + str2 + "</a></body></html>");
                jVar.a("Location", str2);
                return jVar;
            }
            if (new File(file3, "index.html").exists()) {
                file2 = new File(file, replace + "/index.html");
            } else {
                if (!new File(file3, "index.htm").exists()) {
                    if (!z) {
                        return new j(this, "403 Forbidden", "text/plain", "FORBIDDEN: No directory listing.");
                    }
                    String[] list = file3.list();
                    String str3 = "<html><body><h1>Directory " + replace + "</h1><br/>";
                    if (replace.length() > 1 && (lastIndexOf = (substring = replace.substring(0, replace.length() - 1)).lastIndexOf(47)) >= 0 && lastIndexOf < substring.length()) {
                        str3 = str3 + "<b><a href=\"" + replace.substring(0, lastIndexOf + 1) + "\">..</a></b><br/>";
                    }
                    String str4 = str3;
                    for (int i2 = 0; i2 < list.length; i2++) {
                        File file4 = new File(file3, list[i2]);
                        boolean isDirectory = file4.isDirectory();
                        if (isDirectory) {
                            str4 = str4 + "<b>";
                            list[i2] = list[i2] + "/";
                        }
                        String str5 = str4 + "<a href=\"" + a(replace + list[i2]) + "\">" + list[i2] + "</a>";
                        if (file4.isFile()) {
                            long length = file4.length();
                            String str6 = str5 + " &nbsp;<font size=2>(";
                            str5 = (length < 1024 ? str6 + length + " bytes" : length < 1048576 ? str6 + (length / 1024) + "." + (((length % 1024) / 10) % 100) + " KB" : str6 + (length / 1048576) + "." + (((length % 1048576) / 10) % 100) + " MB") + ")</font>";
                        }
                        str4 = str5 + "<br/>";
                        if (isDirectory) {
                            str4 = str4 + "</b>";
                        }
                    }
                    return new j(this, "200 OK", "text/html", str4 + "</body></html>");
                }
                file2 = new File(file, replace + "/index.htm");
            }
        }
        try {
            int lastIndexOf2 = file2.getCanonicalPath().lastIndexOf(46);
            String str7 = lastIndexOf2 >= 0 ? (String) h.get(file2.getCanonicalPath().substring(lastIndexOf2 + 1).toLowerCase()) : null;
            String str8 = str7 == null ? "application/octet-stream" : str7;
            String property = properties.getProperty("range");
            if (property == null || !property.startsWith("bytes=")) {
                j = 0;
            } else {
                String substring2 = property.substring("bytes=".length());
                int indexOf = substring2.indexOf(45);
                if (indexOf > 0) {
                    substring2 = substring2.substring(0, indexOf);
                }
                try {
                    j = Long.parseLong(substring2);
                } catch (NumberFormatException e) {
                    j = 0;
                }
            }
            FileInputStream fileInputStream = new FileInputStream(file2);
            fileInputStream.skip(j);
            j jVar2 = new j(this, "200 OK", str8, fileInputStream);
            jVar2.a("Content-length", "" + (file2.length() - j));
            jVar2.a("Content-range", "" + j + "-" + (file2.length() - 1) + "/" + file2.length());
            return jVar2;
        } catch (IOException e2) {
            return new j(this, "403 Forbidden", "text/plain", "FORBIDDEN: Reading file failed.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] h() {
        return this.d;
    }

    public void i() {
        try {
            this.e = true;
            Socket socket = new Socket();
            socket.connect(new InetSocketAddress(InetAddress.getByName("127.0.0.1"), this.f267a));
            socket.close();
            try {
                this.f.close();
                this.f268b.join();
            } catch (Exception e) {
            }
        } catch (Exception e2) {
            try {
                this.f.close();
                this.f268b.join();
            } catch (Exception e3) {
            }
        } catch (Throwable th) {
            try {
                this.f.close();
                this.f268b.join();
            } catch (Exception e4) {
            }
            throw th;
        }
    }
}
