package com.baidu.sapi2.social.config;

/* loaded from: classes.dex */
public enum BindType {
    EXPLICIT("explicit", "afterauth", "finishbind"),
    OPTIONAL("optional", "afterauth", "finishbind"),
    IMPLICIT("implicit", "afterauth", "afterauth");

    private String callbackPage;
    private String finishBindPage;
    private String name;

    BindType(String str, String str2, String str3) {
        this.name = "";
        this.name = str;
        this.callbackPage = str2;
        this.finishBindPage = str3;
    }

    public String getCallbackPage() {
        return this.callbackPage;
    }

    public String getFinishBindPage() {
        return this.finishBindPage;
    }

    public String getName() {
        return this.name;
    }
}
