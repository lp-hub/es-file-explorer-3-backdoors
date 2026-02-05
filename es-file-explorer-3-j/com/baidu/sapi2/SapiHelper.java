package com.baidu.sapi2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.sapi2.account.DisplayAccount;
import com.baidu.sapi2.callback.LoginCallBack;
import com.baidu.sapi2.log.Logger;
import com.baidu.sapi2.loginshare.ILoginShareListener;
import com.baidu.sapi2.loginshare.LoginShareAssistant;
import com.baidu.sapi2.loginshare.LoginShareEvent;
import com.baidu.sapi2.loginshare.Token;
import com.baidu.sapi2.model.LoginResponse;
import com.baidu.sapi2.social.config.SocialType;
import com.baidu.sapi2.social.model.FillUProfileResponse;
import com.baidu.sapi2.social.model.SocialResponse;
import com.baidu.sapi2.social.utils.SocialHelper;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SapiHelper {
    private static SapiHelper mInstance = null;
    private Token mToken;
    private boolean isEnableUserShare = true;
    private SapiConfig sapiConfig = null;
    private LoginShareListener mLoginShareListener = new LoginShareListener();
    private IFirstInstallLoginShareListener mFirstInstallLoginShareListener = null;
    private SapiClient mSapiClient = new SapiClient();
    private LoginShareAssistant mLoginShareAssistant = new LoginShareAssistant();
    private SocialHelper mSocialHelper = new SocialHelper();

    /* loaded from: classes.dex */
    class LoginShareListener implements ILoginShareListener {
        private LoginShareListener() {
        }

        @Override // com.baidu.sapi2.loginshare.ILoginShareListener
        public void onLoginShareEvent(Token token) {
            if (token.mEvent != LoginShareEvent.VALID) {
                if (token.mEvent == LoginShareEvent.INVALID) {
                    SapiHelper.this.invalidToken();
                }
            } else {
                SapiHelper.this.mToken = token;
                if (SapiHelper.this.mFirstInstallLoginShareListener != null) {
                    SapiHelper.this.mFirstInstallLoginShareListener.onSuccess();
                }
            }
        }
    }

    private SapiHelper() {
    }

    private boolean deviceCheck() {
        return this.mSapiClient.deviceCheck();
    }

    public static synchronized SapiHelper getInstance() {
        SapiHelper sapiHelper;
        synchronized (SapiHelper.class) {
            if (mInstance == null) {
                mInstance = new SapiHelper();
            }
            sapiHelper = mInstance;
        }
        return sapiHelper;
    }

    private void setTokenCallBack(ITokenCallback iTokenCallback) {
        this.mSapiClient.setTokenCallBack(iTokenCallback);
    }

    public SocialResponse authResult(String str, SocialType socialType) {
        return this.mSocialHelper.authResult(str, socialType);
    }

    public String blockingGetAuthToken() {
        if (this.mToken == null) {
            return null;
        }
        return this.mToken.mBduss;
    }

    public boolean cancelRequest() {
        if (this.mSapiClient == null) {
            return false;
        }
        this.mSapiClient.cancelRequest();
        return true;
    }

    public void destroy() {
        if (this.mSapiClient != null) {
            this.mSapiClient.destory();
        }
        if (this.mLoginShareAssistant != null) {
            this.mLoginShareAssistant.destroy();
        }
    }

    public boolean deviceLoginAndReg(SapiCallBack sapiCallBack) {
        if (!this.sapiConfig.isShowDevice() || this.mLoginShareAssistant == null) {
            return false;
        }
        String deviceToken = this.mLoginShareAssistant.getDeviceToken();
        return (TextUtils.isEmpty(deviceToken) || "null".equalsIgnoreCase(deviceToken)) ? this.mSapiClient.deviceRegister(sapiCallBack) : this.mSapiClient.deviceLogin(sapiCallBack, deviceToken);
    }

    public void disableUserShare() {
        this.isEnableUserShare = false;
    }

    public boolean downloadLogin(SapiCallBack sapiCallBack, String str) {
        return this.mSapiClient.downloadLogin(sapiCallBack, str);
    }

    public void enableUserShare() {
        this.isEnableUserShare = true;
    }

    public FillUProfileResponse fillUProfileResult(String str) {
        return this.mSocialHelper.fillUProfileResult(str);
    }

    public boolean fillUname(LoginCallBack loginCallBack, String str, String str2, String str3) {
        return this.mSapiClient.fillUname(loginCallBack, str, str2, str3);
    }

    public boolean getAskDynamicPass(SapiCallBack sapiCallBack, String str) {
        return this.mSapiClient.askDynamicPass(sapiCallBack, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getAuthTokenAsync(ITokenCallback iTokenCallback) {
        getAuthTokenAsync(iTokenCallback, null, null);
    }

    void getAuthTokenAsync(ITokenCallback iTokenCallback, Activity activity, Class cls) {
        getAuthTokenAsync(iTokenCallback, activity, cls, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getAuthTokenAsync(ITokenCallback iTokenCallback, Activity activity, Class cls, int i) {
        this.mSapiClient.getYunInfo();
        onLoginShareActivityCreate();
        setTokenCallBack(iTokenCallback);
        if (activity == null || cls == null) {
            return;
        }
        activity.startActivityForResult(new Intent(activity, (Class<?>) cls), i);
    }

    public String getBDUSSCookieString(String str) {
        if (isLogin()) {
            return "BDUSS=" + str + ";domain=baidu.com;path=/";
        }
        return null;
    }

    public boolean getFastReg(SapiCallBack sapiCallBack, String str) {
        return this.mSapiClient.fastReg(sapiCallBack, str);
    }

    public boolean getIsUserShare() {
        return this.isEnableUserShare;
    }

    public String getLoginProtectFinishUrl() {
        return this.mSocialHelper.getLoginProtectFinishUrl();
    }

    public String getPtokenCookieString(String str) {
        if (isLogin()) {
            return "PTOKEN=" + str + ";domain=" + this.sapiConfig.getDomain().getWap().replace(com.baidu.sapi2.loginshare.Utils.http, "") + ";path=/";
        }
        return null;
    }

    public boolean getQrAppLogin(SapiCallBack sapiCallBack, String str, String str2) {
        return this.mSapiClient.qrAppLogin(sapiCallBack, str, str2);
    }

    public boolean getQrPCLogin(SapiCallBack sapiCallBack, String str, String str2, String str3, String str4, String str5) {
        return this.mSapiClient.qrPCLogin(sapiCallBack, str, str2, str3, str4, str5);
    }

    public boolean getSmsCode(SapiCallBack sapiCallBack, String str) {
        return this.mSapiClient.getSmsCode(sapiCallBack, str, null, null);
    }

    public boolean getSmsCode(SapiCallBack sapiCallBack, String str, String str2, String str3) {
        return this.mSapiClient.getSmsCode(sapiCallBack, str, str2, str3);
    }

    public String getSocialAfterAuthUrl() {
        return this.mSocialHelper.getUrlAfterAuth();
    }

    public String getSocialBindUrl(SocialType socialType) {
        return this.mSocialHelper.getUrlBind(socialType);
    }

    public String getSocialBindUrl(SocialType socialType, String str, String str2) {
        return this.mSocialHelper.getUrlBind(socialType, str, str2);
    }

    public String getSocialFillFinishUrl() {
        return this.mSocialHelper.getUrlFillFinish();
    }

    public String getSocialFillStartUrl() {
        return this.mSocialHelper.getUrlFillStart();
    }

    public String getSocialFinishBindUrl() {
        return this.mSocialHelper.getUrlFinishBind();
    }

    public String getSocialSSOFinishUrl() {
        return this.mSocialHelper.getUrlSSOFinish();
    }

    public Token getToken() {
        return this.mToken;
    }

    public String getUserData(String str) {
        if (this.mToken == null) {
            return null;
        }
        if (str.equals(BDAccountManager.KEY_USERNAME)) {
            return this.mToken.mUsername;
        }
        if (str.equals("device_token")) {
            return this.mToken.deviceToken;
        }
        if (str.equals(BDAccountManager.KEY_PTOKEN) && !TextUtils.isEmpty(this.mToken.mPtoken)) {
            return this.mToken.mPtoken;
        }
        if (str.equals(BDAccountManager.KEY_DISPLAY_NAME)) {
            if (!TextUtils.isEmpty(this.mToken.mDisplayname)) {
                return this.mToken.mDisplayname;
            }
            if (!TextUtils.isEmpty(this.mToken.mUsername)) {
                return this.mToken.mUsername;
            }
            if (!TextUtils.isEmpty(this.mToken.mEmail)) {
                return this.mToken.mEmail;
            }
            if (!TextUtils.isEmpty(this.mToken.mPhoneNumber)) {
                return this.mToken.mPhoneNumber;
            }
        }
        if (this.mToken.mJson == null) {
            return "";
        }
        try {
            return new JSONObject(this.mToken.mJson).optString(str);
        } catch (JSONException e) {
            Logger.w(e);
            return "";
        }
    }

    public boolean getVerifyImg(SapiCallBack sapiCallBack, String str) {
        return this.mSapiClient.getVerifyImg(sapiCallBack, str);
    }

    public boolean getYunInfo() {
        return this.mSapiClient.getYunInfo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean initial(Context context, SapiConfig sapiConfig) {
        this.mSapiClient.initial(context, sapiConfig);
        this.mLoginShareAssistant.initial(context, sapiConfig.getTpl(), sapiConfig.getAppId());
        this.mSocialHelper.initial(context, sapiConfig);
        if (!TextUtils.isEmpty(sapiConfig.getDevicePackageSign())) {
            deviceCheck();
        }
        if (this.mLoginShareAssistant.getLastToken() != null && this.mLoginShareAssistant.getLastToken().mEvent == LoginShareEvent.VALID) {
            this.mToken = this.mLoginShareAssistant.getLastToken();
        }
        setLoginShareListener(this.mLoginShareListener);
        this.sapiConfig = sapiConfig;
        return true;
    }

    public void invalid(boolean z) {
        if (this.isEnableUserShare && z) {
            this.mLoginShareAssistant.invalid(this.mToken);
        }
        invalidToken();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void invalidToken() {
        setToken(new Token());
    }

    public void invalidateAuthToken() {
        this.mLoginShareAssistant.invalid(this.mToken);
    }

    public boolean isDebuggable() {
        if (this.sapiConfig != null) {
            return this.sapiConfig.isDebuggable();
        }
        return false;
    }

    public boolean isLogin() {
        return (this.mToken == null || TextUtils.isEmpty(this.mToken.mBduss)) ? false : true;
    }

    public boolean isShare() {
        if (this.sapiConfig != null) {
            return this.sapiConfig.isShare();
        }
        return true;
    }

    public boolean isShowDevice() {
        if (this.sapiConfig != null) {
            return this.sapiConfig.isShowDevice();
        }
        return false;
    }

    public boolean login(LoginCallBack loginCallBack, boolean z, String str, String str2, String str3, String str4, boolean z2) {
        return this.mSapiClient.login(loginCallBack, z, str, str2, str3, str4, z2);
    }

    public boolean login(LoginCallBack loginCallBack, boolean z, String str, String str2, String str3, String str4, boolean z2, DisplayAccount displayAccount) {
        return this.mSapiClient.login(loginCallBack, z, str, str2, str3, str4, z2, displayAccount);
    }

    public boolean login(LoginCallBack loginCallBack, boolean z, String str, String str2, boolean z2) {
        return this.mSapiClient.login(loginCallBack, z, str, str2, null, null, z2);
    }

    public LoginResponse loginProtectResult(String str) {
        return this.mSocialHelper.loginProtectResult(str);
    }

    public boolean logout() {
        if (this.mToken == null) {
            return false;
        }
        this.mSapiClient.getYunInfo();
        return !this.mToken.isSocialAccount ? this.mSapiClient.logout(this.mToken.mBduss) : this.mSapiClient.logout(this.mToken.mBduss) && this.mSapiClient.logout(this.mLoginShareAssistant.getOtherBduss());
    }

    public void onLoginShareActivityCreate() {
        this.mLoginShareAssistant.onActivityCreate();
    }

    public boolean phoneReg(SapiCallBack sapiCallBack, String str, String str2, String str3, String str4) {
        return this.mSapiClient.phoneReg(sapiCallBack, str, str2, str3, str4);
    }

    public boolean regDataCheck(SapiCallBack sapiCallBack, String str, String str2, String str3) {
        return this.mSapiClient.regDataCheck(sapiCallBack, str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFirstInstallLoginShareListener(IFirstInstallLoginShareListener iFirstInstallLoginShareListener) {
        this.mFirstInstallLoginShareListener = iFirstInstallLoginShareListener;
    }

    public void setLoginShareListener(ILoginShareListener iLoginShareListener) {
        if (this.isEnableUserShare) {
            this.mLoginShareAssistant.setLoginShareListener(iLoginShareListener);
        }
    }

    public void setShowDevice(boolean z) {
        this.sapiConfig.setShowDevice(z);
    }

    public void setToken(Token token) {
        this.mToken = token;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startFillNameActivity(Activity activity, Class cls, int i) {
        if (activity == null || cls == null) {
            return;
        }
        activity.startActivityForResult(new Intent(activity, (Class<?>) cls), i);
    }

    public void valid() {
        if (this.isEnableUserShare) {
            this.mLoginShareAssistant.valid(this.mToken);
        }
    }
}
