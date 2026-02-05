package com.baidu.sapi2.social.config;

/* loaded from: classes.dex */
public enum Sex {
    UNKNOWN(0, "未知"),
    MALE(1, "男"),
    FEMALE(2, "女");

    private String name;
    private int sexType;

    Sex(int i, String str) {
        this.sexType = i;
        this.name = str;
    }

    public static Sex getSex(int i) {
        switch (i) {
            case 1:
                return MALE;
            case 2:
                return FEMALE;
            default:
                return UNKNOWN;
        }
    }

    public String getName() {
        return this.name;
    }

    public int getSexType() {
        return this.sexType;
    }
}
