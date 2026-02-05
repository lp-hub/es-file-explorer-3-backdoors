package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes.dex */
public class ProxySOCKS5 implements Proxy {

    /* renamed from: a, reason: collision with root package name */
    private static int f3332a = 1080;

    /* renamed from: b, reason: collision with root package name */
    private String f3333b;
    private int c;
    private InputStream d;
    private OutputStream e;
    private Socket f;
    private String g;
    private String h;

    private void a(InputStream inputStream, byte[] bArr, int i) {
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read <= 0) {
                throw new JSchException("ProxySOCKS5: stream is closed");
            }
            i2 += read;
        }
    }

    @Override // com.jcraft.jsch.Proxy
    public InputStream a() {
        return this.d;
    }

    @Override // com.jcraft.jsch.Proxy
    public void a(SocketFactory socketFactory, String str, int i, int i2) {
        boolean z = true;
        try {
            try {
                if (socketFactory == null) {
                    this.f = Util.a(this.f3333b, this.c, i2);
                    this.d = this.f.getInputStream();
                    this.e = this.f.getOutputStream();
                } else {
                    this.f = socketFactory.a(this.f3333b, this.c);
                    this.d = socketFactory.a(this.f);
                    this.e = socketFactory.b(this.f);
                }
                if (i2 > 0) {
                    this.f.setSoTimeout(i2);
                }
                this.f.setTcpNoDelay(true);
                byte[] bArr = new byte[1024];
                bArr[0] = 5;
                bArr[1] = 2;
                bArr[2] = 0;
                bArr[3] = 2;
                this.e.write(bArr, 0, 4);
                a(this.d, bArr, 2);
                switch (bArr[1] & 255) {
                    case 0:
                        break;
                    case 2:
                        if (this.g != null) {
                            if (this.h != null) {
                                bArr[0] = 1;
                                bArr[1] = (byte) this.g.length();
                                System.arraycopy(Util.b(this.g), 0, bArr, 2, this.g.length());
                                int length = this.g.length() + 2;
                                int i3 = length + 1;
                                bArr[length] = (byte) this.h.length();
                                System.arraycopy(Util.b(this.h), 0, bArr, i3, this.h.length());
                                this.e.write(bArr, 0, this.h.length() + i3);
                                a(this.d, bArr, 2);
                                if (bArr[1] == 0) {
                                    break;
                                }
                            } else {
                                z = false;
                                break;
                            }
                        }
                    case 1:
                    default:
                        z = false;
                        break;
                }
                if (!z) {
                    try {
                        this.f.close();
                    } catch (Exception e) {
                    }
                    throw new JSchException("fail in SOCKS5 proxy");
                }
                bArr[0] = 5;
                bArr[1] = 1;
                bArr[2] = 0;
                byte[] b2 = Util.b(str);
                int length2 = b2.length;
                bArr[3] = 3;
                bArr[4] = (byte) length2;
                System.arraycopy(b2, 0, bArr, 5, length2);
                int i4 = length2 + 5;
                int i5 = i4 + 1;
                bArr[i4] = (byte) (i >>> 8);
                bArr[i5] = (byte) (i & 255);
                this.e.write(bArr, 0, i5 + 1);
                a(this.d, bArr, 4);
                if (bArr[1] != 0) {
                    try {
                        this.f.close();
                    } catch (Exception e2) {
                    }
                    throw new JSchException("ProxySOCKS5: server returns " + ((int) bArr[1]));
                }
                switch (bArr[3] & 255) {
                    case 1:
                        a(this.d, bArr, 6);
                        return;
                    case 2:
                    default:
                        return;
                    case 3:
                        a(this.d, bArr, 1);
                        a(this.d, bArr, (bArr[0] & 255) + 2);
                        return;
                    case 4:
                        a(this.d, bArr, 18);
                        return;
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
            String str2 = "ProxySOCKS5: " + e4.toString();
            if (!(e4 instanceof Throwable)) {
                throw new JSchException(str2);
            }
            throw new JSchException(str2, e4);
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
