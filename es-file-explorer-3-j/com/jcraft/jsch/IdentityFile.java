package com.jcraft.jsch;

/* loaded from: classes.dex */
class IdentityFile implements Identity {

    /* renamed from: a, reason: collision with root package name */
    String f3314a;

    /* renamed from: b, reason: collision with root package name */
    byte[] f3315b;
    byte[] c;
    private HASH d;
    private byte[] e;
    private Cipher f;
    private byte[] g;
    private byte[] h;
    private byte[] i;
    private byte[] j;
    private byte[] k;
    private byte[] l;
    private byte[] m;
    private byte[] n;
    private int o;
    private int p;
    private byte[] q;
    private boolean r;

    @Override // com.jcraft.jsch.Identity
    public boolean a(byte[] bArr) {
        try {
            if (this.r) {
                if (bArr == null) {
                    return false;
                }
                int b2 = this.d.b();
                byte[] bArr2 = new byte[(this.f3315b.length % b2 == 0 ? 0 : b2) + ((this.f3315b.length / b2) * b2)];
                byte[] bArr3 = (byte[]) null;
                if (this.p == 0) {
                    int i = 0;
                    while (i + b2 <= bArr2.length) {
                        if (bArr3 != null) {
                            this.d.a(bArr3, 0, bArr3.length);
                        }
                        this.d.a(bArr, 0, bArr.length);
                        this.d.a(this.c, 0, this.c.length > 8 ? 8 : this.c.length);
                        byte[] c = this.d.c();
                        System.arraycopy(c, 0, bArr2, i, c.length);
                        i = c.length + i;
                        bArr3 = c;
                    }
                    System.arraycopy(bArr2, 0, this.f3315b, 0, this.f3315b.length);
                } else if (this.p == 1) {
                    byte[] bArr4 = bArr3;
                    int i2 = 0;
                    while (i2 + b2 <= bArr2.length) {
                        if (bArr4 != null) {
                            this.d.a(bArr4, 0, bArr4.length);
                        }
                        this.d.a(bArr, 0, bArr.length);
                        bArr4 = this.d.c();
                        System.arraycopy(bArr4, 0, bArr2, i2, bArr4.length);
                        i2 += bArr4.length;
                    }
                    System.arraycopy(bArr2, 0, this.f3315b, 0, this.f3315b.length);
                }
                Util.c(bArr);
            }
            if (g()) {
                this.r = false;
                return true;
            }
            this.k = null;
            this.j = null;
            this.i = null;
            this.h = null;
            this.g = null;
            return false;
        } catch (Exception e) {
            if (e instanceof JSchException) {
                throw ((JSchException) e);
            }
            if (e instanceof Throwable) {
                throw new JSchException(e.toString(), e);
            }
            throw new JSchException(e.toString());
        }
    }

    @Override // com.jcraft.jsch.Identity
    public byte[] a() {
        return this.q != null ? this.q : this.o == 1 ? e() : f();
    }

    @Override // com.jcraft.jsch.Identity
    public String b() {
        return this.o == 1 ? "ssh-rsa" : "ssh-dss";
    }

    @Override // com.jcraft.jsch.Identity
    public byte[] b(byte[] bArr) {
        return this.o == 1 ? c(bArr) : d(bArr);
    }

    @Override // com.jcraft.jsch.Identity
    public String c() {
        return this.f3314a;
    }

