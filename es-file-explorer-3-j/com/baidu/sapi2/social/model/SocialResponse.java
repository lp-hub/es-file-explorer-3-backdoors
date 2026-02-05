package com.baidu.sapi2.social.model;

import com.baidu.sapi2.social.config.Sex;
import com.baidu.sapi2.social.config.SocialType;

/* loaded from: classes.dex */
public class SocialResponse {
    private String baidu_uname;
    private String bduid;
    private String bduss;
    private String displayname;
    private int errorCode;
    private String errorMsg;
    private boolean isBinded;
    private String ptoken;
    private String social_headurl;
    private Sex social_sex;
    private SocialType social_type;
    private String social_uname;

    public SocialResponse() {
        this.errorCode = -100;
        this.errorMsg = "";
        this.displayname = "";
        this.bduid = "";
        this.ptoken = "";
        this.isBinded = false;
        this.bduss = "";
        this.baidu_uname = "";
        this.social_uname = "";
        this.social_sex = Sex.UNKNOWN;
        this.social_headurl = "";
        this.social_type = SocialType.UNKNOWN;
    }

    public SocialResponse(int i, String str, String str2, String str3, String str4, boolean z, String str5, String str6, String str7, Sex sex, String str8, SocialType socialType) {
        this.errorCode = i;
        this.errorMsg = str;
        this.displayname = str2;
        this.bduid = str3;
        this.ptoken = str4;
        this.isBinded = z;
        this.bduss = str5;
        this.baidu_uname = str6;
        this.social_uname = str7;
        this.social_sex = sex;
        this.social_headurl = str8;
        this.social_type = socialType;
    }

    public String getBaidu_uname() {
        return this.baidu_uname;
    }

    public String getBduid() {
        return this.bduid;
    }

    public String getBduss() {
        return this.bduss;
    }

    public String getDisplayname() {
        return this.displayname;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMsg() {
        return this.errorMsg;
    }

    public String getPtoken() {
        return this.ptoken;
    }

    public String getSocial_headurl() {
        return this.social_headurl;
    }

    public Sex getSocial_sex() {
        return this.social_sex;
    }

    public SocialType getSocial_type() {
        return this.social_type;
    }

    public String getSocial_uname() {
        return this.social_uname;
    }

    public boolean isBinded() {
        return this.isBinded;
    }

    public void setBaidu_uname(String str) {
        this.baidu_uname = str;
    }

    public void setBduid(String str) {
        this.bduid = str;
    }

    public void setBduss(String str) {
        this.bduss = str;
    }

    public void setBinded(boolean z) {
        this.isBinded = z;
    }

    public void setDisplayname(String str) {
        this.displayname = str;
    }

    public void setErrorCode(int i) {
        this.errorCode = i;
    }

    public void setErrorMsg(String str) {
        this.errorMsg = str;
    }

    public void setPtoken(String str) {
        this.ptoken = str;
    }

    public void setSocial_headurl(String str) {
        this.social_headurl = str;
    }

    public void setSocial_sex(Sex sex) {
        this.social_sex = sex;
    }

    public void setSocial_type(SocialType socialType) {
        this.social_type = socialType;
    }

    public void setSocial_uname(String str) {
        this.social_uname = str;
    }
}
