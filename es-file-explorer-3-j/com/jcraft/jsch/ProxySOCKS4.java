package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;

/* loaded from: classes.dex */
public class ProxySOCKS4 implements Proxy {

    /* renamed from: a, reason: collision with root package name */
    private static int f3330a = 1080;

    /* renamed from: b, reason: collision with root package name */
    private String f3331b;
    private int c;
    private InputStream d;
    private OutputStream e;
    private Socket f;
    private String g;

    @Override // com.jcraft.jsch.Proxy
    public InputStream a() {
        return this.d;
    }

    @Override // com.jcraft.jsch.Proxy
    public void a(SocketFactory socketFactory, String str, int i, int i2) {
        int i3 = 4;
        int i4 = 0;
        try {
            try {
                if (socketFactory == null) {
                    this.f = Util.a(this.f3331b, this.c, i2);
                    this.d = this.f.getInputStream();
                    this.e = this.f.getOutputStream();
                } else {
                    this.f = socketFactory.a(this.f3331b, this.c);
                    this.d = socketFactory.a(this.f);
                    this.e = socketFactory.b(this.f);
                }
                if (i2 > 0) {
                    this.f.setSoTimeout(i2);
                }
                this.f.setTcpNoDelay(true);
                byte[] bArr = new byte[1024];
                bArr[0] = 4;
                bArr[1] = 1;
                bArr[2] = (byte) (i >>> 8);
                bArr[3] = (byte) (i & 255);
                try {
                    byte[] address = InetAddress.getByName(str).getAddress();
                    int i5 = 0;
                    while (i5 < address.length) {
                        int i6 = i3 + 1;
                        bArr[i3] = address[i5];
                        i5++;
                        i3 = i6;
                    }
                    if (this.g != null) {
                        System.arraycopy(Util.b(this.g), 0, bArr, i3, this.g.length());
                        i3 += this.g.length();
                    }
                    bArr[i3] = 0;
                    this.e.write(bArr, 0, i3 + 1);
                    while (i4 < 8) {
                        int read = this.d.read(bArr, i4, 8 - i4);
                        if (read <= 0) {
                            throw new JSchException("ProxySOCKS4: stream is closed");
                        }
                        i4 += read;
                    }
                    if (bArr[0] != 0) {
                        throw new JSchException("ProxySOCKS4: server returns VN " + ((int) bArr[0]));
                    }
                    if (bArr[1] != 90) {
                        try {
                            this.f.close();
                        } catch (Exception e) {
                        }
                        throw new JSchException("ProxySOCKS4: server returns CD " + ((int) bArr[1]));
                    }
                } catch (UnknownHostException e2) {
                    throw new JSchException("ProxySOCKS4: " + e2.toString(), e2);
                }
            } catch (RuntimeException e3) {
                throw e3;
            }
        } catch (Exception e4) {
            try {
                if (this.f != null) {
                    this.f.close();
                }
            } catch (Exception e5) {
            }
            throw new JSchException("ProxySOCKS4: " + e4.toString());
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
