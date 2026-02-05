package com.jcraft.jsch;

import java.util.Date;

/* loaded from: classes.dex */
public class SftpATTRS {

    /* renamed from: b, reason: collision with root package name */
    long f3350b;
    int c;
    int d;
    int e;
    int f;
    int g;

    /* renamed from: a, reason: collision with root package name */
    int f3349a = 0;
    String[] h = null;

    private SftpATTRS() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SftpATTRS a(Buffer buffer) {
        int c;
        SftpATTRS sftpATTRS = new SftpATTRS();
        sftpATTRS.f3349a = buffer.c();
        if ((sftpATTRS.f3349a & 1) != 0) {
            sftpATTRS.f3350b = buffer.b();
        }
        if ((sftpATTRS.f3349a & 2) != 0) {
            sftpATTRS.c = buffer.c();
            sftpATTRS.d = buffer.c();
        }
        if ((sftpATTRS.f3349a & 4) != 0) {
            sftpATTRS.e = buffer.c();
        }
        if ((sftpATTRS.f3349a & 8) != 0) {
            sftpATTRS.f = buffer.c();
        }
        if ((sftpATTRS.f3349a & 8) != 0) {
            sftpATTRS.g = buffer.c();
        }
        if ((sftpATTRS.f3349a & Integer.MIN_VALUE) != 0 && (c = buffer.c()) > 0) {
            sftpATTRS.h = new String[c * 2];
            for (int i = 0; i < c; i++) {
                sftpATTRS.h[i * 2] = Util.b(buffer.i());
                sftpATTRS.h[(i * 2) + 1] = Util.b(buffer.i());
            }
        }
        return sftpATTRS;
    }

    public String a() {
        StringBuffer stringBuffer = new StringBuffer(10);
        if (d()) {
            stringBuffer.append('d');
        } else if (e()) {
            stringBuffer.append('l');
        } else {
            stringBuffer.append('-');
        }
        if ((this.e & 256) != 0) {
            stringBuffer.append('r');
        } else {
            stringBuffer.append('-');
        }
        if ((this.e & 128) != 0) {
            stringBuffer.append('w');
        } else {
            stringBuffer.append('-');
        }
        if ((this.e & 2048) != 0) {
            stringBuffer.append('s');
        } else if ((this.e & 64) != 0) {
            stringBuffer.append('x');
        } else {
            stringBuffer.append('-');
        }
        if ((this.e & 32) != 0) {
            stringBuffer.append('r');
        } else {
            stringBuffer.append('-');
        }
        if ((this.e & 16) != 0) {
            stringBuffer.append('w');
        } else {
            stringBuffer.append('-');
        }
        if ((this.e & 1024) != 0) {
            stringBuffer.append('s');
        } else if ((this.e & 8) != 0) {
            stringBuffer.append('x');
        } else {
            stringBuffer.append('-');
        }
        if ((this.e & 4) != 0) {
            stringBuffer.append('r');
        } else {
            stringBuffer.append('-');
        }
        if ((this.e & 2) != 0) {
            stringBuffer.append('w');
        } else {
            stringBuffer.append('-');
        }
        if ((this.e & 1) != 0) {
            stringBuffer.append('x');
        } else {
            stringBuffer.append('-');
        }
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.f3349a = i;
    }

    public void a(int i, int i2) {
        this.f3349a |= 8;
        this.f = i;
        this.g = i2;
    }

    public String b() {
        return new Date(this.g * 1000).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Buffer buffer) {
        int length;
        buffer.a(this.f3349a);
        if ((this.f3349a & 1) != 0) {
            buffer.a(this.f3350b);
        }
        if ((this.f3349a & 2) != 0) {
            buffer.a(this.c);
            buffer.a(this.d);
        }
        if ((this.f3349a & 4) != 0) {
            buffer.a(this.e);
        }
        if ((this.f3349a & 8) != 0) {
            buffer.a(this.f);
        }
        if ((this.f3349a & 8) != 0) {
            buffer.a(this.g);
        }
        if ((this.f3349a & Integer.MIN_VALUE) == 0 || (length = this.h.length / 2) <= 0) {
            return;
        }
        for (int i = 0; i < length; i++) {
            buffer.b(Util.b(this.h[i * 2]));
            buffer.b(Util.b(this.h[(i * 2) + 1]));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        int i = (this.f3349a & 1) != 0 ? 12 : 4;
        if ((this.f3349a & 2) != 0) {
            i += 8;
        }
        if ((this.f3349a & 4) != 0) {
            i += 4;
        }
        if ((this.f3349a & 8) != 0) {
            i += 8;
        }
        if ((this.f3349a & Integer.MIN_VALUE) != 0) {
            i += 4;
            int length = this.h.length / 2;
            if (length > 0) {
                int i2 = 0;
                while (i2 < length) {
                    int length2 = this.h[(i2 * 2) + 1].length() + i + 4 + this.h[i2 * 2].length() + 4;
                    i2++;
                    i = length2;
                }
            }
        }
        return i;
    }

    public boolean d() {
        return (this.f3349a & 4) != 0 && (this.e & 16384) == 16384;
    }

    public boolean e() {
        return (this.f3349a & 4) != 0 && (this.e & 40960) == 40960;
    }

    public int f() {
        return this.f3349a;
    }

    public long g() {
        return this.f3350b;
    }

    public int h() {
        return this.c;
    }

    public int i() {
        return this.d;
    }

    public int j() {
        return this.e;
    }

    public int k() {
        return this.f;
    }

    public int l() {
        return this.g;
    }

    public String toString() {
        return String.valueOf(a()) + " " + h() + " " + i() + " " + g() + " " + b();
    }
}
