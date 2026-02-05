package com.baidu.sapi2;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobstat.BasicStoreTools;
import com.baidu.sapi2.account.AccountAPI;
import com.baidu.sapi2.account.AccountType;
import com.baidu.sapi2.account.DisplayAccount;
import com.baidu.sapi2.callback.LoginCallBack;
import com.baidu.sapi2.http.AsyncHttpClient;
import com.baidu.sapi2.http.AsyncHttpResponseHandler;
import com.baidu.sapi2.http.BinaryHttpResponseHandler;
import com.baidu.sapi2.http.RequestParams;
import com.baidu.sapi2.log.Logger;
import com.baidu.sapi2.loginshare.Token;
import com.baidu.sapi2.model.FillUnameResponse;
import com.baidu.sapi2.model.LoginResponse;
import com.baidu.sapi2.model.PhoneRegResponse;
import com.baidu.sapi2.model.QrPcLoginResponse;
import com.baidu.sapi2.security.EncryptHelper;
import com.baidu.sapi2.security.Md5;
import com.baidu.sapi2.social.config.Domain;
import com.baidu.sapi2.utils.DeviceId;
import com.estrongs.android.pop.spfs.OAuthConstants;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SapiClient {
    private static SapiConfig mSapiConfig = null;
    private static final String version = "5.3";
    String encryptInfo = "";
    private AsyncHttpClient mAsyncHttpClient;
    private Context mContext;
    private ITokenCallback mTokenCallback;

    /* JADX INFO: Access modifiers changed from: private */
    public int getErrorCode(String str) {
        try {
            return new JSONObject(str).getInt("errno");
        } catch (Exception e) {
            Logger.w(e);
            return -100;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getErrorCodeForReg(String str) {
        int errorCode = getErrorCode(str);
        if (errorCode == 110000) {
            return 0;
        }
        return errorCode;
    }

    private String getPassportSig(HashMap<String, String> hashMap, String str) {
        Iterator<String> it = hashMap.keySet().iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        Collections.sort(arrayList);
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            stringBuffer.append(str2);
            stringBuffer.append("=");
            try {
                String str3 = hashMap.get(str2);
                if (!TextUtils.isEmpty(str3)) {
                    stringBuffer.append(URLEncoder.encode(str3, "UTF-8"));
                }
            } catch (UnsupportedEncodingException e) {
                Logger.w(e);
            }
            stringBuffer.append("&");
        }
        stringBuffer.append("sign_key=" + str);
        return Md5.md5s(stringBuffer.toString());
    }

    private String getUaInfo() {
        return "tpl:" + mSapiConfig.getTpl() + ";android_sapi_v" + getVersion();
    }

    public static String getVersion() {
        return version;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAskDynamicPass(int i, SapiCallBack sapiCallBack, String str) {
        try {
            sapiCallBack.onEvent(Integer.parseInt(new JSONObject(str).optString("errno")), null);
        } catch (Exception e) {
            sapiCallBack.onEvent(-100, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDeviceForcedResult(int i, SapiCallBack sapiCallBack, String str) {
        if (str == null) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(i, null);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
                return;
            }
            return;
        }
        LoginResponse loginResponse = new LoginResponse();
        try {
            JSONObject jSONObject = new JSONObject(str);
            loginResponse.mDisplayname = jSONObject.optString(BDAccountManager.KEY_DISPLAY_NAME);
            loginResponse.mUid = jSONObject.optString(BDAccountManager.KEY_UID);
            loginResponse.mBduss = jSONObject.optString("bduss");
            loginResponse.mPtoken = jSONObject.optString(BDAccountManager.KEY_PTOKEN);
            if (!jSONObject.has("error_code") && !jSONObject.has("error_msg")) {
                Token token = new Token();
                token.mDisplayname = loginResponse.mDisplayname;
                token.mBduss = loginResponse.mBduss;
                token.mPtoken = loginResponse.mPtoken;
                token.isSocialAccount = true;
                if (jSONObject.has("device_token")) {
                    token.deviceToken = jSONObject.optString("device_token");
                }
                token.mJson = str;
                mSapiConfig.setShowDevice(true);
                SapiHelper.getInstance().setShowDevice(true);
                SapiHelper.getInstance().setToken(token);
                SapiHelper.getInstance().valid();
            }
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(jSONObject.optInt("error_code"), loginResponse);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(loginResponse.mBduss);
            }
        } catch (Exception e) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(-100, null);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDeviceResult(int i, SapiCallBack sapiCallBack, String str) {
        if (str == null) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(i, null);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
                return;
            }
            return;
        }
        LoginResponse loginResponse = new LoginResponse();
        try {
            JSONObject jSONObject = new JSONObject(str);
            loginResponse.mDisplayname = jSONObject.optString(BDAccountManager.KEY_DISPLAY_NAME);
            loginResponse.mUid = jSONObject.optString(BDAccountManager.KEY_UID);
            loginResponse.mBduss = jSONObject.optString("bduss");
            loginResponse.mPtoken = jSONObject.optString(BDAccountManager.KEY_PTOKEN);
            if (jSONObject.optInt("error_code") == 104) {
                deviceForcedRegister(sapiCallBack, jSONObject.optString("force_reg_token"));
                return;
            }
            if (!jSONObject.has("error_code") && !jSONObject.has("error_msg")) {
                Token token = new Token();
                token.mDisplayname = loginResponse.mDisplayname;
                token.mBduss = loginResponse.mBduss;
                token.mPtoken = loginResponse.mPtoken;
                token.isSocialAccount = true;
                if (jSONObject.has("device_token")) {
                    token.deviceToken = jSONObject.optString("device_token");
                }
                token.mJson = str;
                mSapiConfig.setShowDevice(true);
                SapiHelper.getInstance().setShowDevice(true);
                SapiHelper.getInstance().setToken(token);
                SapiHelper.getInstance().valid();
            }
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(jSONObject.optInt("error_code"), loginResponse);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(loginResponse.mBduss);
            }
        } catch (Exception e) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(-100, null);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDownloadLogin(int i, SapiCallBack sapiCallBack, String str) {
        if (str == null) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(i, null);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
                return;
            }
            return;
        }
        LoginResponse loginResponse = new LoginResponse();
        try {
            JSONObject jSONObject = new JSONObject(str);
            loginResponse.mDisplayname = jSONObject.optString(BDAccountManager.KEY_DISPLAY_NAME);
            loginResponse.mUid = jSONObject.optString(BDAccountManager.KEY_UID);
            loginResponse.mBduss = jSONObject.optString("bduss");
            loginResponse.mPtoken = jSONObject.optString(BDAccountManager.KEY_PTOKEN);
            if (!TextUtils.isEmpty(jSONObject.optString("errno")) && jSONObject.optString("errno").equals("0")) {
                Token token = new Token();
                token.mDisplayname = loginResponse.mDisplayname;
                token.mBduss = loginResponse.mBduss;
                token.mPtoken = loginResponse.mPtoken;
                token.isSocialAccount = true;
                token.mJson = str;
                mSapiConfig.setShowDevice(true);
                SapiHelper.getInstance().setShowDevice(true);
                SapiHelper.getInstance().setToken(token);
                SapiHelper.getInstance().valid();
            }
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(jSONObject.optInt("errno"), loginResponse);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(loginResponse.mBduss);
            }
        } catch (Exception e) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(-100, null);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFastReg(int i, SapiCallBack sapiCallBack, String str) {
        if (str == null) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(i, null);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
                return;
            }
            return;
        }
        LoginResponse loginResponse = new LoginResponse();
        try {
            JSONObject jSONObject = new JSONObject(str);
            loginResponse.mDisplayname = jSONObject.optString(BDAccountManager.KEY_DISPLAY_NAME);
            loginResponse.mUid = jSONObject.optString(BDAccountManager.KEY_UID);
            loginResponse.mBduss = jSONObject.optString("bduss");
            loginResponse.mPtoken = jSONObject.optString(BDAccountManager.KEY_PTOKEN);
            if (!TextUtils.isEmpty(jSONObject.optString("errno")) && jSONObject.optString("errno").equals("0")) {
                Token token = new Token();
                token.mDisplayname = loginResponse.mDisplayname;
                token.mBduss = loginResponse.mBduss;
                token.mPtoken = loginResponse.mPtoken;
                token.isSocialAccount = true;
                token.mJson = str;
                mSapiConfig.setShowDevice(true);
                SapiHelper.getInstance().setShowDevice(true);
                SapiHelper.getInstance().setToken(token);
                SapiHelper.getInstance().valid();
            }
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(jSONObject.optInt("errno"), loginResponse);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(loginResponse.mBduss);
            }
        } catch (Exception e) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(-100, null);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFillUname(int i, SapiCallBack sapiCallBack, String str, String str2, EncryptHelper encryptHelper) {
        if (str == null) {
            sapiCallBack.onEvent(i, null);
            return;
        }
        FillUnameResponse fillUnameResponse = new FillUnameResponse();
        try {
            String optString = new JSONObject(str).optString("userinfo");
            if (!TextUtils.isEmpty(optString)) {
                JSONObject jSONObject = new JSONObject(encryptHelper.decrypt(optString));
                fillUnameResponse.mBduss = jSONObject.optString("bduss");
                fillUnameResponse.mPtoken = jSONObject.optString(BDAccountManager.KEY_PTOKEN);
                fillUnameResponse.mStoken = jSONObject.optString(BDAccountManager.KEY_STOKEN);
                fillUnameResponse.mDisplayname = jSONObject.optString(BDAccountManager.KEY_DISPLAY_NAME);
                fillUnameResponse.mUid = jSONObject.optString(BDAccountManager.KEY_UID);
                fillUnameResponse.mUserName = jSONObject.optString("uname");
                if (i == 0) {
                    Token token = new Token();
                    token.mDisplayname = fillUnameResponse.mDisplayname;
                    token.mBduss = fillUnameResponse.mBduss;
                    token.mPtoken = fillUnameResponse.mPtoken;
                    token.mUsername = fillUnameResponse.mUserName;
                    token.mJson = jSONObject.toString();
                    SapiHelper.getInstance().setToken(token);
                    SapiHelper.getInstance().valid();
                }
            }
            sapiCallBack.onEvent(i, fillUnameResponse);
        } catch (Exception e) {
            sapiCallBack.onEvent(-100, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLogin(int i, boolean z, String str, LoginCallBack loginCallBack, String str2, EncryptHelper encryptHelper) {
        if (str2 == null) {
            if (loginCallBack != null) {
                loginCallBack.onEvent(i, null);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
                return;
            }
            return;
        }
        LoginResponse loginResponse = new LoginResponse();
        try {
            String optString = new JSONObject(str2).optString("userinfo");
            if (!TextUtils.isEmpty(optString)) {
                JSONObject jSONObject = new JSONObject(encryptHelper.decrypt(optString));
                loginResponse.mNeedVerifyCode = jSONObject.optInt("needvcode") == 1;
                if (loginResponse.mNeedVerifyCode) {
                    loginResponse.mVcodeStr = jSONObject.optString("vcodestr");
                }
                loginResponse.mDisplayname = jSONObject.optString(BDAccountManager.KEY_DISPLAY_NAME);
                loginResponse.mUsername = jSONObject.optString("uname");
                loginResponse.mUid = jSONObject.optString(BDAccountManager.KEY_UID);
                loginResponse.mEmail = jSONObject.optString(BDAccountManager.KEY_EMAIL);
                loginResponse.mWeakPass = jSONObject.optInt("weakpass");
                loginResponse.mBduss = jSONObject.optString("bduss");
                loginResponse.mPtoken = jSONObject.optString(BDAccountManager.KEY_PTOKEN);
                loginResponse.mStoken = jSONObject.optString(BDAccountManager.KEY_STOKEN);
                loginResponse.mAuth = jSONObject.optString("auth");
                loginResponse.mLoginProtectType = jSONObject.optInt("sdkres_actype");
                loginResponse.mLoginProtectURL = jSONObject.optString("sdkres_url");
                if (i == 0) {
                    Token token = new Token();
                    token.mDisplayname = loginResponse.mDisplayname;
                    token.mBduss = loginResponse.mBduss;
                    token.mUsername = loginResponse.mUsername;
                    token.mEmail = loginResponse.mEmail;
                    token.mPtoken = loginResponse.mPtoken;
                    token.mJson = jSONObject.toString();
                    SapiHelper.getInstance().setToken(token);
                    SapiHelper.getInstance().valid();
                }
                if (i == 0 || i == 17) {
                    SapiContext.getInstance(this.mContext).setLastLoginType(z ? 1 : 0);
                    if (z) {
                        SapiContext.getInstance(this.mContext).setLastLoginPhone(str);
                    } else {
                        SapiContext.getInstance(this.mContext).setLastLoginUsername(str);
                    }
                }
            }
            if (loginCallBack != null) {
                if ((i == 17 || i == 0) && loginResponse.mLoginProtectType == 1) {
                    loginCallBack.onMustProtectEvent(loginResponse.mLoginProtectType, loginResponse.mLoginProtectURL);
                } else if (loginResponse.mLoginProtectType != 2) {
                    loginCallBack.onEvent(i, loginResponse);
                } else if (loginCallBack.onOptionalProtectEvent(loginResponse.mLoginProtectType, loginResponse.mLoginProtectURL)) {
                    loginCallBack.onEvent(i, loginResponse);
                }
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(loginResponse.mBduss);
            }
        } catch (Exception e) {
            if (loginCallBack != null) {
                loginCallBack.onEvent(-100, null);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePhoneReg(int i, SapiCallBack sapiCallBack, String str, EncryptHelper encryptHelper) {
        if (str == null) {
            sapiCallBack.onEvent(i, null);
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
                return;
            }
            return;
        }
        PhoneRegResponse phoneRegResponse = new PhoneRegResponse();
        try {
            String optString = new JSONObject(str).optString("userinfo");
            if (!TextUtils.isEmpty(optString)) {
                JSONObject jSONObject = new JSONObject(encryptHelper.decrypt(optString));
                phoneRegResponse.mBduss = jSONObject.optString("bduss");
                phoneRegResponse.mPtoken = jSONObject.optString(BDAccountManager.KEY_PTOKEN);
                phoneRegResponse.mStoken = jSONObject.optString(BDAccountManager.KEY_STOKEN);
                phoneRegResponse.mDisplayname = jSONObject.optString(BDAccountManager.KEY_DISPLAY_NAME);
                if (i == 0) {
                    Token token = new Token();
                    token.mDisplayname = phoneRegResponse.mDisplayname;
                    token.mBduss = phoneRegResponse.mBduss;
                    token.mPtoken = phoneRegResponse.mPtoken;
                    token.mJson = jSONObject.toString();
                    SapiHelper.getInstance().setToken(token);
                    SapiHelper.getInstance().valid();
                }
            }
            sapiCallBack.onEvent(i, phoneRegResponse);
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(phoneRegResponse.mBduss);
            }
        } catch (Exception e) {
            sapiCallBack.onEvent(-100, null);
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(phoneRegResponse.mBduss);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleQrAppLogin(int i, SapiCallBack sapiCallBack, String str) {
        if (str == null) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(i, null);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
                return;
            }
            return;
        }
        LoginResponse loginResponse = new LoginResponse();
        try {
            JSONObject jSONObject = new JSONObject(str);
            loginResponse.mDisplayname = jSONObject.optString(BDAccountManager.KEY_DISPLAY_NAME);
            loginResponse.mUid = jSONObject.optString(BDAccountManager.KEY_UID);
            loginResponse.mBduss = jSONObject.optString("bduss");
            loginResponse.mPtoken = jSONObject.optString(BDAccountManager.KEY_PTOKEN);
            if (!TextUtils.isEmpty(jSONObject.optString("errno")) && jSONObject.optString("errno").equals("0")) {
                Token token = new Token();
                token.mDisplayname = loginResponse.mDisplayname;
                token.mBduss = loginResponse.mBduss;
                token.mPtoken = loginResponse.mPtoken;
                token.isSocialAccount = true;
                token.mJson = str;
                mSapiConfig.setShowDevice(true);
                SapiHelper.getInstance().setShowDevice(true);
                SapiHelper.getInstance().setToken(token);
                SapiHelper.getInstance().valid();
            }
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(jSONObject.optInt("errno"), loginResponse);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(loginResponse.mBduss);
            }
        } catch (Exception e) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(-100, null);
            }
            if (this.mTokenCallback != null) {
                this.mTokenCallback.onResult(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleQrPCLogin(int i, SapiCallBack sapiCallBack, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int parseInt = Integer.parseInt(jSONObject.optString("errno"));
            JSONObject optJSONObject = jSONObject.optJSONObject("local");
            if (optJSONObject == null) {
                sapiCallBack.onEvent(parseInt, null);
            } else {
                QrPcLoginResponse qrPcLoginResponse = new QrPcLoginResponse();
                qrPcLoginResponse.mProvince = optJSONObject.optString("provice");
                qrPcLoginResponse.mCity = optJSONObject.optString("city");
                sapiCallBack.onEvent(parseInt, qrPcLoginResponse);
            }
        } catch (Exception e) {
            sapiCallBack.onEvent(-100, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRegDataCheckCallBack(int i, SapiCallBack sapiCallBack, String str) {
        sapiCallBack.onEvent(i, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSmsCode(int i, SapiCallBack sapiCallBack, String str) {
        if (i != 257 && i != 110031) {
            sapiCallBack.onEvent(i, str);
            return;
        }
        try {
            sapiCallBack.onEvent(i, new JSONObject(str).optString("vcodestr"));
        } catch (Exception e) {
            sapiCallBack.onEvent(-100, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleVerifyCodeImgCallBack(int i, SapiCallBack sapiCallBack, byte[] bArr) {
        if (i != 0) {
            sapiCallBack.onEvent(i, null);
        } else if (bArr != null) {
            sapiCallBack.onEvent(i, bArr);
        } else {
            sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean realFillUname(final SapiCallBack sapiCallBack, String str, String str2, final String str3, String str4, String str5, final EncryptHelper encryptHelper) {
        if (mSapiConfig == null) {
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("appid", mSapiConfig.getAppId());
        hashMap.put("tpl", mSapiConfig.getTpl());
        hashMap.put("cert_id", str5);
        hashMap.put("crypttype", mSapiConfig.getCryptType() + "");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("bduss", str);
        jSONObject.put("clientid", mSapiConfig.getClientId());
        if (mSapiConfig.isClientIpValid()) {
            jSONObject.put("clientip", mSapiConfig.getClientIp());
        }
        jSONObject.put(BDAccountManager.KEY_PTOKEN, str2);
        jSONObject.put(BDAccountManager.KEY_USERNAME, str3);
        jSONObject.put("key", encryptHelper.getAESKey());
        hashMap.put("userinfo", encryptHelper.encrypt(str4, jSONObject.toString()));
        hashMap.put("sig", getPassportSig(hashMap, mSapiConfig.getSignkey()));
        this.mAsyncHttpClient.post(mSapiConfig.getFilluname(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.14
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str6) {
                super.onFailure(th, str6);
                SapiClient.this.handleFillUname(SapiClient.this.getErrorCodeForReg(str6), sapiCallBack, str6, str3, encryptHelper);
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str6) {
                super.onSuccess(i, str6);
                SapiClient.this.handleFillUname(SapiClient.this.getErrorCodeForReg(str6), sapiCallBack, str6, str3, encryptHelper);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean realGetSmsCode(final SapiCallBack sapiCallBack, String str, String str2, String str3, String str4, String str5, EncryptHelper encryptHelper) {
        this.mAsyncHttpClient = new AsyncHttpClient();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("appid", mSapiConfig.getAppId());
        hashMap.put("tpl", mSapiConfig.getTpl());
        hashMap.put("crypttype", mSapiConfig.getCryptType() + "");
        hashMap.put("cert_id", str5);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("phonenum", str);
        jSONObject.put("clientid", mSapiConfig.getClientId());
        jSONObject.put("key", encryptHelper.getAESKey());
        if (mSapiConfig.isClientIpValid()) {
            jSONObject.put("clientip", mSapiConfig.getClientIp());
        }
        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str2)) {
            jSONObject.put("verifycode", str3);
            jSONObject.put("vcodestr", str2);
        }
        hashMap.put("userinfo", encryptHelper.encrypt(str4, jSONObject.toString()));
        hashMap.put("sig", getPassportSig(hashMap, mSapiConfig.getSignkey()));
        this.mAsyncHttpClient.post(mSapiConfig.getApplyregcode(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.7
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str6) {
                super.onFailure(th, str6);
                SapiClient.this.handleSmsCode(SapiClient.this.getErrorCodeForReg(str6), sapiCallBack, str6);
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str6) {
                super.onSuccess(i, str6);
                SapiClient.this.handleSmsCode(SapiClient.this.getErrorCodeForReg(str6), sapiCallBack, str6);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean realLogin(final LoginCallBack loginCallBack, String str, String str2, final boolean z, final String str3, final String str4, final String str5, final String str6, final boolean z2, DisplayAccount displayAccount, final EncryptHelper encryptHelper) {
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.setUserAgent(getUaInfo());
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("crypttype", mSapiConfig.getCryptType() + "");
        hashMap.put("tpl", mSapiConfig.getTpl());
        hashMap.put("appid", mSapiConfig.getAppId());
        hashMap.put(BasicStoreTools.DEVICE_CUID, DeviceId.getDeviceID(this.mContext));
        hashMap.put("cert_id", str2);
        if (z2) {
            hashMap.put("isdpass", "1");
        }
        if (displayAccount != null && str4.equals(displayAccount.getDisplayPassword()) && str3.equals(displayAccount.getAccountName())) {
            this.encryptInfo = displayAccount.getEncryptPassword();
            encryptHelper.setAESKey(displayAccount.getKeyChain());
            hashMap.put("userinfo", this.encryptInfo);
        } else {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(BDAccountManager.KEY_USERNAME, str3);
            jSONObject.put("isphone", z ? "1" : "0");
            jSONObject.put("password", str4);
            jSONObject.put("login_type", "3");
            jSONObject.put("key", encryptHelper.getAESKey());
            jSONObject.put("sdk_version", OAuthConstants.VERSION_2);
            jSONObject.put("pinfo", Utils.getBrandName());
            if (!TextUtils.isEmpty(str6) && !TextUtils.isEmpty(str5)) {
                jSONObject.put("verifycode", str6);
                jSONObject.put("vcodestr", str5);
            }
            this.encryptInfo = encryptHelper.encrypt(str, jSONObject.toString());
            hashMap.put("userinfo", this.encryptInfo);
        }
        hashMap.put("sig", getPassportSig(hashMap, mSapiConfig.getSignkey()));
        this.mAsyncHttpClient.post(mSapiConfig.getLogin(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.3
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str7) {
                super.onFailure(th, str7);
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() != null && SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                        SapiClient.this.handleLogin(SapiClient.this.getErrorCode(str7), z, str3, loginCallBack, str7, encryptHelper);
                        return;
                    }
                }
                SapiClient.this.login(loginCallBack, z, str3, str4, str5, str6, z2);
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str7) {
                super.onSuccess(i, str7);
                DisplayAccount displayAccount2 = new DisplayAccount();
                displayAccount2.setAccountName(str3);
                displayAccount2.setAccountType(z ? AccountType.PHONE : AccountType.NORMAL);
                displayAccount2.setDisplayName(str3);
                StringBuffer stringBuffer = new StringBuffer();
                for (int i2 = 0; i2 < str4.length(); i2++) {
                    stringBuffer.append("~");
                }
                displayAccount2.setDisplayPassword(stringBuffer.toString());
                displayAccount2.setEncryptPassword(SapiClient.this.encryptInfo);
                displayAccount2.setLastLoginTime(System.currentTimeMillis());
                displayAccount2.setKeyChain(encryptHelper.getAESKey());
                if (SapiClient.this.getErrorCode(str7) == 4) {
                    displayAccount2.setDisplayPassword("");
                    displayAccount2.setEncryptPassword("");
                    displayAccount2.setKeyChain("");
                    AccountAPI.getInstance(SapiClient.this.mContext).blockAddAccount(displayAccount2);
                    AccountAPI.getInstance(SapiClient.this.mContext).blockSaveAccount();
                } else if (SapiClient.this.getErrorCode(str7) == 0) {
                    AccountAPI.getInstance(SapiClient.this.mContext).blockAddAccount(displayAccount2);
                    AccountAPI.getInstance(SapiClient.this.mContext).blockSaveAccount();
                }
                SapiClient.this.encryptInfo = "";
                SapiClient.this.handleLogin(SapiClient.this.getErrorCode(str7), z, str3, loginCallBack, str7, encryptHelper);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean realLogout(String str, String str2, String str3, EncryptHelper encryptHelper) {
        if (mSapiConfig == null || TextUtils.isEmpty(str)) {
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("appid", mSapiConfig.getAppId());
        hashMap.put("tpl", mSapiConfig.getTpl());
        hashMap.put("cert_id", str3);
        hashMap.put("crypttype", mSapiConfig.getCryptType() + "");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("bduss", str);
        jSONObject.put("clientid", mSapiConfig.getClientId());
        jSONObject.put("key", encryptHelper.getAESKey());
        if (mSapiConfig.isClientIpValid()) {
            jSONObject.put("clientip", mSapiConfig.getClientIp());
        }
        jSONObject.put("bdstoken", Md5.md5s(str + mSapiConfig.getSignkey()));
        hashMap.put("userinfo", encryptHelper.encrypt(str2, jSONObject.toString()));
        hashMap.put("sig", getPassportSig(hashMap, mSapiConfig.getSignkey()));
        this.mAsyncHttpClient.post(mSapiConfig.getLogout(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.12
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str4) {
                super.onFailure(th, str4);
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str4) {
                super.onSuccess(i, str4);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean realPhoneReg(final SapiCallBack sapiCallBack, String str, String str2, String str3, String str4, String str5, String str6, final EncryptHelper encryptHelper) {
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.setUserAgent(getUaInfo());
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("tpl", mSapiConfig.getTpl());
        hashMap.put("appid", mSapiConfig.getAppId());
        hashMap.put("cert_id", str6);
        hashMap.put("crypttype", mSapiConfig.getCryptType() + "");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("phonenum", str);
        jSONObject.put("passwd", str4);
        jSONObject.put("smscode", str2);
        jSONObject.put("key", encryptHelper.getAESKey());
        if (!TextUtils.isEmpty(str3)) {
            jSONObject.put("fields", "{\"username\":\"" + str3 + "\"}");
        }
        jSONObject.put("clientid", mSapiConfig.getClientId());
        if (mSapiConfig.isClientIpValid()) {
            jSONObject.put("clientip", mSapiConfig.getClientIp());
        }
        hashMap.put("userinfo", encryptHelper.encrypt(str5, jSONObject.toString()));
        hashMap.put("sig", getPassportSig(hashMap, mSapiConfig.getSignkey()));
        this.mAsyncHttpClient.post(mSapiConfig.getPhoneregverify(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.5
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str7) {
                super.onFailure(th, str7);
                SapiClient.this.handlePhoneReg(SapiClient.this.getErrorCodeForReg(str7), sapiCallBack, str7, encryptHelper);
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str7) {
                super.onSuccess(i, str7);
                SapiClient.this.handlePhoneReg(SapiClient.this.getErrorCodeForReg(str7), sapiCallBack, str7, encryptHelper);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean realRegDataCheck(final SapiCallBack sapiCallBack, String str, String str2, String str3, String str4, String str5, EncryptHelper encryptHelper) {
        this.mAsyncHttpClient = new AsyncHttpClient();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("appid", mSapiConfig.getAppId());
        hashMap.put("tpl", mSapiConfig.getTpl());
        hashMap.put("crypttype", mSapiConfig.getCryptType() + "");
        hashMap.put("cert_id", str5);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("checkall", "1");
        jSONObject.put("clientid", mSapiConfig.getClientId());
        jSONObject.put("key", encryptHelper.getAESKey());
        if (mSapiConfig.isClientIpValid()) {
            jSONObject.put("clientip", mSapiConfig.getClientIp());
        }
        JSONObject jSONObject2 = new JSONObject();
        if (!TextUtils.isEmpty(str2)) {
            jSONObject2.put(BDAccountManager.KEY_USERNAME, str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            jSONObject2.put("password", str3);
        }
        if (!TextUtils.isEmpty(str)) {
            jSONObject2.put("phonenum", str);
        }
        jSONObject.put("fields", jSONObject2.toString());
        hashMap.put("userinfo", encryptHelper.encrypt(str4, jSONObject.toString()));
        hashMap.put("sig", getPassportSig(hashMap, mSapiConfig.getSignkey()));
        this.mAsyncHttpClient.post(mSapiConfig.getRegdatacheck(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.9
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str6) {
                super.onFailure(th, str6);
                SapiClient.this.handleRegDataCheckCallBack(SapiClient.this.getErrorCodeForReg(str6), sapiCallBack, str6);
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str6) {
                super.onSuccess(i, str6);
                SapiClient.this.handleRegDataCheckCallBack(SapiClient.this.getErrorCodeForReg(str6), sapiCallBack, str6);
            }
        });
        return true;
    }

    private void setSapiConfig(SapiConfig sapiConfig) {
        mSapiConfig = sapiConfig;
    }

    public boolean askDynamicPass(final SapiCallBack sapiCallBack, final String str) {
        if (this.mContext == null) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (sapiCallBack == null) {
                return false;
            }
            sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            if (sapiCallBack == null) {
                return false;
            }
            sapiCallBack.onEvent(ErrorCode.InvalidArg, null);
            return false;
        }
        if (mSapiConfig == null) {
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.setUserAgent(getUaInfo());
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(BDAccountManager.KEY_USERNAME, str);
        hashMap.put("clientid", DeviceId.getDeviceID(this.mContext));
        hashMap.put("clientip", mSapiConfig.getClientIp());
        hashMap.put("tpl", mSapiConfig.getTpl());
        hashMap.put("appid", mSapiConfig.getAppId());
        hashMap.put("sig", getPassportSig(hashMap, mSapiConfig.getSignkey()));
        this.mAsyncHttpClient.post(mSapiConfig.getAskDynamicPwd(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.22
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str2) {
                super.onFailure(th, str2);
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.askDynamicPass(sapiCallBack, str);
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                        SapiClient.this.handleAskDynamicPass(SapiClient.this.getErrorCodeForReg(str2), sapiCallBack, str2);
                    }
                }
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str2) {
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                SapiClient.this.handleAskDynamicPass(i, sapiCallBack, str2);
                super.onSuccess(i, str2);
            }
        });
        return true;
    }

    public void cancelRequest() {
        if (this.mAsyncHttpClient != null) {
            this.mAsyncHttpClient.cancelRequests(this.mContext, true);
        }
    }

    public void destory() {
    }

    public boolean deviceCheck() {
        if (this.mContext == null || SapiHelper.getInstance().isLogin() || !com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext) || mSapiConfig == null) {
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.setUserAgent(getUaInfo());
        HashMap hashMap = new HashMap();
        if (SapiHelper.getInstance().getToken() != null && !TextUtils.isEmpty(SapiHelper.getInstance().getUserData("device_token"))) {
            hashMap.put(BasicStoreTools.DEVICE_ID, Utils.createDeviceID(this.mContext));
            hashMap.put("device_token", SapiHelper.getInstance().getUserData("device_token"));
        }
        RequestParams requestParams = new RequestParams(hashMap);
        mSapiConfig.getDeviceCheck();
        this.mAsyncHttpClient.get(mSapiConfig.getDeviceCheck(), requestParams, new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.15
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str) {
                super.onFailure(th, str);
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                SapiClient.mSapiConfig.setShowDevice(false);
                SapiHelper.getInstance().setShowDevice(false);
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str) {
                if (str != null) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        if (!jSONObject.has("error_code") && !jSONObject.has("error_msg") && jSONObject.optInt("fulfilbind") == 0 && (jSONObject.optInt("reg") == 1 || jSONObject.optInt("login") == 1)) {
                            SapiClient.mSapiConfig.setShowDevice(true);
                            SapiHelper.getInstance().setShowDevice(true);
                        }
                    } catch (JSONException e) {
                        SapiClient.mSapiConfig.setShowDevice(false);
                        SapiHelper.getInstance().setShowDevice(false);
                    }
                }
                super.onSuccess(i, str);
            }
        });
        return true;
    }

    public boolean deviceForcedRegister(final SapiCallBack sapiCallBack, String str) {
        if (this.mContext == null || SapiHelper.getInstance().isLogin() || mSapiConfig == null || TextUtils.isEmpty(mSapiConfig.getDevicePackageSign()) || !mSapiConfig.isShowDevice()) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (sapiCallBack == null) {
                return false;
            }
            sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.setUserAgent(getUaInfo());
        HashMap hashMap = new HashMap();
        String encryptDeviceId = DeviceCrypto.encryptDeviceId(Utils.createDeviceID(this.mContext));
        hashMap.put("ptpl", mSapiConfig.getTpl());
        hashMap.put(BasicStoreTools.DEVICE_ID, encryptDeviceId);
        hashMap.put("device_info", mSapiConfig.getDeviceInfo());
        hashMap.put("force_reg_token", str);
        this.mAsyncHttpClient.post(mSapiConfig.getDeviceForceReg(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.17
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str2) {
                super.onFailure(th, str2);
                SapiClient.mSapiConfig.setShowDevice(false);
                SapiHelper.getInstance().setShowDevice(false);
                SapiClient.this.handleDeviceForcedResult(SapiClient.this.getErrorCodeForReg(str2), sapiCallBack, str2);
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str2) {
                SapiClient.this.handleDeviceForcedResult(i, sapiCallBack, str2);
                super.onSuccess(i, str2);
            }
        });
        return true;
    }

    public boolean deviceLogin(final SapiCallBack sapiCallBack, String str) {
        if (this.mContext == null || SapiHelper.getInstance().isLogin() || mSapiConfig == null || TextUtils.isEmpty(mSapiConfig.getDevicePackageSign()) || !mSapiConfig.isShowDevice()) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (sapiCallBack == null) {
                return false;
            }
            sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.setUserAgent(getUaInfo());
        HashMap hashMap = new HashMap();
        String encryptDeviceId = DeviceCrypto.encryptDeviceId(Utils.createDeviceID(this.mContext));
        hashMap.put("ptpl", mSapiConfig.getTpl());
        hashMap.put(BasicStoreTools.DEVICE_ID, encryptDeviceId);
        hashMap.put("device_token", str);
        hashMap.put("package_sign", mSapiConfig.getDevicePackageSign());
        this.mAsyncHttpClient.post(mSapiConfig.getDeviceLogin(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.18
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str2) {
                super.onFailure(th, str2);
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                SapiClient.mSapiConfig.setShowDevice(false);
                SapiHelper.getInstance().setShowDevice(false);
                SapiClient.this.handleDeviceResult(SapiClient.this.getErrorCodeForReg(str2), sapiCallBack, str2);
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str2) {
                SapiClient.this.handleDeviceResult(i, sapiCallBack, str2);
                super.onSuccess(i, str2);
            }
        });
        return true;
    }

    public boolean deviceRegister(final SapiCallBack sapiCallBack) {
        if (this.mContext == null || SapiHelper.getInstance().isLogin() || mSapiConfig == null || TextUtils.isEmpty(mSapiConfig.getDevicePackageSign()) || !mSapiConfig.isShowDevice()) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (sapiCallBack == null) {
                return false;
            }
            sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.setUserAgent(getUaInfo());
        HashMap hashMap = new HashMap();
        String encryptDeviceId = DeviceCrypto.encryptDeviceId(Utils.createDeviceID(this.mContext));
        hashMap.put("ptpl", mSapiConfig.getTpl());
        hashMap.put(BasicStoreTools.DEVICE_ID, encryptDeviceId);
        hashMap.put("device_info", mSapiConfig.getDeviceInfo());
        hashMap.put("package_sign", mSapiConfig.getDevicePackageSign());
        this.mAsyncHttpClient.post(mSapiConfig.getDeviceReg(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.16
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str) {
                super.onFailure(th, str);
                SapiClient.mSapiConfig.setShowDevice(false);
                SapiHelper.getInstance().setShowDevice(false);
                SapiClient.this.handleDeviceResult(SapiClient.this.getErrorCodeForReg(str), sapiCallBack, str);
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str) {
                SapiClient.this.handleDeviceResult(i, sapiCallBack, str);
                super.onSuccess(i, str);
            }
        });
        return true;
    }

    public boolean downloadLogin(final SapiCallBack sapiCallBack, final String str) {
        if (this.mContext == null) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (sapiCallBack == null) {
                return false;
            }
            sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
            return false;
        }
        if (mSapiConfig == null) {
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.setUserAgent(getUaInfo());
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("loginsign", str);
        hashMap.put("clientid", DeviceId.getDeviceID(this.mContext));
        hashMap.put("clientip", mSapiConfig.getClientIp());
        hashMap.put("tpl", mSapiConfig.getTpl());
        hashMap.put("appid", mSapiConfig.getAppId());
        hashMap.put("sig", getPassportSig(hashMap, mSapiConfig.getSignkey()));
        this.mAsyncHttpClient.post(mSapiConfig.getDownloadLogin(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.23
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str2) {
                super.onFailure(th, str2);
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.downloadLogin(sapiCallBack, str);
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                        SapiClient.this.handleDownloadLogin(SapiClient.this.getErrorCodeForReg(str2), sapiCallBack, str2);
                    }
                }
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str2) {
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                SapiClient.this.handleDownloadLogin(i, sapiCallBack, str2);
                super.onSuccess(i, str2);
            }
        });
        return true;
    }

    public boolean fastReg(final SapiCallBack sapiCallBack, final String str) {
        if (this.mContext == null) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (sapiCallBack == null) {
                return false;
            }
            sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            if (sapiCallBack == null) {
                return false;
            }
            sapiCallBack.onEvent(ErrorCode.InvalidArg, null);
            return false;
        }
        if (mSapiConfig == null) {
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.setUserAgent(getUaInfo());
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("sms", str);
        hashMap.put("clientid", DeviceId.getDeviceID(this.mContext));
        hashMap.put("clientip", mSapiConfig.getClientIp());
        hashMap.put("tpl", mSapiConfig.getTpl());
        hashMap.put("appid", mSapiConfig.getAppId());
        hashMap.put("sig", getPassportSig(hashMap, mSapiConfig.getSignkey()));
        this.mAsyncHttpClient.post(mSapiConfig.getFastReg(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.21
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str2) {
                super.onFailure(th, str2);
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.fastReg(sapiCallBack, str);
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                        SapiClient.this.handleFastReg(SapiClient.this.getErrorCodeForReg(str2), sapiCallBack, str2);
                    }
                }
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str2) {
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                SapiClient.this.handleFastReg(i, sapiCallBack, str2);
                super.onSuccess(i, str2);
            }
        });
        return true;
    }

    public boolean fillUname(final LoginCallBack loginCallBack, final String str, final String str2, final String str3) {
        if (this.mContext == null || mSapiConfig == null) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (loginCallBack != null) {
                loginCallBack.onEvent(ErrorCode.Network_Failed, null);
            }
            return true;
        }
        final EncryptHelper encryptHelper = new EncryptHelper();
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.get(mSapiConfig.getLastCert(), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.13
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str4) {
                super.onFailure(th, str4);
                JSONObject jSONObject = new JSONObject();
                String str5 = "";
                try {
                    jSONObject.put("failure_info", str4);
                    str5 = jSONObject.toString();
                } catch (JSONException e) {
                    Logger.w(e);
                }
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.fillUname(loginCallBack, str, str2, str3);
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                        SapiClient.this.handleFillUname(-100, loginCallBack, str5, str3, encryptHelper);
                    }
                }
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str4) {
                super.onSuccess(i, str4);
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                try {
                    JSONObject jSONObject = new JSONObject(str4);
                    SapiClient.this.realFillUname(loginCallBack, str, str2, str3, jSONObject.optString("cert"), jSONObject.optString("cert_id"), encryptHelper);
                } catch (Exception e) {
                    SapiClient.this.handleFillUname(SapiClient.this.getErrorCodeForReg(str4), loginCallBack, str4, str3, encryptHelper);
                    e.printStackTrace();
                }
            }
        });
        return true;
    }

    public boolean getSmsCode(final SapiCallBack sapiCallBack, final String str, final String str2, final String str3) {
        if (this.mContext == null) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
            }
            return true;
        }
        if (mSapiConfig == null) {
            return false;
        }
        final EncryptHelper encryptHelper = new EncryptHelper();
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.get(mSapiConfig.getLastCert(), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.6
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str4) {
                super.onFailure(th, str4);
                JSONObject jSONObject = new JSONObject();
                String str5 = "";
                try {
                    jSONObject.put("failure_info", str4);
                    str5 = jSONObject.toString();
                } catch (JSONException e) {
                    Logger.w(e);
                }
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.getSmsCode(sapiCallBack, str, str2, str3);
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                        SapiClient.this.handleSmsCode(SapiClient.this.getErrorCodeForReg(str4), sapiCallBack, str5);
                    }
                }
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str4) {
                super.onSuccess(i, str4);
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                try {
                    JSONObject jSONObject = new JSONObject(str4);
                    SapiClient.this.realGetSmsCode(sapiCallBack, str, str2, str3, jSONObject.optString("cert"), jSONObject.optString("cert_id"), encryptHelper);
                } catch (Exception e) {
                    SapiClient.this.handleSmsCode(SapiClient.this.getErrorCodeForReg(str4), sapiCallBack, str4);
                    e.printStackTrace();
                }
            }
        });
        return true;
    }

    public boolean getVerifyImg(final SapiCallBack sapiCallBack, final String str) {
        if (this.mContext == null) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
            }
            return true;
        }
        if (mSapiConfig == null) {
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.get(mSapiConfig.getGenimage() + str, new BinaryHttpResponseHandler(new String[]{"image/png", "image/jpeg", "image/jpg", "image/gif"}) { // from class: com.baidu.sapi2.SapiClient.10
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th) {
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.getVerifyImg(sapiCallBack, str);
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                        SapiClient.this.handleVerifyCodeImgCallBack(-100, sapiCallBack, null);
                    }
                }
            }

            @Override // com.baidu.sapi2.http.BinaryHttpResponseHandler
            public void onSuccess(byte[] bArr) {
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                SapiClient.this.handleVerifyCodeImgCallBack(0, sapiCallBack, bArr);
            }
        });
        return true;
    }

    public boolean getYunInfo() {
        if (this.mContext == null) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            return true;
        }
        if (mSapiConfig == null) {
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.get(mSapiConfig.getYunInfoUrl(), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.1
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str) {
                super.onFailure(th, str);
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.getYunInfo();
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                    }
                }
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str) {
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                if (str != null) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        SapiContext.getInstance(SapiClient.this.mContext).setLoginMode(jSONObject.optInt("loginMode"));
                        SapiContext.getInstance(SapiClient.this.mContext).setTabDefault(jSONObject.optInt("tabDefault"));
                        SapiContext.getInstance(SapiClient.this.mContext).setFirstTabText(jSONObject.optString("firstTabText"));
                        SapiContext.getInstance(SapiClient.this.mContext).setAccountTitle(jSONObject.optString("accountTitle"));
                        SapiContext.getInstance(SapiClient.this.mContext).setAccountPlaceholder(jSONObject.optString("accountPlaceholder"));
                    } catch (Exception e) {
                        Logger.e(e.getMessage());
                    }
                }
                super.onSuccess(i, str);
            }
        });
        return true;
    }

    public boolean initial(Context context, SapiConfig sapiConfig) {
        this.mContext = context;
        setSapiConfig(sapiConfig);
        getYunInfo();
        return true;
    }

    public boolean login(LoginCallBack loginCallBack, boolean z, String str, String str2, String str3, String str4, boolean z2) {
        return login(loginCallBack, z, str, str2, str3, str4, z2, null);
    }

    public boolean login(final LoginCallBack loginCallBack, final boolean z, final String str, final String str2, final String str3, final String str4, final boolean z2, final DisplayAccount displayAccount) {
        if (this.mContext == null) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (loginCallBack != null) {
                loginCallBack.onEvent(ErrorCode.Network_Failed, null);
            }
            return true;
        }
        if (mSapiConfig == null) {
            return false;
        }
        final EncryptHelper encryptHelper = new EncryptHelper();
        this.mAsyncHttpClient = new AsyncHttpClient();
        mSapiConfig.getLastCert();
        this.mAsyncHttpClient.get(mSapiConfig.getLastCert(), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.2
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str5) {
                super.onFailure(th, str5);
                JSONObject jSONObject = new JSONObject();
                String str6 = "";
                try {
                    jSONObject.put("failure_info", str5);
                    str6 = jSONObject.toString();
                } catch (JSONException e) {
                    SapiClient.this.handleLogin(-100, z, str, loginCallBack, "", encryptHelper);
                    Logger.w(e);
                }
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.login(loginCallBack, z, str, str2, str3, str4, z2, displayAccount);
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                        SapiClient.this.handleLogin(-100, z, str, loginCallBack, str6, encryptHelper);
                    }
                }
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str5) {
                super.onSuccess(i, str5);
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    SapiClient.this.realLogin(loginCallBack, jSONObject.optString("cert"), jSONObject.optString("cert_id"), z, str, str2, str3, str4, z2, displayAccount, encryptHelper);
                } catch (Exception e) {
                    SapiClient.this.handleLogin(-100, z, str, loginCallBack, str5, encryptHelper);
                    e.printStackTrace();
                }
            }
        });
        return true;
    }

    public boolean logout(final String str) {
        if (mSapiConfig == null || TextUtils.isEmpty(str)) {
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        final EncryptHelper encryptHelper = new EncryptHelper();
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.get(mSapiConfig.getLastCert(), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.11
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str2) {
                super.onFailure(th, str2);
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.logout(str);
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                    }
                }
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str2) {
                super.onSuccess(i, str2);
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    SapiClient.this.realLogout(str, jSONObject.optString("cert"), jSONObject.optString("cert_id"), encryptHelper);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        return true;
    }

    public boolean phoneReg(final SapiCallBack sapiCallBack, final String str, final String str2, final String str3, final String str4) {
        if (this.mContext == null) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
            }
            return true;
        }
        if (mSapiConfig == null) {
            return false;
        }
        final EncryptHelper encryptHelper = new EncryptHelper();
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.get(mSapiConfig.getLastCert(), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.4
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str5) {
                super.onFailure(th, str5);
                JSONObject jSONObject = new JSONObject();
                String str6 = "";
                try {
                    jSONObject.put("failure_info", str5);
                    str6 = jSONObject.toString();
                } catch (JSONException e) {
                    Logger.w(e);
                }
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.phoneReg(sapiCallBack, str, str2, str3, str4);
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                        SapiClient.this.handlePhoneReg(-100, sapiCallBack, str6, encryptHelper);
                    }
                }
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str5) {
                super.onSuccess(i, str5);
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    SapiClient.this.realPhoneReg(sapiCallBack, str, str2, str3, str4, jSONObject.optString("cert"), jSONObject.optString("cert_id"), encryptHelper);
                } catch (Exception e) {
                    SapiClient.this.handlePhoneReg(-100, sapiCallBack, str5, encryptHelper);
                    e.printStackTrace();
                }
            }
        });
        return true;
    }

    public boolean qrAppLogin(final SapiCallBack sapiCallBack, final String str, final String str2) {
        if (this.mContext == null) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (sapiCallBack == null) {
                return false;
            }
            sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
            return false;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            if (sapiCallBack == null) {
                return false;
            }
            sapiCallBack.onEvent(ErrorCode.InvalidArg, null);
            return false;
        }
        if (mSapiConfig == null) {
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.setUserAgent(getUaInfo());
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("sign", str);
        hashMap.put("cmd", str2);
        hashMap.put("clientid", DeviceId.getDeviceID(this.mContext));
        hashMap.put("clientip", mSapiConfig.getClientIp());
        hashMap.put("tpl", mSapiConfig.getTpl());
        hashMap.put("appid", mSapiConfig.getAppId());
        hashMap.put("sig", getPassportSig(hashMap, mSapiConfig.getSignkey()));
        this.mAsyncHttpClient.post(mSapiConfig.getQRAppLogin(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.20
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str3) {
                SapiClient.this.handleQrAppLogin(SapiClient.this.getErrorCodeForReg(str3), sapiCallBack, str3);
                super.onFailure(th, str3);
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.qrAppLogin(sapiCallBack, str, str2);
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                        SapiClient.this.handleQrAppLogin(SapiClient.this.getErrorCodeForReg(str3), sapiCallBack, str3);
                    }
                }
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str3) {
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                SapiClient.this.handleQrAppLogin(i, sapiCallBack, str3);
                super.onSuccess(i, str3);
            }
        });
        return true;
    }

    public boolean qrPCLogin(final SapiCallBack sapiCallBack, final String str, final String str2, final String str3, final String str4, final String str5) {
        if (this.mContext == null) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
            }
            return false;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(ErrorCode.InvalidArg, null);
            }
            return false;
        }
        if (TextUtils.isEmpty(str3)) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(ErrorCode.BdussIsEmpty, null);
            }
            return false;
        }
        if (mSapiConfig == null) {
            return false;
        }
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.setUserAgent(getUaInfo());
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("sign", str);
        hashMap.put("cmd", str2);
        hashMap.put("bduss", str3);
        hashMap.put(BDAccountManager.KEY_STOKEN, str4);
        hashMap.put(BDAccountManager.KEY_PTOKEN, str5);
        hashMap.put("clientid", DeviceId.getDeviceID(this.mContext));
        hashMap.put("clientip", mSapiConfig.getClientIp());
        hashMap.put("tpl", mSapiConfig.getTpl());
        hashMap.put("appid", mSapiConfig.getAppId());
        hashMap.put("sig", getPassportSig(hashMap, mSapiConfig.getSignkey()));
        this.mAsyncHttpClient.post(mSapiConfig.getQrPCLogin(), new RequestParams(hashMap), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.19
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str6) {
                super.onFailure(th, str6);
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.qrPCLogin(sapiCallBack, str, str2, str3, str4, str5);
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                        SapiClient.this.handleQrPCLogin(SapiClient.this.getErrorCodeForReg(str6), sapiCallBack, str6);
                    }
                }
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str6) {
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                SapiClient.this.handleQrPCLogin(i, sapiCallBack, str6);
                super.onSuccess(i, str6);
            }
        });
        return true;
    }

    public boolean regDataCheck(final SapiCallBack sapiCallBack, final String str, final String str2, final String str3) {
        if (this.mContext == null) {
            return false;
        }
        if (!com.baidu.sapi2.loginshare.Utils.hasActiveNetwork(this.mContext)) {
            if (sapiCallBack != null) {
                sapiCallBack.onEvent(ErrorCode.Network_Failed, null);
            }
            return true;
        }
        if (mSapiConfig == null) {
            return false;
        }
        final EncryptHelper encryptHelper = new EncryptHelper();
        this.mAsyncHttpClient = new AsyncHttpClient();
        this.mAsyncHttpClient.get(mSapiConfig.getLastCert(), new AsyncHttpResponseHandler() { // from class: com.baidu.sapi2.SapiClient.8
            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onFailure(Throwable th, String str4) {
                super.onFailure(th, str4);
                JSONObject jSONObject = new JSONObject();
                String str5 = "";
                try {
                    jSONObject.put("failure_info", str4);
                    str5 = jSONObject.toString();
                } catch (JSONException e) {
                    Logger.w(e);
                }
                if (SapiClient.mSapiConfig.getPassportDomanGetter() != null) {
                    String nextDoman = SapiClient.mSapiConfig.getPassportDomanGetter().getNextDoman();
                    Domain domain = SapiClient.mSapiConfig.getDomain();
                    domain.setURL(nextDoman);
                    SapiClient.mSapiConfig.setDomain(domain);
                    if (SapiClient.mSapiConfig.getPassportDomanGetter() == null || !SapiClient.mSapiConfig.getPassportDomanGetter().isMaxDomanUsed()) {
                        SapiClient.this.regDataCheck(sapiCallBack, str, str2, str3);
                    } else {
                        SapiClient.mSapiConfig.resetPassportDomainGetter();
                        SapiClient.this.handleRegDataCheckCallBack(-100, sapiCallBack, str5);
                    }
                }
            }

            @Override // com.baidu.sapi2.http.AsyncHttpResponseHandler
            public void onSuccess(int i, String str4) {
                super.onSuccess(i, str4);
                SapiClient.mSapiConfig.resetPassportDomainGetter();
                try {
                    JSONObject jSONObject = new JSONObject(str4);
                    SapiClient.this.realRegDataCheck(sapiCallBack, str, str2, str3, jSONObject.optString("cert"), jSONObject.optString("cert_id"), encryptHelper);
                } catch (Exception e) {
                    e.printStackTrace();
                    SapiClient.this.handleRegDataCheckCallBack(-100, sapiCallBack, null);
                }
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTokenCallBack(ITokenCallback iTokenCallback) {
        this.mTokenCallback = iTokenCallback;
    }
}