    byte[] c(byte[] bArr) {
        try {
            SignatureRSA signatureRSA = (SignatureRSA) Class.forName(JSch.a("signature.rsa")).newInstance();
            signatureRSA.a();
            signatureRSA.b(this.n, this.l);
            signatureRSA.a(bArr);
            byte[] b2 = signatureRSA.b();
            Buffer buffer = new Buffer("ssh-rsa".length() + 4 + b2.length + 4);
            buffer.b(Util.b("ssh-rsa"));
            buffer.b(b2);
            return buffer.f3290b;
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.jcraft.jsch.Identity
    public boolean d() {
        return this.r;
    }

    byte[] d(byte[] bArr) {
        try {
            SignatureDSA signatureDSA = (SignatureDSA) Class.forName(JSch.a("signature.dss")).newInstance();
            signatureDSA.a();
            signatureDSA.b(this.k, this.g, this.h, this.i);
            signatureDSA.a(bArr);
            byte[] b2 = signatureDSA.b();
            Buffer buffer = new Buffer("ssh-dss".length() + 4 + b2.length + 4);
            buffer.b(Util.b("ssh-dss"));
            buffer.b(b2);
            return buffer.f3290b;
        } catch (Exception e) {
            return null;
        }
    }

    byte[] e() {
        if (this.m == null) {
            return null;
        }
        Buffer buffer = new Buffer("ssh-rsa".length() + 4 + this.m.length + 4 + this.l.length + 4);
        buffer.b(Util.b("ssh-rsa"));
        buffer.b(this.m);
        buffer.b(this.l);
        return buffer.f3290b;
    }

    public boolean equals(Object obj) {
        return !(obj instanceof IdentityFile) ? super.equals(obj) : c().equals(((IdentityFile) obj).c());
    }

    byte[] f() {
        if (this.g == null) {
            return null;
        }
        Buffer buffer = new Buffer("ssh-dss".length() + 4 + this.g.length + 4 + this.h.length + 4 + this.i.length + 4 + this.j.length + 4);
        buffer.b(Util.b("ssh-dss"));
        buffer.b(this.g);
        buffer.b(this.h);
        buffer.b(this.i);
        buffer.b(this.j);
        return buffer.f3290b;
    }

    public void finalize() {
        j();
    }

    public boolean g() {
        return this.o == 1 ? h() : i();
    }

    boolean h() {
        byte[] bArr;
        int i;
        try {
            if (!this.r) {
                if (this.l != null) {
                    return true;
                }
                bArr = this.e;
            } else if (this.p == 0) {
                this.f.a(1, this.f3315b, this.c);
                bArr = new byte[this.e.length];
                this.f.a(this.e, 0, this.e.length, bArr, 0);
            } else {
                if (this.p != 1) {
                    return false;
                }
                for (int i2 = 0; i2 < this.c.length; i2++) {
                    this.c[i2] = 0;
                }
                this.f.a(1, this.f3315b, this.c);
                bArr = new byte[this.e.length];
                this.f.a(this.e, 0, this.e.length, bArr, 0);
            }
            if (this.p == 1) {
                Buffer buffer = new Buffer(bArr);
                if (bArr.length != buffer.c() + 4) {
                    return false;
                }
                this.m = buffer.h();
                this.n = buffer.h();
                this.l = buffer.h();
                buffer.h();
                buffer.h();
                buffer.h();
                return true;
            }
            if (bArr[0] != 48) {
                return false;
            }
            int i3 = bArr[1] & 255;
            if ((i3 & 128) != 0) {
                int i4 = i3 & 127;
                int i5 = 0;
                i = 2;
                while (true) {
                    int i6 = i4 - 1;
                    if (i4 <= 0) {
                        break;
                    }
                    i5 = (bArr[i] & 255) + (i5 << 8);
                    i++;
                    i4 = i6;
                }
            } else {
                i = 2;
            }
            if (bArr[i] != 2) {
                return false;
            }
            int i7 = i + 1;
            int i8 = i7 + 1;
            int i9 = bArr[i7] & 255;
            if ((i9 & 128) != 0) {
                int i10 = i9 & 127;
                i9 = 0;
                while (true) {
                    int i11 = i10 - 1;
                    if (i10 <= 0) {
                        break;
                    }
                    i9 = (i9 << 8) + (bArr[i8] & 255);
                    i8++;
                    i10 = i11;
                }
            }
            int i12 = i9 + i8 + 1;
            int i13 = i12 + 1;
            int i14 = bArr[i12] & 255;
            if ((i14 & 128) != 0) {
                int i15 = i14 & 127;
                i14 = 0;
                while (true) {
                    int i16 = i15 - 1;
                    if (i15 <= 0) {
                        break;
                    }
                    i14 = (i14 << 8) + (bArr[i13] & 255);
                    i13++;
                    i15 = i16;
                }
            }
            this.l = new byte[i14];
            System.arraycopy(bArr, i13, this.l, 0, i14);
            int i17 = i14 + i13 + 1;
            int i18 = i17 + 1;
            int i19 = bArr[i17] & 255;
            if ((i19 & 128) != 0) {
                int i20 = i19 & 127;
                i19 = 0;
                while (true) {
                    int i21 = i20 - 1;
                    if (i20 <= 0) {
                        break;
                    }
                    i19 = (i19 << 8) + (bArr[i18] & 255);
                    i18++;
                    i20 = i21;
                }
            }
            this.m = new byte[i19];
            System.arraycopy(bArr, i18, this.m, 0, i19);
            int i22 = i19 + i18 + 1;
            int i23 = i22 + 1;
            int i24 = bArr[i22] & 255;
            if ((i24 & 128) != 0) {
                int i25 = i24 & 127;
                i24 = 0;
                while (true) {
                    int i26 = i25 - 1;
                    if (i25 <= 0) {
                        break;
                    }
                    i24 = (i24 << 8) + (bArr[i23] & 255);
                    i23++;
                    i25 = i26;
                }
            }
            this.n = new byte[i24];
            System.arraycopy(bArr, i23, this.n, 0, i24);
            int i27 = i24 + i23 + 1;
            int i28 = i27 + 1;
            int i29 = bArr[i27] & 255;
            if ((i29 & 128) != 0) {
                int i30 = i29 & 127;
                i29 = 0;
                while (true) {
                    int i31 = i30 - 1;
                    if (i30 <= 0) {
                        break;
                    }
                    i29 = (i29 << 8) + (bArr[i28] & 255);
                    i28++;
                    i30 = i31;
                }
            }
            System.arraycopy(bArr, i28, new byte[i29], 0, i29);
            int i32 = i29 + i28 + 1;
            int i33 = i32 + 1;
            int i34 = bArr[i32] & 255;
            if ((i34 & 128) != 0) {
                int i35 = i34 & 127;
                i34 = 0;
                while (true) {
                    int i36 = i35 - 1;
                    if (i35 <= 0) {
                        break;
                    }
                    i34 = (i34 << 8) + (bArr[i33] & 255);
                    i33++;
                    i35 = i36;
                }
            }
            System.arraycopy(bArr, i33, new byte[i34], 0, i34);
            int i37 = i34 + i33 + 1;
            int i38 = i37 + 1;
            int i39 = bArr[i37] & 255;
            if ((i39 & 128) != 0) {
                int i40 = i39 & 127;
                i39 = 0;
                while (true) {
                    int i41 = i40 - 1;
                    if (i40 <= 0) {
                        break;
                    }
                    i39 = (i39 << 8) + (bArr[i38] & 255);
                    i38++;
                    i40 = i41;
                }
            }
            System.arraycopy(bArr, i38, new byte[i39], 0, i39);
            int i42 = i39 + i38 + 1;
            int i43 = i42 + 1;
            int i44 = bArr[i42] & 255;
            if ((i44 & 128) != 0) {
                int i45 = i44 & 127;
                i44 = 0;
                while (true) {
                    int i46 = i45 - 1;
                    if (i45 <= 0) {
                        break;
                    }
                    i44 = (i44 << 8) + (bArr[i43] & 255);
                    i43++;
                    i45 = i46;
                }
            }
            System.arraycopy(bArr, i43, new byte[i44], 0, i44);
            int i47 = i44 + i43 + 1;
            int i48 = i47 + 1;
            int i49 = bArr[i47] & 255;
            if ((i49 & 128) != 0) {
                int i50 = i49 & 127;
                i49 = 0;
                while (true) {
                    int i51 = i50 - 1;
                    if (i50 <= 0) {
                        break;
                    }
                    int i52 = i48 + 1;
                    i49 = (i49 << 8) + (bArr[i48] & 255);
                    i48 = i52;
                    i50 = i51;
                }
            }
            System.arraycopy(bArr, i48, new byte[i49], 0, i49);
            int i53 = i49 + i48;
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    boolean i() {
        byte[] bArr;
        int i;
        try {
            if (!this.r) {
                if (this.g != null) {
                    return true;
                }
                bArr = this.e;
            } else if (this.p == 0) {
                this.f.a(1, this.f3315b, this.c);
                bArr = new byte[this.e.length];
                this.f.a(this.e, 0, this.e.length, bArr, 0);
            } else {
                if (this.p != 1) {
                    return false;
                }
                for (int i2 = 0; i2 < this.c.length; i2++) {
                    this.c[i2] = 0;
                }
                this.f.a(1, this.f3315b, this.c);
                bArr = new byte[this.e.length];
                this.f.a(this.e, 0, this.e.length, bArr, 0);
            }
            if (this.p == 1) {
                Buffer buffer = new Buffer(bArr);
                if (bArr.length != buffer.c() + 4) {
                    return false;
                }
                this.g = buffer.h();
                this.i = buffer.h();
                this.h = buffer.h();
                this.j = buffer.h();
                this.k = buffer.h();
                return true;
            }
            if (bArr[0] != 48) {
                return false;
            }
            int i3 = bArr[1] & 255;
            if ((i3 & 128) != 0) {
                int i4 = i3 & 127;
                int i5 = 0;
                i = 2;
                while (true) {
                    int i6 = i4 - 1;
                    if (i4 <= 0) {
                        break;
                    }
                    i5 = (bArr[i] & 255) + (i5 << 8);
                    i++;
                    i4 = i6;
                }
            } else {
                i = 2;
            }
            if (bArr[i] != 2) {
                return false;
            }
            int i7 = i + 1;
            int i8 = i7 + 1;
            int i9 = bArr[i7] & 255;
            if ((i9 & 128) != 0) {
                int i10 = i9 & 127;
                i9 = 0;
                while (true) {
                    int i11 = i10 - 1;
                    if (i10 <= 0) {
                        break;
                    }
                    i9 = (i9 << 8) + (bArr[i8] & 255);
                    i8++;
                    i10 = i11;
                }
            }
            int i12 = i9 + i8 + 1;
            int i13 = i12 + 1;
            int i14 = bArr[i12] & 255;
            if ((i14 & 128) != 0) {
                int i15 = i14 & 127;
                i14 = 0;
                while (true) {
                    int i16 = i15 - 1;
                    if (i15 <= 0) {
                        break;
                    }
                    i14 = (i14 << 8) + (bArr[i13] & 255);
                    i13++;
                    i15 = i16;
                }
            }
            this.g = new byte[i14];
            System.arraycopy(bArr, i13, this.g, 0, i14);
            int i17 = i14 + i13 + 1;
            int i18 = i17 + 1;
            int i19 = bArr[i17] & 255;
            if ((i19 & 128) != 0) {
                int i20 = i19 & 127;
                i19 = 0;
                while (true) {
                    int i21 = i20 - 1;
                    if (i20 <= 0) {
                        break;
                    }
                    i19 = (i19 << 8) + (bArr[i18] & 255);
                    i18++;
                    i20 = i21;
                }
            }
            this.h = new byte[i19];
            System.arraycopy(bArr, i18, this.h, 0, i19);
            int i22 = i19 + i18 + 1;
            int i23 = i22 + 1;
            int i24 = bArr[i22] & 255;
            if ((i24 & 128) != 0) {
                int i25 = i24 & 127;
                i24 = 0;
                while (true) {
                    int i26 = i25 - 1;
                    if (i25 <= 0) {
                        break;
                    }
                    i24 = (i24 << 8) + (bArr[i23] & 255);
                    i23++;
                    i25 = i26;
                }
            }
            this.i = new byte[i24];
            System.arraycopy(bArr, i23, this.i, 0, i24);
            int i27 = i24 + i23 + 1;
            int i28 = i27 + 1;
            int i29 = bArr[i27] & 255;
            if ((i29 & 128) != 0) {
                int i30 = i29 & 127;
                i29 = 0;
                while (true) {
                    int i31 = i30 - 1;
                    if (i30 <= 0) {
                        break;
                    }
                    i29 = (i29 << 8) + (bArr[i28] & 255);
                    i28++;
                    i30 = i31;
                }
            }
            this.j = new byte[i29];
            System.arraycopy(bArr, i28, this.j, 0, i29);
            int i32 = i29 + i28 + 1;
            int i33 = i32 + 1;
            int i34 = bArr[i32] & 255;
            if ((i34 & 128) != 0) {
                int i35 = i34 & 127;
                i34 = 0;
                while (true) {
                    int i36 = i35 - 1;
                    if (i35 <= 0) {
                        break;
                    }
                    int i37 = i33 + 1;
                    i34 = (i34 << 8) + (bArr[i33] & 255);
                    i33 = i37;
                    i35 = i36;
                }
            }
            this.k = new byte[i34];
            System.arraycopy(bArr, i33, this.k, 0, i34);
            int i38 = i34 + i33;
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public void j() {
        Util.c(this.e);
        Util.c(this.k);
        Util.c(this.n);
        Util.c(this.f3315b);
        Util.c(this.c);
    }
}
