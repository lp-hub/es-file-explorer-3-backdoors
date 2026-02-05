package com.baidu.sapi2.social.model;

/* loaded from: classes.dex */
public class FillUProfileResponse {
    private String bduid;
    private String bduss;
    private String displayname;
    private int errorCode;
    private String errorMsg;
    private String ptoken;

    public FillUProfileResponse() {
        this.errorCode = -100;
        this.errorMsg = "";
        this.displayname = "";
        this.bduss = "";
        this.ptoken = "";
        this.bduid = "";
    }

    public FillUProfileResponse(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.errorCode = i;
        this.errorMsg = str;
        this.displayname = str2;
        this.bduss = str3;
        this.ptoken = str4;
        this.bduid = str7;
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

    public void setBduid(String str) {
        this.bduid = str;
    }

    public void setBduss(String str) {
        this.bduss = str;
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
}
