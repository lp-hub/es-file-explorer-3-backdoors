package com.b.a.a;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    byte[] f96a;

    /* renamed from: b, reason: collision with root package name */
    private String f97b;
    private boolean c;
    private boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(byte[] bArr) {
        a(bArr);
    }

    void a(byte[] bArr) {
        com.b.a.a.a("authChallenge", bArr);
        int i = 0;
        while (i < bArr.length) {
            int i2 = bArr[i] & 255;
            int i3 = bArr[i + 1] & 255;
            int i4 = i + 2;
            switch (i2) {
                case 0:
                    if (i3 == 16) {
                        this.f96a = new byte[16];
                        System.arraycopy(bArr, i4, this.f96a, 0, 16);
                        break;
                    } else {
                        throw new IOException("OBEX Digest Challenge error in tag Nonce");
                    }
                case 1:
                    byte b2 = bArr[i4];
                    com.b.a.a.a("authChallenge options", b2);
                    this.c = (b2 & 1) != 0;
                    this.d = (b2 & 2) == 0;
                    break;
                case 2:
                    int i5 = bArr[i4] & 255;
                    byte[] bArr2 = new byte[i3 - 1];
                    System.arraycopy(bArr, i4 + 1, bArr2, 0, bArr2.length);
                    if (i5 != 255) {
                        if (i5 != 0) {
                            if (i5 > 9) {
                                com.b.a.a.b("Unsupported charset code " + i5 + " in Challenge");
                                this.f97b = new String(bArr2, 0, i3 - 1, "ASCII");
                                break;
                            } else {
                                this.f97b = new String(bArr2, "ISO-8859-" + i5);
                                break;
                            }
                        } else {
                            this.f97b = new String(bArr2, "ASCII");
                            break;
                        }
                    } else {
                        this.f97b = v.b(bArr2);
                        break;
                    }
                default:
                    com.b.a.a.b("invalid authChallenge tag " + i2);
                    break;
            }
            i = i4 + i3;
        }
    }

    public boolean a() {
        return this.c;
    }

    public boolean b() {
        return this.d;
    }

    public String c() {
        return this.f97b;
    }
}
