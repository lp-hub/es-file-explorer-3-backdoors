package com.baidu.sapi2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.inputmethod.InputMethodManager;
import com.baidu.sapi2.log.Logger;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;
import org.apache.commons.net.ftp.FTPCommand;

/* loaded from: classes.dex */
public class Utils {
    public static String createDeviceID(Context context) {
        return md5Encode(getIMEI(context) + getMac(context)).replace("\n", "");
    }

    public static String createDeviceInfo() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("os_version=").append(getOSVersion()).append("&brand_name=").append(getBrandName()).append("&brand_model=").append(getBrandMode()).append("&os_type=").append("Android");
        return stringBuffer.toString();
    }

    private static String getBrandMode() {
        try {
            return URLEncoder.encode(TextUtils.isEmpty(Build.MODEL) ? "" : Build.MODEL, "UTF-8");
        } catch (Exception e) {
            return "";
        }
    }

    public static String getBrandName() {
        try {
            return URLEncoder.encode(TextUtils.isEmpty(Build.BRAND) ? "" : Build.BRAND, "UTF-8");
        } catch (Exception e) {
            return "";
        }
    }

    public static String getIMEI(Context context) {
        return ((TelephonyManager) context.getSystemService(BDAccountManager.KEY_PHONE)).getDeviceId();
    }

    public static String getMac(Context context) {
        try {
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
            return TextUtils.isEmpty(connectionInfo.getMacAddress()) ? "" : connectionInfo.getMacAddress();
        } catch (Exception e) {
            return "";
        }
    }

    private static String getOSVersion() {
        try {
            return URLEncoder.encode(TextUtils.isEmpty(Build.VERSION.RELEASE) ? "" : Build.VERSION.RELEASE, "UTF-8");
        } catch (Exception e) {
            return "";
        }
    }

    public static void hideInputMethod(Activity activity) {
        if (activity == null) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        if (activity.getCurrentFocus() != null) {
            inputMethodManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 0);
        }
    }

    public static boolean isValid(String str) {
        return str != null && str.length() > 0;
    }

    public static boolean isValidEmail(String str) {
        if (isValid(str)) {
            return Pattern.matches("^\\s*\\w+(?:\\.{0,1}[\\w-]+)*@[a-zA-Z0-9]+(?:[-.][a-zA-Z0-9]+)*\\.[a-zA-Z]+\\s*$", str);
        }
        return false;
    }

    public static boolean isValidPassword(String str) {
        return str != null && str.length() >= 2 && str.length() <= 14;
    }

    public static boolean isValidPhone(String str) {
        return str != null && str.length() > 0;
    }

    public static boolean isValidSmsCode(String str) {
        return str != null && str.length() == 6;
    }

    public static boolean isValidUsername(String str) {
        return (str == null || str.equals("") || str.length() > 14) ? false : true;
    }

    public static String md5Encode(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(hexString);
            }
        } catch (Exception e) {
        }
        return stringBuffer.toString();
    }

    public static String md5sLogin(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("GBK"));
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer("");
            for (int i = 0; i < digest.length; i++) {
                int i2 = digest[i];
                if (i2 < 0) {
                    i2 += 256;
                }
                if (i2 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i2));
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e) {
            Logger.w(e);
            return null;
        } catch (NoSuchAlgorithmException e2) {
            return null;
        }
    }

    public static void showInputMethod(Activity activity) {
        if (activity == null) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        if (activity.getCurrentFocus() != null) {
            inputMethodManager.showSoftInput(activity.getCurrentFocus(), 0);
        }
    }

    public static boolean startWap(String str, Context context) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static String toGbk(String str) {
        try {
            return URLEncoder.encode(str, "GBK");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public static String utf8Togb2312(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case FTPCommand.EPRT /* 37 */:
                    try {
                        stringBuffer.append((char) Integer.parseInt(str.substring(i + 1, i + 3), 16));
                        i += 2;
                        break;
                    } catch (NumberFormatException e) {
                        throw new IllegalArgumentException();
                    }
                case '+':
                    stringBuffer.append(' ');
                    break;
                default:
                    stringBuffer.append(charAt);
                    break;
            }
            i++;
        }
        try {
            return new String(stringBuffer.toString().getBytes("8859_1"), "UTF-8");
        } catch (Exception e2) {
            return null;
        }
    }
}
