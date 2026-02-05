package org.bouncycastle.crypto.c;

import org.bouncycastle.crypto.a.b;
import org.bouncycastle.crypto.e;
import org.bouncycastle.crypto.f;

/* loaded from: classes.dex */
public class a extends f {
    private e d = new org.bouncycastle.crypto.d.a(new b());

    private void a(byte[] bArr, int i) {
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) i;
    }

    private void a(byte[] bArr, byte[] bArr2, int i, byte[] bArr3, byte[] bArr4, int i2) {
        byte[] bArr5 = new byte[this.d.a()];
        org.bouncycastle.crypto.f.a aVar = new org.bouncycastle.crypto.f.a(bArr);
        this.d.a(aVar);
        if (bArr2 != null) {
            this.d.a(bArr2, 0, bArr2.length);
        }
        this.d.a(bArr3, 0, bArr3.length);
        this.d.a(bArr5, 0);
        System.arraycopy(bArr5, 0, bArr4, i2, bArr5.length);
        if (i == 0) {
            throw new IllegalArgumentException("iteration count must be at least 1.");
        }
        for (int i3 = 1; i3 < i; i3++) {
            this.d.a(aVar);
            this.d.a(bArr5, 0, bArr5.length);
            this.d.a(bArr5, 0);
            for (int i4 = 0; i4 != bArr5.length; i4++) {
                int i5 = i2 + i4;
                bArr4[i5] = (byte) (bArr4[i5] ^ bArr5[i4]);
            }
        }
    }

    private byte[] b(int i) {
        int a2 = this.d.a();
        int i2 = ((i + a2) - 1) / a2;
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[i2 * a2];
        for (int i3 = 1; i3 <= i2; i3++) {
            a(bArr, i3);
            a(this.f3463a, this.f3464b, this.c, bArr, bArr2, (i3 - 1) * a2);
        }
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.f
    public org.bouncycastle.crypto.b a(int i) {
        int i2 = i / 8;
        return new org.bouncycastle.crypto.f.a(b(i2), 0, i2);
    }
}
