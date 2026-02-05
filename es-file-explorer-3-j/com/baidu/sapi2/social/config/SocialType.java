package com.baidu.sapi2.social.config;

/* loaded from: classes.dex */
public enum SocialType {
    UNKNOWN(0, "未知"),
    RENREN(1, "人人"),
    SINA_WEIBO(2, "新浪微博"),
    TENCENT_WEIBO(4, "腾讯微博"),
    QZONE(15, "QQ空间"),
    QQ(15, "QQ"),
    FEIXIN(16, "飞信");

    private String name;
    private int type;

    SocialType(int i, String str) {
        this.type = i;
        this.name = str;
    }

    public static SocialType getSocialType(int i) {
        switch (i) {
            case 1:
                return RENREN;
            case 2:
                return SINA_WEIBO;
            case 4:
                return TENCENT_WEIBO;
            case 15:
                return QQ;
            case 16:
                return FEIXIN;
            default:
                return UNKNOWN;
        }
    }

    public String getName() {
        return this.name;
    }

    public int getType() {
        return this.type;
    }
}
