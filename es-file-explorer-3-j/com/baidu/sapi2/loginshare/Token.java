package com.baidu.sapi2.loginshare;

import com.baidu.sapi2.social.config.SocialType;
import com.baidu.sapi2.social.model.SocialToken;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public class Token {
    public String deviceToken;
    public boolean isSocialAccount;
    public String mBduss;
    public String mDisplayname;
    public String mEmail;
    public String mPhoneNumber;
    public String mPtoken;
    public String mUsername;
    public LoginShareEvent mEvent = LoginShareEvent.INVALID;
    public HashMap<SocialType, SocialToken> socialTokenMap = new LinkedHashMap();
    public HashMap<String, String> mExtras = new HashMap<>();
    public String mJson = "{}";

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("mDisplayname:");
        stringBuffer.append(this.mDisplayname);
        stringBuffer.append("\n");
        stringBuffer.append("mUsername:");
        stringBuffer.append(this.mUsername);
        stringBuffer.append("\n");
        stringBuffer.append("mEmail:");
        stringBuffer.append(this.mEmail);
        stringBuffer.append("\n");
        stringBuffer.append("mPhoneNumber:");
        stringBuffer.append(this.mPhoneNumber);
        stringBuffer.append("\n");
        stringBuffer.append("mBduss:");
        stringBuffer.append(this.mBduss);
        stringBuffer.append("\n");
        stringBuffer.append("mPtoken:");
        stringBuffer.append(this.mPtoken);
        stringBuffer.append("\n");
        stringBuffer.append("mExtras:");
        stringBuffer.append(this.mExtras);
        stringBuffer.append("\n");
        stringBuffer.append("mJson:");
        stringBuffer.append(this.mJson);
        stringBuffer.append("\n");
        return stringBuffer.toString();
    }
}
