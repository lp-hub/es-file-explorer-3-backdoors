package com.baidu.sapi2.social.utils;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.SapiConfig;
import com.baidu.sapi2.SapiHelper;
import com.baidu.sapi2.log.Logger;
import com.baidu.sapi2.loginshare.Token;
import com.baidu.sapi2.loginshare.Utils;
import com.baidu.sapi2.model.LoginResponse;
import com.baidu.sapi2.social.config.Display;
import com.baidu.sapi2.social.config.SocialType;
import com.baidu.sapi2.social.model.FillUProfileResponse;
import com.baidu.sapi2.social.model.SocialResponse;
import com.baidu.sapi2.social.model.SocialToken;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SocialHelper {
    private Token mToken;
    private SapiConfig sapiConfig = null;

    private String getMatcher(String str, String str2) {
        String str3 = "";
        Matcher matcher = Pattern.compile(str).matcher(str2);
        while (matcher.find()) {
            str3 = matcher.group().toString();
        }
        return str3;
    }

    public SocialResponse authResult(String str, SocialType socialType) {
        SocialResponse parserAfterAuthResult = SocialParser.parserAfterAuthResult(getMatcher("<client>([\\S\\s]*?)</client>", str), this.sapiConfig.getBindType().getCallbackPage());
        if (parserAfterAuthResult != null) {
            if (!TextUtils.isEmpty(parserAfterAuthResult.getBduss()) && !TextUtils.isEmpty(parserAfterAuthResult.getPtoken()) && parserAfterAuthResult.getErrorCode() == -100) {
                parserAfterAuthResult.setErrorCode(0);
            }
            SocialToken socialToken = new SocialToken();
            socialToken.isBinded = parserAfterAuthResult.isBinded();
            socialToken.username = parserAfterAuthResult.getSocial_uname();
            socialToken.sex = parserAfterAuthResult.getSocial_sex();
            socialToken.headURL = parserAfterAuthResult.getSocial_headurl();
            socialToken.type = parserAfterAuthResult.getSocial_type();
            this.mToken = new Token();
            this.mToken.mDisplayname = parserAfterAuthResult.getDisplayname();
            this.mToken.mBduss = parserAfterAuthResult.getBduss();
            this.mToken.mPtoken = parserAfterAuthResult.getPtoken();
            this.mToken.mUsername = parserAfterAuthResult.getBaidu_uname();
            this.mToken.isSocialAccount = true;
            this.mToken.socialTokenMap.put(socialType, socialToken);
            try {
                this.mToken.mJson = new JSONObject().put(BDAccountManager.KEY_UID, parserAfterAuthResult.getBduid()).toString();
            } catch (JSONException e) {
                this.mToken.mJson = "{}";
                Logger.w(e);
            }
        } else {
            this.mToken = null;
        }
        if (this.mToken != null && parserAfterAuthResult.getErrorCode() == 0 && !TextUtils.isEmpty(this.mToken.mBduss) && !TextUtils.isEmpty(this.mToken.mPtoken)) {
            SapiHelper.getInstance().setToken(this.mToken);
            SapiHelper.getInstance().valid();
        }
        return parserAfterAuthResult;
    }

    public FillUProfileResponse fillUProfileResult(String str) {
        FillUProfileResponse parserFillUProfileResult = SocialParser.parserFillUProfileResult(getMatcher("<client>([\\S\\s]*?)</client>", str));
        if (parserFillUProfileResult != null) {
            if (!TextUtils.isEmpty(parserFillUProfileResult.getBduss()) && !TextUtils.isEmpty(parserFillUProfileResult.getPtoken()) && parserFillUProfileResult.getErrorCode() == -100) {
                parserFillUProfileResult.setErrorCode(0);
            }
            this.mToken = new Token();
            this.mToken.mBduss = parserFillUProfileResult.getBduss();
            this.mToken.mPtoken = parserFillUProfileResult.getPtoken();
            this.mToken.mDisplayname = parserFillUProfileResult.getDisplayname();
            this.mToken.isSocialAccount = true;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(BDAccountManager.KEY_UID, parserFillUProfileResult.getBduid());
            } catch (JSONException e) {
                Logger.w(e);
            }
            this.mToken.mJson = jSONObject.toString();
        }
        if (this.mToken != null && parserFillUProfileResult.getErrorCode() == 0 && !TextUtils.isEmpty(this.mToken.mBduss) && !TextUtils.isEmpty(this.mToken.mPtoken)) {
            SapiHelper.getInstance().setToken(this.mToken);
            SapiHelper.getInstance().valid();
        }
        return parserFillUProfileResult;
    }

    public String getLoginProtectFinishUrl() {
        return this.sapiConfig.getLoginProtectFinishUrl();
    }

    public String getUrlAfterAuth() {
        if (this.sapiConfig == null) {
            return null;
        }
        return this.sapiConfig.getDomanAfterAuth();
    }

    public String getUrlBind(SocialType socialType) {
        if (this.sapiConfig == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("tpl", this.sapiConfig.getTpl()));
        arrayList.add(new BasicNameValuePair("display", Display.NATIVE.getName()));
        arrayList.add(new BasicNameValuePair("type", socialType.getType() + ""));
        arrayList.add(new BasicNameValuePair("act", this.sapiConfig.getBindType().getName()));
        return this.sapiConfig.getDomanStart() + "?" + SocialClient.getInstance().createRequestParams(arrayList);
    }

    public String getUrlBind(SocialType socialType, String str, String str2) {
        if (this.sapiConfig == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("tpl", this.sapiConfig.getTpl()));
        arrayList.add(new BasicNameValuePair("display", Display.NATIVE.getName()));
        arrayList.add(new BasicNameValuePair("type", socialType.getType() + ""));
        arrayList.add(new BasicNameValuePair("act", this.sapiConfig.getBindType().getName()));
        arrayList.add(new BasicNameValuePair("access_token", str));
        arrayList.add(new BasicNameValuePair("osuid", str2));
        return this.sapiConfig.getDomainSSOStart() + "?" + SocialClient.getInstance().createRequestParams(arrayList);
    }

    public String getUrlFillFinish() {
        if (this.sapiConfig == null) {
            return null;
        }
        return this.sapiConfig.getDomanFillFinish();
    }

    public String getUrlFillStart() {
        if (this.sapiConfig == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("tpl", this.sapiConfig.getTpl()));
        arrayList.add(new BasicNameValuePair("showtype", BDAccountManager.KEY_PHONE));
        arrayList.add(new BasicNameValuePair("device", Utils.WAP));
        arrayList.add(new BasicNameValuePair("adapter", "apps"));
        return this.sapiConfig.getDomanFillStart() + SocialClient.getInstance().createRequestParams(arrayList);
    }

    public String getUrlFinishBind() {
        if (this.sapiConfig == null) {
            return null;
        }
        return this.sapiConfig.getDomanFinishBind();
    }

    public String getUrlSSOFinish() {
        if (this.sapiConfig == null) {
            return null;
        }
        return this.sapiConfig.getDomainSSOFinish();
    }

    public boolean initial(Context context, SapiConfig sapiConfig) {
        if (context == null || sapiConfig == null) {
            throw new IllegalArgumentException();
        }
        this.sapiConfig = sapiConfig;
        this.mToken = new Token();
        return true;
    }

    public LoginResponse loginProtectResult(String str) {
        LoginResponse parserLoginProtectResult = SocialParser.parserLoginProtectResult(getMatcher("<client>([\\S\\s]*?)</client>", str));
        if (parserLoginProtectResult != null) {
            if (!TextUtils.isEmpty(parserLoginProtectResult.mBduss) && parserLoginProtectResult.errorCode == -100) {
                parserLoginProtectResult.errorCode = 0;
            }
            this.mToken = new Token();
            this.mToken.mBduss = parserLoginProtectResult.mBduss;
            this.mToken.mPtoken = parserLoginProtectResult.mPtoken;
            this.mToken.mUsername = parserLoginProtectResult.mUsername;
            this.mToken.mDisplayname = parserLoginProtectResult.mDisplayname;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(BDAccountManager.KEY_STOKEN, parserLoginProtectResult.mStoken);
                jSONObject.put(BDAccountManager.KEY_UID, parserLoginProtectResult.mUid);
            } catch (JSONException e) {
                Logger.w(e);
            }
            this.mToken.mJson = jSONObject.toString();
            if (this.mToken != null && parserLoginProtectResult.errorCode == 0 && !TextUtils.isEmpty(this.mToken.mBduss) && !TextUtils.isEmpty(this.mToken.mPtoken)) {
                SapiHelper.getInstance().setToken(this.mToken);
                SapiHelper.getInstance().valid();
            }
        }
        return parserLoginProtectResult;
    }
}
