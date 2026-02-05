package com.estrongs.android.ftp;

import com.estrongs.fs.FileSystemException;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.apache.commons.net.SocketClient;

/* loaded from: classes.dex */
public class h extends Thread {

    /* renamed from: b, reason: collision with root package name */
    private Socket f317b;
    private a c;
    private String j;
    private BufferedOutputStream d = null;
    private BufferedReader e = null;
    private boolean f = false;
    private String g = null;
    private String h = null;
    private boolean i = true;
    private Integer k = 0;
    private i l = null;
    private i m = null;
    private long n = 0;

    /* renamed from: a, reason: collision with root package name */
    boolean f316a = false;
    private File o = null;
    private boolean p = false;
    private String q = "UTF-8";
    private boolean r = true;

    public h(Socket socket, a aVar) {
        this.j = null;
        this.f317b = socket;
        this.c = aVar;
        this.j = "/";
    }

    private Object a(int i, String str) {
        String str2 = null;
        if (i != 1 && i != 2 && i != 3 && i != 4) {
            if (i != 5 && i != 6 && i != 7) {
                return null;
            }
            j jVar = new j(this);
            jVar.f321b = c(str);
            jVar.f320a = this.n;
            this.n = 0L;
            return jVar;
        }
        if (str != null) {
            try {
                if (str.length() > 0) {
                    if (str.startsWith("-a ") || str.startsWith("-A ") || str.startsWith("-l ") || str.startsWith("-L ")) {
                        str = str.substring(3);
                    } else if (str.startsWith("-la ") || str.startsWith("-LA ") || str.startsWith("-al ") || str.startsWith("-AL ")) {
                        str = str.substring(4);
                    } else if (str.startsWith("-a") || str.startsWith("-A") || str.startsWith("-la") || str.startsWith("-LA") || str.startsWith("-AL") || str.startsWith("-al") || str.startsWith("-L") || str.startsWith("-l")) {
                        str = null;
                    }
                    if (str.equals(".")) {
                        str = null;
                    } else if (str.equals("..")) {
                        if (this.j.equals("/")) {
                            return null;
                        }
                        int lastIndexOf = this.j.endsWith("/") ? this.j.lastIndexOf(47, this.j.length() - 2) : this.j.lastIndexOf(47);
                        if (lastIndexOf < 0) {
                            return null;
                        }
                        str = lastIndexOf == 0 ? "/" : this.j.substring(0, lastIndexOf);
                    }
                }
            } catch (Exception e) {
            }
        }
        str2 = str;
        return str2 == null ? this.c.h + this.j : c(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0078, code lost:
    
        r1.flush();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x007b, code lost:
    
        if (r11 == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007d, code lost:
    
        com.estrongs.fs.a.b.a().a(r9.getAbsolutePath());
        com.estrongs.fs.impl.local.d.j(r9.getAbsolutePath());
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008f, code lost:
    
        if (r11 == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0091, code lost:
    
        r7.c.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0097, code lost:
    
        r7.c.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(i iVar, File file, Socket socket, boolean z, long j) {
        try {
            try {
                if (z) {
                    this.c.a();
                } else {
                    this.c.c();
                }
                OutputStream fileOutputStream = z ? new FileOutputStream(file, true) : socket.getOutputStream();
                InputStream inputStream = z ? socket.getInputStream() : new FileInputStream(file);
                if (j > 0 && !z) {
                    inputStream.skip(j);
                }
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = inputStream.read(bArr, 0, 8192);
                    if (read == -1 || !this.c.e) {
                        break;
                    }
                    if (iVar.f) {
                        if (z) {
                            return;
                        } else {
                            return;
                        }
                    }
                    fileOutputStream.write(bArr, 0, read);
                    if (z) {
                        this.c.b(read);
                    } else {
                        this.c.a(read);
                    }
                }
            } catch (Exception e) {
                throw e;
            }
        } finally {
            if (z) {
                this.c.b();
            } else {
                this.c.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(BufferedOutputStream bufferedOutputStream, String str) {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.q);
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        try {
            bufferedOutputStream.write(bytes);
            bufferedOutputStream.flush();
        } catch (Exception e2) {
            e2.printStackTrace();
            try {
                bufferedOutputStream.close();
            } catch (Exception e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(String str) {
        try {
            System.out.println("Resp:" + str);
            a(this.d, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String c(String str) {
        return str.startsWith("/") ? this.c.h + str : this.j.endsWith("/") ? this.c.h + this.j + str : this.c.h + this.j + "/" + str;
    }

    private int d(String str) {
        if (str.equals("LIST")) {
            return 1;
        }
        if (str.equals("NLST")) {
            return 2;
        }
        if (str.equals("MLSD")) {
            return 3;
        }
        if (str.equals("MLST")) {
            return 4;
        }
        if (str.equals("RETR")) {
            return 5;
        }
        if (str.equals("STOR")) {
            return 6;
        }
        return str.equals("APPE") ? 7 : 0;
    }

    private void e(String str) {
        String str2;
        boolean z;
        ServerSocket serverSocket = null;
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        System.out.println("recv cmd:" + str);
        String[] split = str.split(" ");
        if (split == null || split.length < 1) {
            b("500 Command unrecognized.\r\n");
            return;
        }
        String upperCase = split[0].trim().toUpperCase();
        if (this.f316a) {
            if (upperCase.equals("RNTO")) {
                File file = new File(c(str.substring(5)));
                if (file.exists()) {
                    b("550 Target exist.\r\n");
                } else {
                    try {
                        z = com.estrongs.fs.d.a().b(com.estrongs.fs.d.a().j(this.o.getAbsolutePath()), file.getName());
                    } catch (FileSystemException e) {
                        z = false;
                    }
                    if (z) {
                        b("250 RNTO command successful.\r\n");
                    } else {
                        b("550 RNTO failed.\r\n");
                    }
                }
            } else {
                b("503 Bad sequence of commands.\r\n");
            }
            this.f316a = false;
            this.o = null;
            return;
        }
        if (upperCase.equals("USER")) {
            if (split.length < 2 || split[1].length() == 0) {
                this.g = "";
            } else {
                this.g = split[1];
            }
            b("331 User name okay, need password.\r\n");
            return;
        }
        if (upperCase.equals("PASS")) {
            if (split.length < 2 || split[1].length() == 0) {
                this.h = "";
            } else {
                this.h = split[1];
            }
            System.out.println("anonymous:" + this.c.g + ",user:" + this.c.f309a + ",pass:" + this.c.f310b + ",recv user:" + this.g + "recv_pass:" + this.h);
            if (this.c.g) {
                this.f = true;
            } else if ((this.c.f309a == null || this.c.f309a.length() == 0 || this.g.equals(this.c.f309a)) && (this.c.f310b == null || this.c.f310b.length() == 0 || this.h.equals(this.c.f310b))) {
                this.f = true;
            }
            if (this.f) {
                b("230 User logged in, proceed.\r\n");
                return;
            } else {
                b("530 Not logged in.\r\n");
                return;
            }
        }
        if (!this.f) {
            b("530 Not logged in.\r\n");
            return;
        }
        if (upperCase.equals("REST")) {
            try {
                this.n = Long.parseLong(str.substring(5));
                b("350 REST succ.\r\n");
                return;
            } catch (Exception e2) {
                this.n = 0L;
                b("501 Invalid args.\r\n");
                return;
            }
        }
        int d = d(upperCase);
        if (this.p) {
            if (d != 0) {
                try {
                    str2 = str.substring(5);
                } catch (Exception e3) {
                    str2 = null;
                }
                this.m.d = d;
                this.m.e = a(d, str2);
                this.m.g.unlock();
                this.m = null;
                this.p = false;
                return;
            }
        } else if (d != 0 && this.m == null) {
            b("503 Bad sequence of commands.\r\n");
            return;
        }
        if (upperCase.equals("SYST")) {
            b("215 UNIX Type: L8\r\n");
            return;
        }
        if (upperCase.equals("TYPE")) {
            if (split.length < 2 || split[1].length() == 0) {
                b("501 Command invalid args.\r\n");
                return;
            }
            if (split[1].equals("I")) {
                b("200 Type set to I.\r\n");
                this.i = true;
                return;
            } else if (!split[1].equals("A")) {
                b("501 Command invalid args.\r\n");
                return;
            } else {
                b("200 Type set to A.\r\n");
                this.i = false;
                return;
            }
        }
        if (upperCase.equals("PWD")) {
            b("257 \"" + this.j + "\" is current directory.\r\n");
            return;
        }
        if (upperCase.equals("CDUP")) {
            if (this.j.equals("/")) {
                b("550 Failed to change directory.\r\n");
                return;
            }
            int lastIndexOf = this.j.endsWith("/") ? this.j.lastIndexOf(47, this.j.length() - 2) : this.j.lastIndexOf(47);
            if (lastIndexOf < 0) {
                b("550 Failed to change directory.\r\n");
                return;
            }
            if (lastIndexOf == 0) {
                this.j = "/";
            } else {
                this.j = this.j.substring(0, lastIndexOf);
            }
            b("250 Directory successfully changed.\r\n");
            return;
        }
        if (upperCase.equals("CWD")) {
            String c = c(str.substring(4));
            File file2 = new File(c);
            if (!file2.exists() || !file2.isDirectory()) {
                b("550 Failed to change directory.\r\n");
                return;
            } else {
                b("250 Directory successfully changed.\r\n");
                this.j = c.substring(this.c.h.length());
                return;
            }
        }
        if (upperCase.equals("FEAT")) {
            b("211-Features\r\nSIZE\r\nPASV\r\n UTF8\r\n211 End\r\n");
            return;
        }
        if (upperCase.equals("LIST") || upperCase.equals("NLST") || upperCase.equals("MLST") || upperCase.equals("MLSD") || upperCase.equals("RETR")) {
            return;
        }
        if (upperCase.equals("PASV")) {
            if (this.m != null) {
                this.m.a();
                this.m = null;
            }
            do {
                try {
                    i++;
                    serverSocket = new ServerSocket(this.c.f());
                } catch (Exception e4) {
                }
                if (serverSocket != null) {
                    break;
                }
            } while (i < 20);
            if (i >= 20 || serverSocket == null) {
                b("502 open data port failed.\r\n");
                return;
            }
            try {
                InetAddress g = this.c.g();
                int localPort = serverSocket.getLocalPort();
                if (g == null || localPort <= 0) {
                    b("502 get local ip/port failed.\r\n");
                    return;
                }
                this.m = new i(this);
                this.m.f318a = serverSocket;
                this.m.g.lock();
                this.p = true;
                this.m.start();
                b("227 Entering Passive Mode (" + g.getHostAddress().replace('.', ',') + "," + (localPort / 256) + "," + (localPort % 256) + ").\r\n");
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                b("502 open data port failed.\r\n");
                return;
            }
        }
        if (upperCase.equals("NOOP")) {
            b("200 NOOP OK.\r\n");
            return;
        }
        if (upperCase.equals("DELE")) {
            try {
                File file3 = new File(c(str.substring(5)));
                if (!file3.exists()) {
                    b("550 File not exist.\r\n");
                    return;
                }
                if (file3.isDirectory()) {
                    b("550 Target is dir.\r\n");
                    return;
                }
                try {
                    z4 = com.estrongs.fs.d.a().a(com.estrongs.fs.d.a().j(file3.getAbsolutePath()));
                } catch (SecurityException e6) {
                }
                if (z4) {
                    b("250 DELE command successful.\r\n");
                    return;
                } else {
                    b("450 DELE fail.\r\n");
                    return;
                }
            } catch (Exception e7) {
                b("450 DELE fail.\r\n");
                return;
            }
        }
        if (upperCase.equals("RMD")) {
            try {
                File file4 = new File(c(str.substring(4)));
                if (!file4.exists()) {
                    b("550 Directory not exist.\r\n");
                    return;
                }
                if (!file4.isDirectory()) {
                    b("550 Target is not a dir.\r\n");
                    return;
                }
                try {
                    z3 = com.estrongs.fs.d.a().a(com.estrongs.fs.d.a().j(file4.getAbsolutePath()));
                } catch (SecurityException e8) {
                }
                if (z3) {
                    b("250 RMD command successful.\r\n");
                    return;
                } else {
                    b("450 RMD fail.\r\n");
                    return;
                }
            } catch (Exception e9) {
                b("450 RMD fail.\r\n");
                return;
            }
        }
        if (upperCase.equals("MKD")) {
            try {
                String c2 = c(str.substring(4));
                if (new File(c2).exists()) {
                    b("550 Target exist.\r\n");
                    return;
                }
                try {
                    z2 = com.estrongs.fs.d.a().g(c2);
                } catch (SecurityException e10) {
                }
                if (z2) {
                    b("257 Directory created.\r\n");
                    return;
                } else {
                    b("550 Directory create failed.\r\n");
                    return;
                }
            } catch (Exception e11) {
                b("550 Directory create failed.\r\n");
                return;
            }
        }
        if (upperCase.equals("OPTS")) {
            if (split[1] == null || split[1].length() == 0 || !split[1].equalsIgnoreCase("UTF8")) {
                b("550 OPTS wrong args.\r\n");
                return;
            }
            if (!this.q.equalsIgnoreCase("UTF-8")) {
                this.r = false;
                this.q = "UTF-8";
                try {
                    this.e = new BufferedReader(new InputStreamReader(this.f317b.getInputStream(), Charset.forName(this.q)));
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
            b("200 OPTS UTF8 is set to ON.\r\n");
            return;
        }
        if (!upperCase.equals("PORT")) {
            if (upperCase.equals("ABOR")) {
                if (this.k.intValue() == 0) {
                    b("226 ABOR succ.\r\n");
                    return;
                } else {
                    this.l.f = true;
                    this.l.a();
                    return;
                }
            }
            if (upperCase.equals("SIZE")) {
                File file5 = new File(c(str.substring(5)));
                if (!file5.exists()) {
                    b("550 Target not exist.\r\n");
                    return;
                } else if (file5.isDirectory()) {
                    b("550 Target is a directory.\r\n");
                    return;
                } else {
                    b("213 " + file5.length() + SocketClient.NETASCII_EOL);
                    return;
                }
            }
            if (upperCase.equals("QUIT")) {
                b("221 Byte.\r\n");
                try {
                    this.f317b.close();
                    return;
                } catch (Exception e13) {
                    return;
                }
            } else {
                if (!upperCase.equals("RNFR")) {
                    b("502 Command not implemented.\r\n");
                    return;
                }
                File file6 = new File(c(str.substring(5)));
                if (!file6.exists()) {
                    b("550 Target not exist.\r\n");
                    return;
                }
                b("350 Target exists, ready for destination name.\r\n");
                this.f316a = true;
                this.o = file6;
                return;
            }
        }
        try {
            if (this.m != null) {
                this.m.a();
                this.m = null;
            }
            String substring = str.substring(5);
            if (substring.contains("|") && substring.contains("::")) {
                b("550 IPV6 addr.\r\n");
                return;
            }
            String[] split2 = substring.split(",");
            if (split2.length != 6) {
                b("501 PORT invalid format.\r\n");
                return;
            }
            for (int i2 = 0; i2 < split2.length; i2++) {
                if (!split2[i2].matches("[0-9]+") || split2[i2].length() > 3) {
                    b("501 PORT invalid format.\r\n");
                    return;
                }
            }
            byte[] bArr = new byte[4];
            for (int i3 = 0; i3 < 4; i3++) {
                try {
                    int parseInt = Integer.parseInt(split2[i3]);
                    if (parseInt >= 128) {
                        parseInt -= 256;
                    }
                    bArr[i3] = (byte) parseInt;
                } catch (Exception e14) {
                    b("501 PORT invalid format.\r\n");
                    return;
                }
            }
            try {
                InetAddress byAddress = InetAddress.getByAddress(bArr);
                int parseInt2 = (Integer.parseInt(split2[4]) * 256) + Integer.parseInt(split2[5]);
                this.m = new i(this);
                this.m.f318a = null;
                this.m.f319b = byAddress;
                this.m.c = parseInt2;
                this.m.g.lock();
                this.p = true;
                this.m.start();
                b("227 Entering Active Mode.\r\n");
            } catch (UnknownHostException e15) {
                b("550 Unknown host.\r\n");
            }
        } catch (Exception e16) {
            e16.printStackTrace();
            b("501 PORT invalid format.\r\n");
        }
    }

    public String a(int i, File file) {
        StringBuilder sb = new StringBuilder();
        if (!file.exists()) {
            return null;
        }
        String name = file.getName();
        if (name.contains("*") || name.contains("/")) {
            return null;
        }
        if (i == 1) {
            if (file.isDirectory()) {
                sb.append("drwxr-xr-x 1 nobody nobody");
            } else {
                sb.append("-rw-r--r-- 1 nobody nobody");
            }
            String l = Long.valueOf(file.length()).toString();
            int length = 13 - l.length();
            while (true) {
                int i2 = length - 1;
                if (length <= 0) {
                    break;
                }
                sb.append(' ');
                length = i2;
            }
            sb.append(l);
            sb.append((System.currentTimeMillis() - file.lastModified() > -1627869184 ? new SimpleDateFormat(" MMM dd HH:mm ", Locale.US) : new SimpleDateFormat(" MMM dd  yyyy ", Locale.US)).format(new Date(file.lastModified())));
            sb.append(name);
            sb.append(SocketClient.NETASCII_EOL);
        } else if (i == 2) {
            sb.append(name);
            sb.append(SocketClient.NETASCII_EOL);
        }
        return sb.toString();
    }

    public void a(String str) {
        this.q = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            try {
                if (this.d == null) {
                    this.d = new BufferedOutputStream(this.f317b.getOutputStream());
                }
                if (this.e == null) {
                    this.e = new BufferedReader(new InputStreamReader(this.f317b.getInputStream(), Charset.forName(this.q)));
                }
                b("220 ESFtpServer 0.1 ready.\r\n");
                int i = 0;
                while (i < 10 && this.c.e) {
                    String readLine = this.e.readLine();
                    if (readLine != null) {
                        e(readLine);
                        i = 0;
                    } else {
                        i++;
                    }
                    if (this.r && !this.q.equalsIgnoreCase(a.f)) {
                        this.q = a.f;
                        this.e = new BufferedReader(new InputStreamReader(this.f317b.getInputStream(), Charset.forName(this.q)));
                    }
                }
                System.out.println("client exit");
                try {
                    if (this.m != null) {
                        this.m.a();
                        this.m = null;
                    }
                    if (this.d != null) {
                        this.d.close();
                    }
                    if (this.e != null) {
                        this.e.close();
                    }
                    this.d = null;
                    this.e = null;
                    this.f317b.close();
                } catch (Exception e) {
                }
            } catch (Throwable th) {
                try {
                    if (this.m != null) {
                        this.m.a();
                        this.m = null;
                    }
                    if (this.d != null) {
                        this.d.close();
                    }
                    if (this.e != null) {
                        this.e.close();
                    }
                    this.d = null;
                    this.e = null;
                    this.f317b.close();
                } catch (Exception e2) {
                }
                throw th;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            System.out.println("client exception, exit");
            try {
                if (this.m != null) {
                    this.m.a();
                    this.m = null;
                }
                if (this.d != null) {
                    this.d.close();
                }
                if (this.e != null) {
                    this.e.close();
                }
                this.d = null;
                this.e = null;
                this.f317b.close();
            } catch (Exception e4) {
            }
        }
    }
}
