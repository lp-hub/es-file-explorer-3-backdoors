package com.jcraft.jsch;

import org.apache.commons.net.ftp.FTPCommand;

/* loaded from: classes.dex */
public class DHG1 extends KeyExchange {

    /* renamed from: a, reason: collision with root package name */
    static final byte[] f3306a = {2};

    /* renamed from: b, reason: collision with root package name */
    static final byte[] f3307b = {0, -1, -1, -1, -1, -1, -1, -1, -1, -55, 15, -38, -94, 33, 104, -62, 52, -60, -58, 98, -117, Byte.MIN_VALUE, -36, 28, -47, 41, 2, 78, 8, -118, 103, -52, 116, 2, 11, -66, -90, 59, 19, -101, 34, 81, 74, 8, 121, -114, 52, 4, -35, -17, -107, 25, -77, -51, 58, 67, 27, 48, 43, 10, 109, -14, 95, 20, 55, 79, -31, 53, 109, 109, 81, -62, 69, -28, -123, -75, 118, 98, 94, 126, -58, -12, 76, 66, -23, -90, 55, -19, 107, 11, -1, 92, -74, -12, 6, -73, -19, -18, 56, 107, -5, 90, -119, -97, -91, -82, -97, 36, 17, 124, 75, 31, -26, 73, 40, 102, 81, -20, -26, 83, -127, -1, -1, -1, -1, -1, -1, -1, -1};
    DH c;
    byte[] d;
    byte[] e;
    byte[] f;
    byte[] g;
    byte[] h;
    private int v = 0;
    private int w;
    private Buffer x;
    private Packet y;

    @Override // com.jcraft.jsch.KeyExchange
    public String a() {
        return this.v == 1 ? "DSA" : "RSA";
    }

