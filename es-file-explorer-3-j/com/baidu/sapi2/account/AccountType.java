package com.baidu.sapi2.account;

/* loaded from: classes.dex */
public enum AccountType {
    DEFAULT(0),
    NORMAL(1),
    PHONE(2),
    SOCIAL(3),
    QR(4),
    DEVICE(5),
    FASTREG(6),
    DYNAMICPWD(7);

    private int accountType;

    AccountType(int i) {
        this.accountType = i;
    }

    public static AccountType getAccountType(int i) {
        switch (i) {
            case 1:
                return NORMAL;
            case 2:
                return PHONE;
            case 3:
                return SOCIAL;
            case 4:
                return QR;
            case 5:
                return DEVICE;
            case 6:
                return FASTREG;
            case 7:
                return DYNAMICPWD;
            default:
                return DEFAULT;
        }
    }

    public int getTypeID() {
        return this.accountType;
    }
}
