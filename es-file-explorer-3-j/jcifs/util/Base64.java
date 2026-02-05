package jcifs.util;

/* loaded from: classes.dex */
public class Base64 {
    private static final String ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    public static byte[] decode(String str) {
        int i = 0;
        int length = str.length();
        if (length == 0) {
            return new byte[0];
        }
        int i2 = ((length * 3) / 4) - (str.charAt(length + (-2)) == '=' ? 2 : str.charAt(length + (-1)) == '=' ? 1 : 0);
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < length) {
            int i4 = i3 + 1;
            int i5 = i4 + 1;
            int indexOf = ((ALPHABET.indexOf(str.charAt(i3)) & 255) << 18) | ((ALPHABET.indexOf(str.charAt(i4)) & 255) << 12);
            int i6 = i5 + 1;
            int i7 = i6 + 1;
            int indexOf2 = (ALPHABET.indexOf(str.charAt(i6)) & 255) | indexOf | ((ALPHABET.indexOf(str.charAt(i5)) & 255) << 6);
            int i8 = i + 1;
            bArr[i] = (byte) (indexOf2 >>> 16);
            if (i8 < i2) {
                i = i8 + 1;
                bArr[i8] = (byte) ((indexOf2 >>> 8) & 255);
            } else {
                i = i8;
            }
            if (i < i2) {
                bArr[i] = (byte) (indexOf2 & 255);
                i++;
                i3 = i7;
            } else {
                i3 = i7;
            }
        }
        return bArr;
    }

    public static String encode(byte[] bArr) {
        int length = bArr.length;
        if (length == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(((int) Math.ceil(length / 3.0d)) * 4);
        int i = length % 3;
        int i2 = length - i;
        int i3 = 0;
        while (i3 < i2) {
            int i4 = i3 + 1;
            int i5 = i4 + 1;
            int i6 = ((bArr[i4] & 255) << 8) | ((bArr[i3] & 255) << 16);
            i3 = i5 + 1;
            int i7 = i6 | (bArr[i5] & 255);
            stringBuffer.append(ALPHABET.charAt(i7 >>> 18));
            stringBuffer.append(ALPHABET.charAt((i7 >>> 12) & 63));
            stringBuffer.append(ALPHABET.charAt((i7 >>> 6) & 63));
            stringBuffer.append(ALPHABET.charAt(i7 & 63));
        }
        if (i == 0) {
            return stringBuffer.toString();
        }
        if (i == 1) {
            int i8 = (bArr[i3] & 255) << 4;
            stringBuffer.append(ALPHABET.charAt(i8 >>> 6));
            stringBuffer.append(ALPHABET.charAt(i8 & 63));
            stringBuffer.append("==");
            return stringBuffer.toString();
        }
        int i9 = (((bArr[i3] & 255) << 8) | (bArr[i3 + 1] & 255)) << 2;
        stringBuffer.append(ALPHABET.charAt(i9 >>> 12));
        stringBuffer.append(ALPHABET.charAt((i9 >>> 6) & 63));
        stringBuffer.append(ALPHABET.charAt(i9 & 63));
        stringBuffer.append("=");
        return stringBuffer.toString();
    }
}