    @Override // com.jcraft.jsch.KeyExchange
    public void a(Session session, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        this.q = session;
        this.d = bArr;
        this.e = bArr2;
        this.f = bArr3;
        this.g = bArr4;
        try {
            this.r = (HASH) Class.forName(session.d("sha-1")).newInstance();
            this.r.a();
        } catch (Exception e) {
            System.err.println(e);
        }
        this.x = new Buffer();
        this.y = new Packet(this.x);
        try {
            this.c = (DH) Class.forName(session.d("dh")).newInstance();
            this.c.a();
            this.c.a(f3307b);
            this.c.b(f3306a);
            this.h = this.c.b();
            this.y.a();
            this.x.a((byte) 30);
            this.x.c(this.h);
            session.b(this.y);
            if (JSch.b().a(1)) {
                JSch.b().a(1, "SSH_MSG_KEXDH_INIT sent");
                JSch.b().a(1, "expecting SSH_MSG_KEXDH_REPLY");
            }
            this.w = 31;
        } catch (Exception e2) {
            throw e2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0274  */
    @Override // com.jcraft.jsch.KeyExchange
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(Buffer buffer) {
        boolean z;
        SignatureDSA signatureDSA;
        Exception e;
        SignatureRSA signatureRSA;
        Exception e2;
        switch (this.w) {
            case FTPCommand.HELP /* 31 */:
                buffer.c();
                buffer.f();
                int f = buffer.f();
                if (f != 31) {
                    System.err.println("type: must be 31 " + f);
                    return false;
                }
                this.u = buffer.i();
                byte[] g = buffer.g();
                byte[] i = buffer.i();
                this.c.c(g);
                this.s = this.c.c();
                this.x.j();
                this.x.b(this.e);
                this.x.b(this.d);
                this.x.b(this.g);
                this.x.b(this.f);
                this.x.b(this.u);
                this.x.c(this.h);
                this.x.c(g);
                this.x.c(this.s);
                byte[] bArr = new byte[this.x.a()];
                this.x.d(bArr);
                this.r.a(bArr, 0, bArr.length);
                this.t = this.r.c();
                int i2 = ((this.u[0] << 24) & (-16777216)) | ((this.u[1] << 16) & 16711680) | ((this.u[2] << 8) & 65280) | (this.u[3] & 255);
                String c = Util.c(this.u, 4, i2);
                int i3 = i2 + 4;
                if (c.equals("ssh-rsa")) {
                    this.v = 0;
                    int i4 = i3 + 1;
                    int i5 = i4 + 1;
                    int i6 = ((this.u[i3] << 24) & (-16777216)) | ((this.u[i4] << 16) & 16711680);
                    int i7 = i5 + 1;
                    int i8 = i6 | ((this.u[i5] << 8) & 65280);
                    int i9 = i7 + 1;
                    int i10 = i8 | (this.u[i7] & 255);
                    byte[] bArr2 = new byte[i10];
                    System.arraycopy(this.u, i9, bArr2, 0, i10);
                    int i11 = i10 + i9;
                    int i12 = i11 + 1;
                    int i13 = i12 + 1;
                    int i14 = ((this.u[i11] << 24) & (-16777216)) | ((this.u[i12] << 16) & 16711680);
                    int i15 = i13 + 1;
                    int i16 = i14 | ((this.u[i13] << 8) & 65280);
                    int i17 = i15 + 1;
                    int i18 = i16 | (this.u[i15] & 255);
                    byte[] bArr3 = new byte[i18];
                    System.arraycopy(this.u, i17, bArr3, 0, i18);
                    int i19 = i18 + i17;
                    try {
                        signatureRSA = (SignatureRSA) Class.forName(this.q.d("signature.rsa")).newInstance();
                    } catch (Exception e3) {
                        signatureRSA = null;
                        e2 = e3;
                    }
                    try {
                        signatureRSA.a();
                    } catch (Exception e4) {
                        e2 = e4;
                        System.err.println(e2);
                        signatureRSA.a(bArr2, bArr3);
                        signatureRSA.a(this.t);
                        z = signatureRSA.b(i);
                        if (JSch.b().a(1)) {
                        }
                        this.w = 0;
                        return z;
                    }
                    signatureRSA.a(bArr2, bArr3);
                    signatureRSA.a(this.t);
                    z = signatureRSA.b(i);
                    if (JSch.b().a(1)) {
                        JSch.b().a(1, "ssh_rsa_verify: signature " + z);
                    }
                } else if (c.equals("ssh-dss")) {
                    this.v = 1;
                    int i20 = i3 + 1;
                    int i21 = i20 + 1;
                    int i22 = ((this.u[i3] << 24) & (-16777216)) | ((this.u[i20] << 16) & 16711680);
                    int i23 = i21 + 1;
                    int i24 = i22 | ((this.u[i21] << 8) & 65280);
                    int i25 = i23 + 1;
                    int i26 = i24 | (this.u[i23] & 255);
                    byte[] bArr4 = new byte[i26];
                    System.arraycopy(this.u, i25, bArr4, 0, i26);
                    int i27 = i26 + i25;
                    int i28 = i27 + 1;
                    int i29 = i28 + 1;
                    int i30 = ((this.u[i27] << 24) & (-16777216)) | ((this.u[i28] << 16) & 16711680);
                    int i31 = i29 + 1;
                    int i32 = i30 | ((this.u[i29] << 8) & 65280);
                    int i33 = i31 + 1;
                    int i34 = i32 | (this.u[i31] & 255);
                    byte[] bArr5 = new byte[i34];
                    System.arraycopy(this.u, i33, bArr5, 0, i34);
                    int i35 = i34 + i33;
                    int i36 = i35 + 1;
                    int i37 = i36 + 1;
                    int i38 = ((this.u[i35] << 24) & (-16777216)) | ((this.u[i36] << 16) & 16711680);
                    int i39 = i37 + 1;
                    int i40 = i38 | ((this.u[i37] << 8) & 65280);
                    int i41 = i39 + 1;
                    int i42 = i40 | (this.u[i39] & 255);
                    byte[] bArr6 = new byte[i42];
                    System.arraycopy(this.u, i41, bArr6, 0, i42);
                    int i43 = i42 + i41;
                    int i44 = i43 + 1;
                    int i45 = i44 + 1;
                    int i46 = ((this.u[i43] << 24) & (-16777216)) | ((this.u[i44] << 16) & 16711680);
                    int i47 = i45 + 1;
                    int i48 = i46 | ((this.u[i45] << 8) & 65280);
                    int i49 = i47 + 1;
                    int i50 = i48 | (this.u[i47] & 255);
                    byte[] bArr7 = new byte[i50];
                    System.arraycopy(this.u, i49, bArr7, 0, i50);
                    int i51 = i50 + i49;
                    try {
                        signatureDSA = (SignatureDSA) Class.forName(this.q.d("signature.dss")).newInstance();
                        try {
                            signatureDSA.a();
                        } catch (Exception e5) {
                            e = e5;
                            System.err.println(e);
                            signatureDSA.a(bArr7, bArr4, bArr5, bArr6);
                            signatureDSA.a(this.t);
                            z = signatureDSA.b(i);
                            if (JSch.b().a(1)) {
                            }
                            this.w = 0;
                            return z;
                        }
                    } catch (Exception e6) {
                        signatureDSA = null;
                        e = e6;
                    }
                    signatureDSA.a(bArr7, bArr4, bArr5, bArr6);
                    signatureDSA.a(this.t);
                    z = signatureDSA.b(i);
                    if (JSch.b().a(1)) {
                        JSch.b().a(1, "ssh_dss_verify: signature " + z);
                    }
                } else {
                    System.err.println("unknown alg");
                    z = false;
                }
                this.w = 0;
                return z;
            default:
                return false;
        }
    }

    @Override // com.jcraft.jsch.KeyExchange
    public int b() {
        return this.w;
    }
}
