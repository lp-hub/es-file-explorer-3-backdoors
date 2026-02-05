package com.baidu.sapi2.account;

/* loaded from: classes.dex */
public enum RunType {
    ADD_ACCOUNT(0),
    GET_ACCOUNT_BY_TYPE(1),
    SAVE_ACCOUNT(2),
    DELETE_SINGLE_ITEM(3),
    DELETE_BY_TYPE(4),
    CLEAR_ACCOUNT(5);

    private int runType;

    RunType(int i) {
        this.runType = i;
    }

    public int getType() {
        return this.runType;
    }
}
