package com.baidu.a.a.a.b;

import android.content.Context;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.YiAccountUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;
import org.apache.commons.net.SocketClient;

/* loaded from: classes.dex */
public final class b {
    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a(Context context) {
        Exception e;
        String str;
        a(context, "android.permission.WRITE_SETTINGS");
        a(context, "android.permission.READ_PHONE_STATE");
        a(context, "android.permission.WRITE_EXTERNAL_STORAGE");
        boolean z = false;
        String str2 = "";
        try {
            str2 = Settings.System.getString(context.getContentResolver(), "bd_setting_i");
            str = str2 == null ? b(context) : str2;
        } catch (Exception e2) {
            e = e2;
            str = str2;
        }
        try {
            Settings.System.putString(context.getContentResolver(), "bd_setting_i", str);
        } catch (Exception e3) {
            e = e3;
            Log.e("DeviceId", "Settings.System.getString or putString failed", e);
            z = true;
            String c = c(context);
            if (!z) {
            }
        }
        String c2 = c(context);
        if (!z) {
            return c.a((YiAccountUtils.BAIDUACCOUNT_TYPE + c2).getBytes(), true);
        }
        String str3 = null;
        String string = Settings.System.getString(context.getContentResolver(), "com.baidu.deviceid");
        if (TextUtils.isEmpty(string)) {
            str3 = c.a((YiAccountUtils.BAIDUACCOUNT_TYPE + str + c2).getBytes(), true);
            string = Settings.System.getString(context.getContentResolver(), str3);
            if (!TextUtils.isEmpty(string)) {
                Settings.System.putString(context.getContentResolver(), "com.baidu.deviceid", string);
                a(str, string);
            }
        }
        if (TextUtils.isEmpty(string)) {
            string = a(str);
            if (!TextUtils.isEmpty(string)) {
                Settings.System.putString(context.getContentResolver(), str3, string);
                Settings.System.putString(context.getContentResolver(), "com.baidu.deviceid", string);
            }
        }
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String a2 = c.a((str + c2 + UUID.randomUUID().toString()).getBytes(), true);
        Settings.System.putString(context.getContentResolver(), str3, a2);
        Settings.System.putString(context.getContentResolver(), "com.baidu.deviceid", a2);
        a(str, a2);
        return a2;
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(Environment.getExternalStorageDirectory(), "baidu/.cuid")));
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
            String[] split = new String(com.baidu.a.a.a.a.a.b("30212102dicudiab", "30212102dicudiab", com.baidu.a.a.a.a.b.a(sb.toString().getBytes()))).split("=");
            return (split != null && split.length == 2 && str.equals(split[0])) ? split[1] : "";
        } catch (FileNotFoundException e) {
            return "";
        } catch (IOException e2) {
            return "";
        } catch (Exception e3) {
            return "";
        }
    }

    private static void a(Context context, String str) {
        if (!(context.checkCallingOrSelfPermission(str) == 0)) {
            throw new SecurityException("Permission Denial: requires permission " + str);
        }
    }

    private static void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        File file = new File(Environment.getExternalStorageDirectory(), "baidu/.cuid");
        try {
            new File(file.getParent()).mkdirs();
            FileWriter fileWriter = new FileWriter(file, false);
            fileWriter.write(com.baidu.a.a.a.a.b.a(com.baidu.a.a.a.a.a.a("30212102dicudiab", "30212102dicudiab", (str + "=" + str2).getBytes()), "utf-8"));
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
        } catch (Exception e2) {
        }
    }

    public static String b(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(BDAccountManager.KEY_PHONE);
        if (telephonyManager == null) {
            return "";
        }
        String deviceId = telephonyManager.getDeviceId();
        return TextUtils.isEmpty(deviceId) ? "" : deviceId;
    }

    public static String c(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        return TextUtils.isEmpty(string) ? "" : string;
    }
}
