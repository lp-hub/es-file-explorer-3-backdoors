package com.baidu.sapi2.model;

import com.baidu.sapi2.loginshare.LoginShareEvent;
import com.baidu.sapi2.loginshare.Token;

/* loaded from: classes.dex */
public class LoginResponse {
    public static final int LOGINPROTECT_TYPE_MUST = 1;
    public static final int LOGINPROTECT_TYPE_NO = 0;
    public static final int LOGINPROTECT_TYPE_OPTIONAL = 2;
    public int errorCode = -100;
    public String errorMsg = "";
    public boolean mNeedVerifyCode = false;
    public int mLoginProtectType = 0;
    public String mLoginProtectURL = null;
    public String mVcodeStr = null;
    public String mDisplayname = null;
    public String mUsername = null;
    public String mUid = null;
    public String mEmail = null;
    public int mWeakPass = 0;
    public String mBduss = null;
    public String mPtoken = null;
    public String mStoken = null;
    public String mAuth = null;

    public Token toToken() {
        Token token = new Token();
        token.mEvent = LoginShareEvent.VALID;
        token.mDisplayname = this.mDisplayname;
        token.mBduss = this.mBduss;
        token.mUsername = this.mUsername;
        token.mEmail = this.mEmail;
        token.mPtoken = this.mPtoken;
        return token;
    }
}
