package com.baidu.sapi2.share;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.baidu.sapi2.BDAccountManager;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class NativeCrypto {
    private static final String HEX = "0123456789ABCDEF";
    private static boolean loadSuccess = false;
    private static final String IV = getIV();
    private static final String ALGORITHM = getAlgorithm();
    private static final String CIPHER = getCipher();
    private static SecretKeySpec mSkeySpec = null;
    private static Cipher mCipher = null;
    private static IvParameterSpec mIv = null;
    private static volatile boolean bInit = false;
    private static String key = "";

    private static void appendHex(StringBuffer stringBuffer, byte b2) {
        stringBuffer.append(HEX.charAt((b2 >> 4) & 15)).append(HEX.charAt(b2 & 15));
    }

    private static void checkIv() {
        if (mIv == null) {
            mIv = new IvParameterSpec(IV.getBytes());
        }
    }

    private static void checkLoadLibrary() {
        if (loadSuccess) {
            return;
        }
        try {
            System.loadLibrary("sapi_so");
            loadSuccess = true;
        } catch (Throwable th) {
            loadSuccess = false;
        }
    }

    public static String decrypt(Context context, String str) {
        if (!Utils.isValid(str) || context == null) {
            return null;
        }
        if (!bInit) {
            init(context);
        }
        try {
            if (mCipher == null) {
                mCipher = Cipher.getInstance(CIPHER);
            }
            checkIv();
            mCipher.init(2, mSkeySpec, mIv);
            return new String(mCipher.doFinal(toByte(str)));
        } catch (Exception e) {
            return null;
        }
    }

    public static void destroy() {
        bInit = false;
    }

    public static String encrypt(Context context, String str) {
        if (!Utils.isValid(str) || context == null) {
            return null;
        }
        if (!bInit) {
            init(context);
        }
        try {
            if (mCipher == null) {
                mCipher = Cipher.getInstance(CIPHER);
            }
            checkIv();
            mCipher.init(1, mSkeySpec, mIv);
            return toHex(mCipher.doFinal(str.getBytes()));
        } catch (Exception e) {
            return null;
        }
    }

    private static String getAlgorithm() {
        checkLoadLibrary();
        return nativeGetAlgorithm();
    }

    private static String getCipher() {
        checkLoadLibrary();
        return nativeGetCipher();
    }

    private static String getIV() {
        checkLoadLibrary();
        return nativeGetIV();
    }

    private static String getKey(Context context) {
        checkLoadLibrary();
        String deviceId = ((TelephonyManager) context.getSystemService(BDAccountManager.KEY_PHONE)).getDeviceId();
        String str = Build.MODEL;
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        String str2 = statFs.getBlockSize() + "";
        String str3 = statFs.getBlockCount() + "";
        String substring = (!TextUtils.isEmpty(deviceId) ? String.format("%1$s-%2$s-%3$s-%4$s", str, deviceId, str2, str3) : String.format("%1$s-%2$s-%3$s", str, str2, str3)).substring(0, 16);
        if (TextUtils.isEmpty(substring)) {
            substring = "----------------";
        }
        return substring.length() < 16 ? (substring + "----------------").substring(0, 16) : substring;
    }

    private static void init(Context context) {
        checkLoadLibrary();
        key = getKey(context);
        mSkeySpec = new SecretKeySpec(key.getBytes(), ALGORITHM);
        bInit = true;
    }

    private static native String nativeGetAlgorithm();

    private static native String nativeGetCipher();

    private static native String nativeGetIV();

    private static byte[] toByte(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = Integer.valueOf(str.substring(i * 2, (i * 2) + 2), 16).byteValue();
        }
        return bArr;
    }

    private static String toHex(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b2 : bArr) {
            appendHex(stringBuffer, b2);
        }
        return stringBuffer.toString();
    }
}
