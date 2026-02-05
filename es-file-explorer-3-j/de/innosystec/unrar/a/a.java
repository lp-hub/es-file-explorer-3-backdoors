package de.innosystec.unrar.a;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f3398a = new int[256];

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = i;
            for (int i3 = 0; i3 < 8; i3++) {
                i2 = (i2 & 1) != 0 ? (i2 >>> 1) ^ (-306674912) : i2 >>> 1;
            }
            f3398a[i] = i2;
        }
    }

    public static int a(int i, byte[] bArr, int i2, int i3) {
        int min = Math.min(bArr.length - i2, i3);
        for (int i4 = 0; i4 < min; i4++) {
            i = f3398a[(bArr[i2 + i4] ^ i) & 255] ^ (i >>> 8);
        }
        return i;
    }

    public static short a(short s, byte[] bArr, int i) {
        int min = Math.min(bArr.length, i);
        for (int i2 = 0; i2 < min; i2++) {
            short s2 = (short) (((short) (((short) (bArr[i2] & 255)) + s)) & (-1));
            s = (short) (((s2 >>> 15) | (s2 << 1)) & (-1));
        }
        return s;
    }
}
