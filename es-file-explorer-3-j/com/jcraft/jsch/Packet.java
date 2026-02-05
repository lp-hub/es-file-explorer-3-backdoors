package com.jcraft.jsch;

/* loaded from: classes.dex */
public class Packet {
    private static Random c = null;

    /* renamed from: a, reason: collision with root package name */
    Buffer f3324a;

    /* renamed from: b, reason: collision with root package name */
    byte[] f3325b = new byte[4];

    public Packet(Buffer buffer) {
        this.f3324a = buffer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Random random) {
        c = random;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i, int i2) {
        int i3 = i + 5 + 9;
        int i4 = (-i3) & 15;
        if (i4 < 16) {
            i4 += 16;
        }
        int i5 = i4 + i3 + i2;
        if (this.f3324a.f3290b.length < (((this.f3324a.c + i5) - 5) - 9) - i) {
            byte[] bArr = new byte[(((this.f3324a.c + i5) - 5) - 9) - i];
            System.arraycopy(this.f3324a.f3290b, 0, bArr, 0, this.f3324a.f3290b.length);
            this.f3324a.f3290b = bArr;
        }
        System.arraycopy(this.f3324a.f3290b, i + 5 + 9, this.f3324a.f3290b, i5, ((this.f3324a.c - 5) - 9) - i);
        this.f3324a.c = 10;
        this.f3324a.a(i);
        this.f3324a.c = i + 5 + 9;
        return i5;
    }

    public void a() {
        this.f3324a.c = 5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(byte b2, int i, int i2, int i3) {
        System.arraycopy(this.f3324a.f3290b, i2, this.f3324a.f3290b, 14, i3);
        this.f3324a.f3290b[5] = b2;
        this.f3324a.c = 6;
        this.f3324a.a(i);
        this.f3324a.a(i3);
        this.f3324a.c = i3 + 5 + 9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        int i2 = this.f3324a.c;
        int i3 = (-i2) & (i - 1);
        if (i3 < i) {
            i3 += i;
        }
        int i4 = (i2 + i3) - 4;
        this.f3325b[0] = (byte) (i4 >>> 24);
        this.f3325b[1] = (byte) (i4 >>> 16);
        this.f3325b[2] = (byte) (i4 >>> 8);
        this.f3325b[3] = (byte) i4;
        System.arraycopy(this.f3325b, 0, this.f3324a.f3290b, 0, 4);
        this.f3324a.f3290b[4] = (byte) i3;
        synchronized (c) {
            c.a(this.f3324a.f3290b, this.f3324a.c, i3);
        }
        this.f3324a.b(i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Buffer b() {
        return this.f3324a;
    }
}
