package jcifs.util;

/* loaded from: classes.dex */
public class RC4 {
    int i;
    int j;
    byte[] s;

    public RC4() {
    }

    public RC4(byte[] bArr) {
        init(bArr, 0, bArr.length);
    }

    public void init(byte[] bArr, int i, int i2) {
        this.s = new byte[256];
        this.i = 0;
        while (this.i < 256) {
            this.s[this.i] = (byte) this.i;
            this.i++;
        }
        this.j = 0;
        this.i = 0;
        while (this.i < 256) {
            this.j = (this.j + bArr[(this.i % i2) + i] + this.s[this.i]) & 255;
            byte b2 = this.s[this.i];
            this.s[this.i] = this.s[this.j];
            this.s[this.j] = b2;
            this.i++;
        }
        this.j = 0;
        this.i = 0;
    }

    public void update(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = i + i2;
        while (i < i4) {
            this.i = (this.i + 1) & 255;
            this.j = (this.j + this.s[this.i]) & 255;
            byte b2 = this.s[this.i];
            this.s[this.i] = this.s[this.j];
            this.s[this.j] = b2;
            bArr2[i3] = (byte) (bArr[i] ^ this.s[(this.s[this.i] + this.s[this.j]) & 255]);
            i3++;
            i++;
        }
    }
}
