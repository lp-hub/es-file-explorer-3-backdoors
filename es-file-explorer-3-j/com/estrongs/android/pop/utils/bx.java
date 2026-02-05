package com.estrongs.android.pop.utils;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.callback.LoginCallBack;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public class bx {

    /* renamed from: a, reason: collision with root package name */
    public static int f1244a = -1;

    /* renamed from: b, reason: collision with root package name */
    public static int f1245b = LoginCallBack.REQUEST_LOGINPROTECT;

    /* JADX WARN: Removed duplicated region for block: B:31:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a() {
        RandomAccessFile randomAccessFile;
        if (f1244a > 0) {
            return f1244a;
        }
        try {
            try {
                randomAccessFile = new RandomAccessFile("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq", "r");
                try {
                    f1244a = Integer.parseInt(randomAccessFile.readLine()) / LoginCallBack.REQUEST_LOGINPROTECT;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e) {
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    f1244a = f1245b;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e3) {
                        }
                    }
                    return f1244a;
                }
            } catch (Throwable th) {
                th = th;
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            randomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
            if (randomAccessFile != null) {
            }
            throw th;
        }
        return f1244a;
    }

    public static String a(Context context) {
        String line1Number = ((TelephonyManager) context.getSystemService(BDAccountManager.KEY_PHONE)).getLine1Number();
        return (line1Number == null || !line1Number.startsWith("+86")) ? line1Number : line1Number.substring(3);
    }
}
