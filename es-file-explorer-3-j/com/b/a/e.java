package com.b.a;

/* loaded from: classes.dex */
public class e {
    public static String a(long j) {
        StringBuffer stringBuffer = new StringBuffer();
        String hexString = Integer.toHexString((int) j);
        if (j > 4294967295L) {
            stringBuffer.append(Integer.toHexString((int) (j >> 32)));
            for (int length = hexString.length(); length < 8; length++) {
                stringBuffer.append('0');
            }
        }
        stringBuffer.append(hexString);
        return stringBuffer.toString();
    }

    public static byte[] a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }
}
