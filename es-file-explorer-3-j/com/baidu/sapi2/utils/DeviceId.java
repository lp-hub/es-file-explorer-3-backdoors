package com.baidu.sapi2.utils;

import android.content.Context;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.YiAccountUtils;
import com.baidu.sapi2.security.Md5;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;
import org.apache.commons.net.SocketClient;

/* loaded from: classes.dex */
public final class DeviceId {
    private static final String AES_KEY = "30212102dicudiab";
    private static final boolean DEBUG = false;
    private static final String EXT_FILE = "baidu/.cuid";
    private static final String KEY_DEVICE_ID = "com.baidu.deviceid";
    private static final String KEY_IMEI = "bd_setting_i";
    private static final String TAG = "DeviceId";

    private static void checkPermission(Context context, String str) {
        if (!(context.checkCallingOrSelfPermission(str) == 0)) {
            throw new SecurityException("Permission Denial: requires permission " + str);
        }
    }

    public static String getAndroidId(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        return TextUtils.isEmpty(string) ? "" : string;
    }

    public static String getDeviceID(Context context) {
        checkPermission(context, "android.permission.WRITE_SETTINGS");
        checkPermission(context, "android.permission.READ_PHONE_STATE");
        checkPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE");
        boolean z = false;
        String str = "";
        try {
            str = Settings.System.getString(context.getContentResolver(), KEY_IMEI);
            if (str == null) {
                str = getIMEI(context);
            }
            Settings.System.putString(context.getContentResolver(), KEY_IMEI, str);
        } catch (Exception e) {
            z = true;
        }
        String androidId = getAndroidId(context);
        if (z) {
            return Md5.toMd5((YiAccountUtils.BAIDUACCOUNT_TYPE + androidId).getBytes(), true);
        }
        String str2 = null;
        String string = Settings.System.getString(context.getContentResolver(), KEY_DEVICE_ID);
        if (TextUtils.isEmpty(string)) {
            str2 = Md5.toMd5((YiAccountUtils.BAIDUACCOUNT_TYPE + str + androidId).getBytes(), true);
            string = Settings.System.getString(context.getContentResolver(), str2);
            if (!TextUtils.isEmpty(string)) {
                Settings.System.putString(context.getContentResolver(), KEY_DEVICE_ID, string);
                setExternalDeviceId(str, string);
            }
        }
        if (TextUtils.isEmpty(string)) {
            string = getExternalDeviceId(str);
            if (!TextUtils.isEmpty(string)) {
                Settings.System.putString(context.getContentResolver(), str2, string);
                Settings.System.putString(context.getContentResolver(), KEY_DEVICE_ID, string);
            }
        }
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String md5 = Md5.toMd5((str + androidId + UUID.randomUUID().toString()).getBytes(), true);
        Settings.System.putString(context.getContentResolver(), str2, md5);
        Settings.System.putString(context.getContentResolver(), KEY_DEVICE_ID, md5);
        setExternalDeviceId(str, md5);
        return md5;
    }

    private static String getExternalDeviceId(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(Environment.getExternalStorageDirectory(), EXT_FILE)));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append(SocketClient.NETASCII_EOL);
            }
            bufferedReader.close();
            String[] split = new String(AESUtil.decrypt(AES_KEY, AES_KEY, Base64.decode(sb.toString().getBytes()))).split("=");
            return (split != null && split.length == 2 && str.equals(split[0])) ? split[1] : "";
        } catch (FileNotFoundException e) {
            return "";
        } catch (IOException e2) {
            return "";
        } catch (Exception e3) {
            return "";
        }
    }

    public static String getIMEI(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(BDAccountManager.KEY_PHONE);
        if (telephonyManager == null) {
            return "";
        }
        String deviceId = telephonyManager.getDeviceId();
        return TextUtils.isEmpty(deviceId) ? "" : deviceId;
    }

    private static void setExternalDeviceId(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        File file = new File(Environment.getExternalStorageDirectory(), EXT_FILE);
        try {
            new File(file.getParent()).mkdirs();
            FileWriter fileWriter = new FileWriter(file, false);
            fileWriter.write(Base64.encode(AESUtil.encrypt(AES_KEY, AES_KEY, (str + "=" + str2).getBytes()), "utf-8"));
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
        } catch (Exception e2) {
        }
    }
}
