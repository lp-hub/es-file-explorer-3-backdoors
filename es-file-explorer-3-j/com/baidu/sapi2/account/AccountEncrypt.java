package com.baidu.sapi2.account;

import android.content.Context;
import com.baidu.sapi2.CppUtils;
import com.baidu.sapi2.utils.Base64;
import com.baidu.sapi2.utils.DeviceId;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class AccountEncrypt {
    private static final String AES_ALGORITHM = "AES";
    private static final String DEFAULT_ENCODEING = "UTF-8";
    private static final int IVS_LENGTH = 16;
    private static final int KEY_LENGTH = 16;
    private static final String MD5_ALGORITHM = "MD5";

    public static String AES128Decrypt(String str, String str2) {
        try {
            byte[] decode = Base64.decode(str.getBytes("UTF-8"));
            String hexString = getHexString(getMd5DigestFormStr(str2.trim()));
            String substring = hexString.substring(0, 16);
            String stringBuffer = new StringBuffer(hexString.substring(0, 16)).reverse().toString();
            Cipher cipher = Cipher.getInstance(CppUtils.nativeGetDeviceAESMode());
            cipher.init(2, new SecretKeySpec(substring.getBytes("UTF-8"), AES_ALGORITHM), new IvParameterSpec(stringBuffer.getBytes("UTF-8")));
            return new String(cipher.doFinal(paddingBlock(decode)));
        } catch (Exception e) {
            e.printStackTrace();
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
            return new String(Base64.encode(cipher.doFinal(paddingBlock(str.getBytes("UTF-8"))).toString().getBytes(), "UTF-8"));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String decryptPassword(Context context, String str) {
        return AES128Decrypt(str, DeviceId.getDeviceID(context));
    }

    public static String encryptPassword(Context context, String str) {
        return new String(AES128Encrypt(str, DeviceId.getDeviceID(context)));
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
