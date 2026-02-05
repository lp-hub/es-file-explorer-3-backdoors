package com.baidu.sapi2.loginshare;

import android.content.Context;

/* loaded from: classes.dex */
public class LoginShareAssistant {
    private Sharer mSharer;

    public LoginShareAssistant() {
        this.mSharer = null;
        this.mSharer = new Sharer();
    }

    public void destroy() {
        if (this.mSharer != null) {
            this.mSharer.destroy();
        }
        this.mSharer = null;
    }

    public String getDeviceToken() {
        if (this.mSharer != null) {
            return this.mSharer.getDeviceToken();
        }
        return null;
    }

    public Token getLastToken() {
        if (this.mSharer != null) {
            return this.mSharer.getLastToken();
        }
        return null;
    }

    public String getOtherBduss() {
        try {
            return this.mSharer.getOtherBduss();
        } catch (Throwable th) {
            return null;
        }
    }

    public void initial(Context context, String str, String str2) {
        try {
            this.mSharer.initial(context, str, str2);
        } catch (Throwable th) {
        }
    }

    public boolean invalid(Token token) {
        try {
            return this.mSharer.invalid(token);
        } catch (Throwable th) {
            return false;
        }
    }

    public void onActivityCreate() {
        if (this.mSharer != null) {
            this.mSharer.onActivityCreate();
        }
    }

    public void setLoginShareListener(ILoginShareListener iLoginShareListener) {
        try {
            this.mSharer.setLoginShareListener(iLoginShareListener);
        } catch (Throwable th) {
        }
    }

    public boolean valid(Token token) {
        try {
            return this.mSharer.valid(token);
        } catch (Throwable th) {
            return false;
        }
    }
}
