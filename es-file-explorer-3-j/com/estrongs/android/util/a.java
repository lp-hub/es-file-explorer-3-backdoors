package com.estrongs.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.baidu.mobstat.StatService;
import com.estrongs.android.pop.FexApplication;
import java.util.Locale;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2659a = a.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static final String[] f2660b = {"FileExplorer"};
    private static final String[] c = {"百度网盘_Register", "Root_Already", "Root_Try", "百度网盘_Already", "Normal_Register", "SMS_Register", "Direct_Register", "Press_Login", "Press_Logout", "Press_Register", "Press_Direct", "Recommend_Show", "Sina_Register", "QQ_Register", "RenRen_Register", "Press_Normalize", "Press_UPInfo_Confirm", "Press_Verify_Confirm", "PCS_Phone_Registered"};
    private static final String[] d = {"快盘_UV", "酷盘_UV", "新浪微盘_UV", "百度网盘_UV", "Normal_Login", "Sina_Login", "QQ_Login", "RenRen_Login", "Direct_Active", "Baidu_Active", "Sina_Active", "QQ_Active", "RenRen_Active", "PCS_Home_Page_UV", "PCS_Upload_UV", "PCS_Download_UV", "Normalize_UV", "UPInfo_Confirm_UV", "Verify_Confirm_UV", "PCS_Upgrade_UV"};
    private static final String[] e = {"Phone_get", "Phone_no", "Next_Phone_Get", "Next_Phone_No"};
    private static String f = "Google Market";
    private static a k = null;
    private boolean g;
    private boolean h = true;
    private String i;
    private Context j;

    private a(Context context, String str) {
        this.g = false;
        this.i = null;
        this.j = null;
        this.j = context;
        this.i = str;
        if (Locale.getDefault().equals(Locale.CHINA) || "CN".equalsIgnoreCase(com.estrongs.android.pop.q.a(context).E())) {
            this.g = b(str);
        } else {
            this.g = false;
        }
    }

    public static a a() {
        return k;
    }

    public static a a(Context context, boolean z, String str) {
        if (!z) {
            return new a(context, str);
        }
        if (k == null) {
            k = new a(context, str);
        }
        return k;
    }

    public static void a(String str) {
        f = str;
        StatService.setAppChannel(f);
    }

    private boolean b(String str) {
        if (str == null) {
            return false;
        }
        for (String str2 : f2660b) {
            if (str2.endsWith(str)) {
                return true;
            }
        }
        return false;
    }

    private boolean b(String str, long j) {
        long j2 = this.j.getSharedPreferences("Event_DB", 0).getLong(str, 0L);
        return System.currentTimeMillis() - j2 > j || j2 == 0;
    }

    private boolean c(String str) {
        if (str == null) {
            return false;
        }
        for (String str2 : c) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    private boolean d(String str) {
        if (str == null) {
            return false;
        }
        for (String str2 : d) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    private boolean e(String str) {
        if (str == null) {
            return false;
        }
        for (String str2 : e) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public void a(String str, long j) {
        SharedPreferences.Editor edit = this.j.getSharedPreferences("Event_DB", 0).edit();
        edit.putLong(str, j);
        edit.commit();
    }

    public void a(String str, String str2) {
        if (FexApplication.f326b && this.h && this.g && c(str)) {
            StatService.onEvent(this.j, str, str2);
        }
    }

    public void b() {
        long j;
        boolean aq = com.estrongs.android.pop.q.a(FexApplication.a()).aq();
        try {
            j = com.estrongs.android.pop.q.a(FexApplication.a()).ar();
        } catch (Exception e2) {
            e2.printStackTrace();
            j = 0;
        }
        if (aq || j == 0 || System.currentTimeMillis() - j >= 2592000000L) {
            this.h = true;
        } else {
            this.h = false;
        }
        if (FexApplication.f326b && this.h && this.g) {
            StatService.onResume(this.j);
            com.estrongs.android.pop.q.a(FexApplication.a()).c(System.currentTimeMillis());
        }
    }

    public void b(String str, String str2) {
        if (FexApplication.f326b && this.h && this.g && d(str) && b(str, 86400000L)) {
            StatService.onEvent(this.j, str, str2);
            a(str, System.currentTimeMillis());
        }
    }

    public void c() {
        if (FexApplication.f326b && this.h && this.g) {
            StatService.onPause(this.j);
        }
    }

    public void c(String str, String str2) {
        if (FexApplication.f326b && this.h && this.g && e(str) && b(str, Long.MAX_VALUE)) {
            StatService.onEvent(this.j, str, str2);
            a(str, System.currentTimeMillis());
        }
    }

    public void d() {
        k = null;
    }
}
