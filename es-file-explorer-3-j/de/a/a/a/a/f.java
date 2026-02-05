package de.a.a.a.a;

/* loaded from: classes.dex */
public class f {
    public static int a(byte[] bArr) {
        int i = 0;
        for (int length = bArr.length - 1; length > 0; length--) {
            i = (i | (bArr[length] & 255)) << 8;
        }
        return (bArr[0] & 255) | i;
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        boolean z = (bArr == null || bArr2 == null || bArr.length != bArr2.length) ? false : true;
        for (int i = 0; z && i < bArr.length; i++) {
            if (bArr[i] != bArr2[i]) {
                z = false;
            }
        }
        return z;
    }

    public static byte[] a(int i) {
        return new byte[]{(byte) i, (byte) (i >> 8), (byte) (i >> 16), (byte) (i >> 24)};
    }

    public static byte[] a(int i, int i2) {
        byte[] bArr = new byte[i2];
        byte[] a2 = a(i);
        for (int i3 = 0; i3 < a2.length && i3 < i2; i3++) {
            bArr[i3] = a2[i3];
        }
        return bArr;
    }

    public static short b(byte[] bArr) {
        short s = 0;
        for (int length = bArr.length - 1; length > 0; length--) {
            s = (short) (((short) (s | (bArr[length] & 255))) << 8);
        }
        return (short) ((bArr[0] & 255) | s);
    }

    public static String c(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() < 2) {
                stringBuffer.append('0');
            }
            stringBuffer.append(hexString).append(' ');
        }
        return stringBuffer.toString();
    }
}
