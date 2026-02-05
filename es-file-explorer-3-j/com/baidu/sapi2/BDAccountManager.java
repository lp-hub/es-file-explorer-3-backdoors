package com.baidu.sapi2;

import android.app.Activity;
import android.content.Context;
import com.baidu.sapi2.loginshare.Token;
import com.baidu.sapi2.utils.DeviceId;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class BDAccountManager {
    public static final String KEY_DISPLAY_NAME = "displayname";
    public static final String KEY_EMAIL = "email";
    public static final String KEY_PHONE = "phone";
    public static final String KEY_PTOKEN = "ptoken";
    public static final String KEY_RESULTCODE = "sapi_resultcode";
    public static final String KEY_RESULTMSG = "sapi_resultmsg";
    public static final String KEY_STOKEN = "stoken";
    public static final String KEY_UID = "uid";
    public static final String KEY_USERNAME = "username";
    private static BDAccountManager mInstance = null;
    private static Object mSync = new Object();
    private final String BAIDUACCOUNT_TYPE = YiAccountUtils.BAIDUACCOUNT_TYPE;
    private Context mContext;
    private SapiConfig mSapiConfig;

    /* loaded from: classes.dex */
    public interface OnUnLoginListener {
        void onUnLogin();
    }

    public static BDAccountManager getInstance() {
        if (mInstance == null) {
            synchronized (mSync) {
                mInstance = new BDAccountManager();
            }
        }
        return mInstance;
    }

    public String blockingGetAuthToken() {
        return (this.mSapiConfig.isEnableYi() && YiAccountUtils.getInstance(this.mContext).hasYiAccount()) ? YiAccountUtils.getInstance(this.mContext).blockingGetBaiduAuthToken(true) : SapiHelper.getInstance().getToken().mBduss;
    }

    public void getAuthTokenAsync(ITokenCallback iTokenCallback) {
        getAuthTokenAsync(iTokenCallback, null, null, null);
    }

    public void getAuthTokenAsync(ITokenCallback iTokenCallback, Activity activity) {
        getAuthTokenAsync(iTokenCallback, activity, null, null);
    }

    public void getAuthTokenAsync(ITokenCallback iTokenCallback, Activity activity, Class cls) {
        getAuthTokenAsync(iTokenCallback, activity, cls, null);
    }

    public void getAuthTokenAsync(ITokenCallback iTokenCallback, Activity activity, Class cls, OnUnLoginListener onUnLoginListener) {
        getAuthTokenAsync(iTokenCallback, activity, cls, onUnLoginListener, -1);
    }

    public void getAuthTokenAsync(ITokenCallback iTokenCallback, Activity activity, Class cls, OnUnLoginListener onUnLoginListener, int i) {
        if (iTokenCallback == null) {
            throw new IllegalArgumentException();
        }
        if (this.mSapiConfig.isEnableYi() && YiAccountUtils.getInstance(this.mContext).hasYiAccount()) {
            YiAccountUtils.getInstance(this.mContext).getTokenAsync(YiAccountUtils.BAIDUACCOUNT_TYPE, iTokenCallback, activity);
            return;
        }
        if (isLogin()) {
            iTokenCallback.onResult(blockingGetAuthToken());
        } else if (onUnLoginListener == null) {
            SapiHelper.getInstance().getAuthTokenAsync(iTokenCallback, activity, cls, i);
        } else {
            SapiHelper.getInstance().getAuthTokenAsync(iTokenCallback);
            onUnLoginListener.onUnLogin();
        }
    }

    public SapiContext getSapiContext() {
        return SapiContext.getInstance(this.mContext);
    }

    public String getUserData(String str) {
        if (str == null || str.trim().length() == 0) {
            return null;
        }
        return (this.mSapiConfig.isEnableYi() && YiAccountUtils.getInstance(this.mContext).hasYiAccount()) ? YiAccountUtils.getInstance(this.mContext).getUserData(str) : SapiHelper.getInstance().getUserData(str);
    }

    public boolean initial(Context context, SapiConfig sapiConfig) {
        if (context == null || sapiConfig == null) {
            throw new IllegalArgumentException();
        }
        this.mSapiConfig = sapiConfig;
        this.mSapiConfig.setClientId(DeviceId.getDeviceID(context));
        SapiHelper.getInstance().initial(context, this.mSapiConfig);
        this.mContext = context;
        return true;
    }

    public void invalidateAuthToken() {
        if (!this.mSapiConfig.isEnableYi() || !YiAccountUtils.getInstance(this.mContext).hasYiAccount()) {
            SapiHelper.getInstance().invalidateAuthToken();
        } else if (isLogin()) {
            YiAccountUtils.getInstance(this.mContext).invalidateToken(YiAccountUtils.BAIDUACCOUNT_TYPE, blockingGetAuthToken());
        }
    }

    public boolean isLogin() {
        if (this.mSapiConfig.isEnableYi() && YiAccountUtils.getInstance(this.mContext).hasYiAccount()) {
            return YiAccountUtils.getInstance(this.mContext).isLogin();
        }
        SapiHelper.getInstance().getYunInfo();
        return SapiHelper.getInstance().isLogin();
    }

    public void logout() {
        if (this.mSapiConfig.isEnableYi() && YiAccountUtils.getInstance(this.mContext).hasYiAccount()) {
            YiAccountUtils.getInstance(this.mContext).setAccount(YiAccountUtils.BAIDUACCOUNT_TYPE);
            return;
        }
        invalidateAuthToken();
        SapiHelper.getInstance().logout();
        SapiHelper.getInstance().invalidToken();
    }

    public void setFirstInstallLoginShareListener(IFirstInstallLoginShareListener iFirstInstallLoginShareListener) {
        SapiHelper.getInstance().setFirstInstallLoginShareListener(iFirstInstallLoginShareListener);
    }

    public void startFillNameActivity(Activity activity, Class cls, int i) {
        if (this.mSapiConfig.isEnableYi() && YiAccountUtils.getInstance(this.mContext).hasYiAccount()) {
            YiAccountUtils.getInstance(this.mContext).startFillNameActivity(activity, i, false);
        } else {
            SapiHelper.getInstance().startFillNameActivity(activity, cls, i);
        }
    }

    public void syncAccountToken(Token token, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(KEY_UID, str);
            token.mJson = jSONObject.toString();
            SapiHelper.getInstance().setToken(token);
            SapiHelper.getInstance().valid();
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
