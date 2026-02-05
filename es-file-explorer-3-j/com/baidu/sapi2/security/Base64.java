package com.baidu.sapi2.security;

import com.baidu.sapi2.log.Logger;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class Base64 {
    static String[] sBaseSting = {"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"};

    public static int decode(char c, int i) {
        int i2 = 0;
        char[] charArray = sBaseSting[i].toCharArray();
        if (c != '=') {
            while (i2 < 64) {
                if (charArray[i2] != c) {
                    i2++;
                }
            }
            throw new RuntimeException("unexpected code: " + c);
        }
        return i2;
    }

    public static void decode(String str, ByteArrayOutputStream byteArrayOutputStream) {
        int length = str.length();
        int length2 = str.length() % 4;
        if (length2 > 0) {
            length2 = 4 - length2;
        }
        while (length2 > 0) {
            str = str + '=';
            length2--;
        }
        int i = 0;
        while (true) {
            if (i < length && str.charAt(i) <= ' ') {
                i++;
            } else {
                if (i == length) {
                    return;
                }
                int decode = (decode(str.charAt(i), 0) << 18) + (decode(str.charAt(i + 1), 0) << 12) + (decode(str.charAt(i + 2), 0) << 6) + decode(str.charAt(i + 3), 0);
                byteArrayOutputStream.write((decode >> 16) & 255);
                if (str.charAt(i + 2) == '=') {
                    return;
                }
                byteArrayOutputStream.write((decode >> 8) & 255);
                if (str.charAt(i + 3) == '=') {
                    return;
                }
                byteArrayOutputStream.write(decode & 255);
                i += 4;
            }
        }
    }

    public static byte[] decode(String str) {
        byte[] bArr = null;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (str != null) {
            try {
                try {
                    decode(str, byteArrayOutputStream);
                    bArr = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                } catch (Exception e) {
                    Logger.w(e);
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e2) {
                        Logger.w(e2);
                    }
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e3) {
                    Logger.w(e3);
                }
            }
        }
        return bArr;
    }

    public static String encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length, null).toString();
    }

    public static StringBuffer encode(byte[] bArr, int i, int i2, StringBuffer stringBuffer) {
        char[] charArray = sBaseSting[0].toCharArray();
        if (stringBuffer == null) {
            stringBuffer = new StringBuffer((bArr.length * 3) / 2);
        }
        int i3 = i2 - 3;
        int i4 = i;
        while (i4 <= i3) {
            int i5 = ((bArr[i4] & 255) << 16) | ((bArr[i4 + 1] & 255) << 8) | (bArr[i4 + 2] & 255);
            stringBuffer.append(charArray[(i5 >> 18) & 63]);
            stringBuffer.append(charArray[(i5 >> 12) & 63]);
            stringBuffer.append(charArray[(i5 >> 6) & 63]);
            stringBuffer.append(charArray[i5 & 63]);
            i4 += 3;
        }
        if (i4 == (i + i2) - 2) {
            int i6 = ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4] & 255) << 16);
            stringBuffer.append(charArray[(i6 >> 18) & 63]);
            stringBuffer.append(charArray[(i6 >> 12) & 63]);
            stringBuffer.append(charArray[(i6 >> 6) & 63]);
        } else if (i4 == (i + i2) - 1) {
            int i7 = (bArr[i4] & 255) << 16;
            stringBuffer.append(charArray[(i7 >> 18) & 63]);
            stringBuffer.append(charArray[(i7 >> 12) & 63]);
        }
        return stringBuffer;
    }

    public static boolean needBase64(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) != '-') {
                if (str.charAt(i) > 'z') {
                    return true;
                }
                if ((str.charAt(i) < 'a') && (str.charAt(i) > 'Z')) {
                    return true;
                }
                if (((str.charAt(i) < 'A') & (str.charAt(i) > '9')) || str.charAt(i) < '0') {
                    return true;
                }
            }
        }
        return false;
    }
}
