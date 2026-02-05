package com.baidu.sapi2.callback;

import android.app.Activity;
import android.content.Intent;
import com.baidu.sapi2.SapiCallBack;
import com.baidu.sapi2.utils.LoginProtectAcitivity;

/* loaded from: classes.dex */
public abstract class LoginCallBack implements SapiCallBack {
    public static final int REQUEST_LOGINPROTECT = 1000;
    protected Activity activity;

    public LoginCallBack(Activity activity) {
        this.activity = activity;
    }

    @Override // com.baidu.sapi2.SapiCallBack
    public abstract void onEvent(int i, Object obj);

    public final void onMustProtectEvent(int i, String str) {
        Intent intent = new Intent(this.activity, (Class<?>) LoginProtectAcitivity.class);
        intent.putExtra("protect_url", str);
        this.activity.startActivityForResult(intent, REQUEST_LOGINPROTECT);
    }

    public boolean onOptionalProtectEvent(int i, String str) {
        return true;
    }
}
