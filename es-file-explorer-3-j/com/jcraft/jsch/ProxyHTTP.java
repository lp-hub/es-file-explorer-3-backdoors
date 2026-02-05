package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import org.apache.commons.net.SocketClient;

/* loaded from: classes.dex */
public class ProxyHTTP implements Proxy {

    /* renamed from: a, reason: collision with root package name */
    private static int f3328a = 80;

    /* renamed from: b, reason: collision with root package name */
    private String f3329b;
    private int c;
    private InputStream d;
    private OutputStream e;
    private Socket f;
    private String g;
    private String h;

    @Override // com.jcraft.jsch.Proxy
    public InputStream a() {
        return this.d;
    }

    @Override // com.jcraft.jsch.Proxy
    public void a(SocketFactory socketFactory, String str, int i, int i2) {
        int i3;
        int i4;
        int i5;
        try {
            try {
                if (socketFactory == null) {
                    this.f = Util.a(this.f3329b, this.c, i2);
                    this.d = this.f.getInputStream();
                    this.e = this.f.getOutputStream();
                } else {
                    this.f = socketFactory.a(this.f3329b, this.c);
                    this.d = socketFactory.a(this.f);
                    this.e = socketFactory.b(this.f);
                }
                if (i2 > 0) {
                    this.f.setSoTimeout(i2);
                }
                this.f.setTcpNoDelay(true);
                this.e.write(Util.b("CONNECT " + str + ":" + i + " HTTP/1.0\r\n"));
                if (this.g != null && this.h != null) {
                    byte[] b2 = Util.b(String.valueOf(this.g) + ":" + this.h);
                    byte[] b3 = Util.b(b2, 0, b2.length);
                    this.e.write(Util.b("Proxy-Authorization: Basic "));
                    this.e.write(b3);
                    this.e.write(Util.b(SocketClient.NETASCII_EOL));
                }
                this.e.write(Util.b(SocketClient.NETASCII_EOL));
                this.e.flush();
                StringBuffer stringBuffer = new StringBuffer();
                int i6 = 0;
                while (i6 >= 0) {
                    i6 = this.d.read();
                    if (i6 == 13) {
                        i6 = this.d.read();
                        if (i6 == 10) {
                            break;
                        }
                    } else {
                        stringBuffer.append((char) i6);
                    }
                }
                if (i6 < 0) {
                    throw new IOException();
                }
                String stringBuffer2 = stringBuffer.toString();
                String str2 = "Unknow reason";
                int i7 = -1;
                try {
                    i6 = stringBuffer2.indexOf(32);
                    int indexOf = stringBuffer2.indexOf(32, i6 + 1);
                    i7 = Integer.parseInt(stringBuffer2.substring(i6 + 1, indexOf));
                    str2 = stringBuffer2.substring(indexOf + 1);
                    i3 = i6;
                    i4 = i7;
                } catch (Exception e) {
                    int i8 = i7;
                    i3 = i6;
                    i4 = i8;
                }
                if (i4 != 200) {
                    throw new IOException("proxy error: " + str2);
                }
                do {
                    i5 = 0;
                    while (i3 >= 0) {
                        int read = this.d.read();
                        if (read == 13) {
                            i3 = this.d.read();
                            if (i3 == 10) {
                                break;
                            }
                        } else {
                            i5++;
                            i3 = read;
                        }
                    }
                    if (i3 < 0) {
                        throw new IOException();
                    }
                } while (i5 != 0);
            } catch (Exception e2) {
                try {
                    if (this.f != null) {
                        this.f.close();
                    }
                } catch (Exception e3) {
                }
                String str3 = "ProxyHTTP: " + e2.toString();
                if (!(e2 instanceof Throwable)) {
                    throw new JSchException(str3);
                }
                throw new JSchException(str3, e2);
            }
        } catch (RuntimeException e4) {
            throw e4;
        }
    }

    @Override // com.jcraft.jsch.Proxy
    public OutputStream b() {
        return this.e;
    }

    @Override // com.jcraft.jsch.Proxy
    public Socket c() {
        return this.f;
    }

    @Override // com.jcraft.jsch.Proxy
    public void d() {
        try {
            if (this.d != null) {
                this.d.close();
            }
            if (this.e != null) {
                this.e.close();
            }
            if (this.f != null) {
                this.f.close();
            }
        } catch (Exception e) {
        }
        this.d = null;
        this.e = null;
        this.f = null;
    }
}
