package com.baidu.sapi2;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class DeviceCrypto {
    private static final String AES_ALGORITHM = "AES";
    private static final String DEFAULT_ENCODEING = "UTF-8";
    private static final int IVS_LENGTH = 16;
    private static final int KEY_LENGTH = 16;
    private static final String MD5_ALGORITHM = "MD5";

    public static String AES128Decrypt(String str, String str2) {
        try {
            String hexString = getHexString(getMd5DigestFormStr(str2.trim()));
            String substring = hexString.substring(0, 16);
            String stringBuffer = new StringBuffer(hexString.substring(0, 16)).reverse().toString();
            Cipher cipher = Cipher.getInstance(CppUtils.nativeGetDeviceAESMode());
            cipher.init(2, new SecretKeySpec(substring.getBytes("UTF-8"), AES_ALGORITHM), new IvParameterSpec(stringBuffer.getBytes("UTF-8")));
            return base64Encode(cipher.doFinal(paddingBlock(str.getBytes("UTF-8"))));
        } catch (Exception e) {
            return null;
        }
    }

    public static String AES128Encrypt(String str, String str2) {
        try {
            String hexString = getHexString(getMd5DigestFormStr(str2.trim()));
            String substring = hexString.substring(0, 16);
            String stringBuffer = new StringBuffer(hexString.substring(0, 16)).reverse().toString();
            Cipher cipher = Cipher.getInstance(CppUtils.nativeGetDeviceAESMode());
            cipher.init(1, new SecretKeySpec(substring.getBytes("UTF-8"), AES_ALGORITHM), new IvParameterSpec(stringBuffer.getBytes("UTF-8")));
            return base64Encode(cipher.doFinal(paddingBlock(str.getBytes("UTF-8"))));
        } catch (Exception e) {
            return null;
        }
    }

    private static String base64Encode(byte[] bArr) {
        int i;
        StringBuilder sb = new StringBuilder();
        int length = bArr.length * 8;
        byte b2 = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 6;
        int i5 = 0;
        do {
            if (i5 > 0 && i4 > 0) {
                b2 = (byte) (((byte) (((bArr[i3] & 255) << i4) | ((bArr[i3 + 1] & 255) >> (8 - i4)))) & 63);
                i5 = 8 - i4;
                i4 = 6 - i5;
            } else if (i5 == 0) {
                b2 = (byte) ((bArr[i3] & 255) >> (8 - i4));
                i5 = 2;
                i4 = 4;
            } else if (i4 == 0) {
                b2 = (byte) (bArr[i3] & 63);
                i4 = 6;
                i5 = 0;
            }
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(b2));
            i2 += 6;
            i3 = i2 / 8;
            i = length - i2;
        } while (i >= 6);
        if (i > 0) {
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((byte) ((bArr[bArr.length - 1] << (6 - i)) & 63)));
        }
        int i6 = length % 3;
        for (int i7 = 0; i7 < i6; i7++) {
            sb.append("=");
        }
        return sb.toString();
    }

    public static String encryptDeviceId(String str) {
        String nativeGetDeviceKey = CppUtils.nativeGetDeviceKey();
        try {
            String base64Encode = base64Encode(str.getBytes("UTF-8"));
            return AES128Encrypt(base64Encode + "." + getHexString(getMd5DigestFormStr(base64Encode + nativeGetDeviceKey)), nativeGetDeviceKey);
        } catch (Exception e) {
            return null;
        }
    }

    public static String getHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            sb.append(Integer.toString((b2 & 255) + 256, 16).substring(1));
        }
        return sb.toString();
    }

    private static byte[] getMd5DigestFormStr(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MD5_ALGORITHM);
            messageDigest.update(str.getBytes());
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    private static byte[] paddingBlock(byte[] bArr) {
        if (bArr.length % 16 == 0) {
            return bArr;
        }
        byte[] bArr2 = new byte[((bArr.length / 16) + 1) * 16];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[i];
        }
        for (int length = bArr.length; length < bArr2.length; length++) {
            bArr2[length] = 0;
        }
        return bArr2;
    }
}
