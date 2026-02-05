package com.gmail.yuyang226.flickr.d;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static byte[] f3266a = new byte[255];

    /* renamed from: b, reason: collision with root package name */
    private static byte[] f3267b = new byte[64];

    static {
        int i = 0;
        for (int i2 = 0; i2 < 255; i2++) {
            f3266a[i2] = -1;
        }
        for (int i3 = 90; i3 >= 65; i3--) {
            f3266a[i3] = (byte) (i3 - 65);
        }
        for (int i4 = 122; i4 >= 97; i4--) {
            f3266a[i4] = (byte) ((i4 - 97) + 26);
        }
        for (int i5 = 57; i5 >= 48; i5--) {
            f3266a[i5] = (byte) ((i5 - 48) + 52);
        }
        f3266a[43] = 62;
        f3266a[47] = 63;
        for (int i6 = 0; i6 <= 25; i6++) {
            f3267b[i6] = (byte) (i6 + 65);
        }
        int i7 = 26;
        int i8 = 0;
        while (i7 <= 51) {
            f3267b[i7] = (byte) (i8 + 97);
            i7++;
            i8++;
        }
        int i9 = 52;
        while (i9 <= 61) {
            f3267b[i9] = (byte) (i + 48);
            i9++;
            i++;
        }
        f3267b[62] = 43;
        f3267b[63] = 47;
    }

    public static synchronized byte[] a(byte[] bArr) {
        byte[] bArr2 = null;
        synchronized (a.class) {
            if (bArr != null) {
                int length = bArr.length * 8;
                int i = length % 24;
                int i2 = length / 24;
                bArr2 = i != 0 ? new byte[(i2 + 1) * 4] : new byte[i2 * 4];
                int i3 = 0;
                while (i3 < i2) {
                    int i4 = i3 * 3;
                    byte b2 = bArr[i4];
                    byte b3 = bArr[i4 + 1];
                    byte b4 = bArr[i4 + 2];
                    byte b5 = (byte) (b3 & 15);
                    byte b6 = (byte) (b2 & 3);
                    int i5 = i3 * 4;
                    byte b7 = (b2 & Byte.MIN_VALUE) == 0 ? (byte) (b2 >> 2) : (byte) ((b2 >> 2) ^ 192);
                    byte b8 = (b3 & Byte.MIN_VALUE) == 0 ? (byte) (b3 >> 4) : (byte) ((b3 >> 4) ^ 240);
                    byte b9 = (b4 & Byte.MIN_VALUE) == 0 ? (byte) (b4 >> 6) : (byte) ((b4 >> 6) ^ 252);
                    bArr2[i5] = f3267b[b7];
                    bArr2[i5 + 1] = f3267b[b8 | (b6 << 4)];
                    bArr2[i5 + 2] = f3267b[b9 | (b5 << 2)];
                    bArr2[i5 + 3] = f3267b[b4 & 63];
                    i3++;
                }
                int i6 = i3 * 3;
                int i7 = i3 * 4;
                if (i == 8) {
                    byte b10 = bArr[i6];
                    byte b11 = (byte) (b10 & 3);
                    bArr2[i7] = f3267b[(b10 & Byte.MIN_VALUE) == 0 ? (byte) (b10 >> 2) : (byte) ((b10 >> 2) ^ 192)];
                    bArr2[i7 + 1] = f3267b[b11 << 4];
                    bArr2[i7 + 2] = 61;
                    bArr2[i7 + 3] = 61;
                } else if (i == 16) {
                    byte b12 = bArr[i6];
                    byte b13 = bArr[i6 + 1];
                    byte b14 = (byte) (b13 & 15);
                    byte b15 = (byte) (b12 & 3);
                    byte b16 = (b12 & Byte.MIN_VALUE) == 0 ? (byte) (b12 >> 2) : (byte) ((b12 >> 2) ^ 192);
                    byte b17 = (b13 & Byte.MIN_VALUE) == 0 ? (byte) (b13 >> 4) : (byte) ((b13 >> 4) ^ 240);
                    bArr2[i7] = f3267b[b16];
                    bArr2[i7 + 1] = f3267b[b17 | (b15 << 4)];
                    bArr2[i7 + 2] = f3267b[b14 << 2];
                    bArr2[i7 + 3] = 61;
                }
            }
        }
        return bArr2;
    }
}
