package com.baidu.sapi2;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class SapiContext {
    public static final int LOGINMODE_EMAIL = 1;
    public static final int LOGINMODE_NORMAL = 0;
    public static final int TAB_NORMAL = 0;
    public static final int TAB_PHONE = 1;
    private static SapiContext appContext;
    protected Context context;
    protected SharedPreferences system;

    private SapiContext(Context context) {
        this.context = context;
        this.system = this.context.getSharedPreferences("sapi_system", 0);
    }

    public static SapiContext getInstance(Context context) {
        if (appContext == null) {
            appContext = new SapiContext(context);
        }
        return appContext;
    }

    public String getAccountPlaceholder() {
        return this.system.getString("accountPlaceholder", "邮箱地址/用户名");
    }

    public String getAccountTitle() {
        return this.system.getString("accountTitle", "邮\u3000箱");
    }

    public String getFirstTabText() {
        return this.system.getString("firstTabText", "邮箱登录");
    }

    public String getLastLoginPhone() {
        return this.system.getString("lastLoginPhone", "");
    }

    public int getLastLoginType() {
        return this.system.getInt("lastLoginType", 0);
    }

    public String getLastLoginUsername() {
        return this.system.getString("lastLoginUsername", "");
    }

    public int getLoginMode() {
        return this.system.getInt("loginMode", 1);
    }

    public int getTabDefault() {
        return this.system.getInt("tabdefault", 0);
    }

    public void setAccountPlaceholder(String str) {
        this.system.edit().putString("accountPlaceholder", str).commit();
    }

    public void setAccountTitle(String str) {
        this.system.edit().putString("accountTitle", str).commit();
    }

    public void setFirstTabText(String str) {
        this.system.edit().putString("firstTabText", str).commit();
    }

    public void setLastLoginPhone(String str) {
        this.system.edit().putString("lastLoginPhone", str).commit();
    }

    public void setLastLoginType(int i) {
        this.system.edit().putInt("lastLoginType", i).commit();
    }

    public void setLastLoginUsername(String str) {
        this.system.edit().putString("lastLoginUsername", str).commit();
    }

    public void setLoginMode(int i) {
        this.system.edit().putInt("loginMode", i).commit();
    }

    public void setTabDefault(int i) {
        this.system.edit().putInt("tabdefault", i).commit();
    }
}
