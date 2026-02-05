package com.baidu.sapi2.social.config;

/* loaded from: classes.dex */
public enum Domain {
    DOMAIN_ONLINE("http://passport.baidu.com", "http://wappass.baidu.com", "https://openapi.baidu.com"),
    DOMAIN_RD("http://passport.rdtest.baidu.com", "http://passport.rdtest.baidu.com", "http://dbl-chunlei-rd26.vm.baidu.com:8080"),
    DOMAIN_QA("http://passport.qatest.baidu.com", "http://wappass.qatest.baidu.com", "http://db-infbk-online-17.db01.baidu.com:8080"),
    DOMAIN_SAFEBOX("http://10.23.238.184", "http://10.23.238.184", "http://10.23.238.184");

    private String deviceUrl;
    private String url;
    private String wap;

    Domain(String str, String str2, String str3) {
        this.url = str;
        this.wap = str2;
        this.deviceUrl = str3;
    }

    public String getDeviceUrl() {
        return this.deviceUrl;
    }

    public String getURL() {
        return this.url;
    }

    public String getWap() {
        return this.wap;
    }

    public void setURL(String str) {
        this.url = str;
    }
}
