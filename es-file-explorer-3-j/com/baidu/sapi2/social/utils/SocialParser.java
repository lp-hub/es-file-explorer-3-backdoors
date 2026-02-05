package com.baidu.sapi2.social.utils;

import android.text.TextUtils;
import android.util.Xml;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.log.Logger;
import com.baidu.sapi2.model.LoginResponse;
import com.baidu.sapi2.social.config.Sex;
import com.baidu.sapi2.social.config.SocialType;
import com.baidu.sapi2.social.model.FillUProfileResponse;
import com.baidu.sapi2.social.model.SocialResponse;
import com.estrongs.android.pop.spfs.OAuthConstants;
import java.io.ByteArrayInputStream;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class SocialParser {
    public static SocialResponse parserAfterAuthResult(String str, String str2) {
        int eventType;
        SocialResponse socialResponse;
        SocialResponse socialResponse2;
        XmlPullParser newPullParser = Xml.newPullParser();
        try {
            newPullParser.setInput(new ByteArrayInputStream(str.getBytes()), "UTF-8");
            socialResponse = null;
        } catch (Exception e) {
            Logger.w(e);
            return null;
        }
        for (eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            switch (eventType) {
                case 2:
                    String name = newPullParser.getName();
                    if (name.equalsIgnoreCase("data")) {
                        if (socialResponse == null) {
                            socialResponse2 = new SocialResponse();
                            break;
                        }
                    } else if (socialResponse != null || !name.equalsIgnoreCase("error_code")) {
                        if (socialResponse != null || !name.equalsIgnoreCase("error_description")) {
                            if (socialResponse != null) {
                                if (name.equalsIgnoreCase("error_code")) {
                                    socialResponse.setErrorCode(Integer.parseInt(newPullParser.nextText()));
                                    socialResponse2 = socialResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("error_description")) {
                                    socialResponse.setErrorMsg(newPullParser.nextText());
                                    socialResponse2 = socialResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("is_binded")) {
                                    socialResponse.setBinded(newPullParser.nextText().equals("1"));
                                    socialResponse2 = socialResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("display_name")) {
                                    socialResponse.setDisplayname(newPullParser.nextText());
                                    socialResponse2 = socialResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("passport_uname")) {
                                    socialResponse.setBaidu_uname(newPullParser.nextText());
                                    socialResponse2 = socialResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("bduid")) {
                                    socialResponse.setBduid(newPullParser.nextText());
                                    socialResponse2 = socialResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("bduss")) {
                                    socialResponse.setBduss(newPullParser.nextText());
                                    socialResponse2 = socialResponse;
                                    break;
                                } else if (name.equalsIgnoreCase(BDAccountManager.KEY_PTOKEN)) {
                                    socialResponse.setPtoken(newPullParser.nextText());
                                    socialResponse2 = socialResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("os_username")) {
                                    socialResponse.setSocial_uname(newPullParser.nextText());
                                    socialResponse2 = socialResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("os_sex")) {
                                    String nextText = newPullParser.nextText();
                                    if (!nextText.equals("0") && !nextText.equals("1") && !nextText.equals(OAuthConstants.VERSION_2)) {
                                        nextText = "0";
                                    }
                                    socialResponse.setSocial_sex(Sex.getSex(Integer.parseInt(nextText)));
                                    socialResponse2 = socialResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("os_headurl")) {
                                    socialResponse.setSocial_headurl(newPullParser.nextText());
                                    socialResponse2 = socialResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("os_type")) {
                                    socialResponse.setSocial_type(SocialType.getSocialType(Integer.parseInt(newPullParser.nextText())));
                                    socialResponse2 = socialResponse;
                                    break;
                                }
                            }
                        } else {
                            SocialResponse socialResponse3 = new SocialResponse();
                            socialResponse3.setErrorMsg(newPullParser.nextText());
                            socialResponse2 = socialResponse3;
                            break;
                        }
                    } else {
                        SocialResponse socialResponse4 = new SocialResponse();
                        socialResponse4.setErrorCode(Integer.parseInt(newPullParser.nextText()));
                        socialResponse2 = socialResponse4;
                        break;
                    }
                    Logger.w(e);
                    return null;
                case 3:
                    socialResponse2 = socialResponse;
                    break;
            }
            socialResponse2 = socialResponse;
            socialResponse = socialResponse2;
        }
        return socialResponse;
    }

    public static FillUProfileResponse parserFillUProfileResult(String str) {
        int eventType;
        FillUProfileResponse fillUProfileResponse;
        FillUProfileResponse fillUProfileResponse2;
        XmlPullParser newPullParser = Xml.newPullParser();
        try {
            newPullParser.setInput(new ByteArrayInputStream(str.getBytes()), "UTF-8");
            fillUProfileResponse = null;
        } catch (Exception e) {
            Logger.w(e);
            return null;
        }
        for (eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            switch (eventType) {
                case 2:
                    String name = newPullParser.getName();
                    if (name.equalsIgnoreCase("data")) {
                        if (fillUProfileResponse == null) {
                            fillUProfileResponse2 = new FillUProfileResponse();
                            break;
                        }
                    } else if (fillUProfileResponse != null || !name.equalsIgnoreCase("error_code")) {
                        if (fillUProfileResponse != null || !name.equalsIgnoreCase("error_description")) {
                            if (fillUProfileResponse != null) {
                                if (name.equalsIgnoreCase("errno")) {
                                    fillUProfileResponse.setErrorCode(Integer.parseInt(newPullParser.nextText()));
                                    fillUProfileResponse2 = fillUProfileResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("errmsg")) {
                                    fillUProfileResponse.setErrorMsg(newPullParser.nextText());
                                    fillUProfileResponse2 = fillUProfileResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("bduss")) {
                                    fillUProfileResponse.setBduss(newPullParser.nextText());
                                    fillUProfileResponse2 = fillUProfileResponse;
                                    break;
                                } else if (name.equalsIgnoreCase(BDAccountManager.KEY_PTOKEN)) {
                                    fillUProfileResponse.setPtoken(newPullParser.nextText());
                                    fillUProfileResponse2 = fillUProfileResponse;
                                    break;
                                } else if (name.equalsIgnoreCase(BDAccountManager.KEY_DISPLAY_NAME)) {
                                    fillUProfileResponse.setDisplayname(newPullParser.nextText());
                                    fillUProfileResponse2 = fillUProfileResponse;
                                    break;
                                } else if (name.equalsIgnoreCase(BDAccountManager.KEY_UID)) {
                                    fillUProfileResponse.setBduid(newPullParser.nextText());
                                    fillUProfileResponse2 = fillUProfileResponse;
                                    break;
                                }
                            }
                        } else {
                            FillUProfileResponse fillUProfileResponse3 = new FillUProfileResponse();
                            fillUProfileResponse3.setErrorMsg(newPullParser.nextText());
                            fillUProfileResponse2 = fillUProfileResponse3;
                            break;
                        }
                    } else {
                        FillUProfileResponse fillUProfileResponse4 = new FillUProfileResponse();
                        fillUProfileResponse4.setErrorCode(Integer.parseInt(newPullParser.nextText()));
                        fillUProfileResponse2 = fillUProfileResponse4;
                        break;
                    }
                    Logger.w(e);
                    return null;
                case 3:
                    fillUProfileResponse2 = fillUProfileResponse;
                    break;
            }
            fillUProfileResponse2 = fillUProfileResponse;
            fillUProfileResponse = fillUProfileResponse2;
        }
        return fillUProfileResponse;
    }

    public static LoginResponse parserLoginProtectResult(String str) {
        int eventType;
        LoginResponse loginResponse;
        LoginResponse loginResponse2;
        XmlPullParser newPullParser = Xml.newPullParser();
        try {
            newPullParser.setInput(new ByteArrayInputStream(str.getBytes()), "UTF-8");
            loginResponse = null;
        } catch (Exception e) {
            Logger.w(e);
            return null;
        }
        for (eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            switch (eventType) {
                case 2:
                    String name = newPullParser.getName();
                    if (name.equalsIgnoreCase("data")) {
                        if (loginResponse == null) {
                            loginResponse2 = new LoginResponse();
                            break;
                        }
                    } else if (loginResponse != null || !name.equalsIgnoreCase("error_code")) {
                        if (loginResponse != null || !name.equalsIgnoreCase("error_description")) {
                            if (loginResponse != null) {
                                if (name.equalsIgnoreCase("errno")) {
                                    String nextText = newPullParser.nextText();
                                    if (TextUtils.isEmpty(nextText)) {
                                        loginResponse.errorCode = 0;
                                    } else {
                                        loginResponse.errorCode = Integer.parseInt(nextText);
                                    }
                                    loginResponse2 = loginResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("errmsg")) {
                                    loginResponse.errorMsg = newPullParser.nextText();
                                    loginResponse2 = loginResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("bduss")) {
                                    loginResponse.mBduss = newPullParser.nextText();
                                    loginResponse2 = loginResponse;
                                    break;
                                } else if (name.equalsIgnoreCase(BDAccountManager.KEY_PTOKEN)) {
                                    loginResponse.mPtoken = newPullParser.nextText();
                                    loginResponse2 = loginResponse;
                                    break;
                                } else if (name.equalsIgnoreCase(BDAccountManager.KEY_STOKEN)) {
                                    loginResponse.mStoken = newPullParser.nextText();
                                    loginResponse2 = loginResponse;
                                    break;
                                } else if (name.equalsIgnoreCase("uname")) {
                                    loginResponse.mUsername = newPullParser.nextText();
                                    loginResponse2 = loginResponse;
                                    break;
                                } else if (name.equalsIgnoreCase(BDAccountManager.KEY_DISPLAY_NAME)) {
                                    loginResponse.mDisplayname = newPullParser.nextText();
                                    loginResponse2 = loginResponse;
                                    break;
                                } else if (name.equalsIgnoreCase(BDAccountManager.KEY_UID)) {
                                    loginResponse.mUid = newPullParser.nextText();
                                    loginResponse2 = loginResponse;
                                    break;
                                }
                            }
                        } else {
                            LoginResponse loginResponse3 = new LoginResponse();
                            loginResponse3.errorMsg = newPullParser.nextText();
                            loginResponse2 = loginResponse3;
                            break;
                        }
                    } else {
                        LoginResponse loginResponse4 = new LoginResponse();
                        loginResponse4.errorCode = Integer.parseInt(newPullParser.nextText());
                        loginResponse2 = loginResponse4;
                        break;
                    }
                    Logger.w(e);
                    return null;
                case 3:
                    loginResponse2 = loginResponse;
                    break;
            }
            loginResponse2 = loginResponse;
            loginResponse = loginResponse2;
        }
        return loginResponse;
    }
}
