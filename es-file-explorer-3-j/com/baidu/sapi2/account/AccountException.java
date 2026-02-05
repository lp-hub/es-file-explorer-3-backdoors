package com.baidu.sapi2.account;

/* loaded from: classes.dex */
public class AccountException extends Exception {
    private static final long serialVersionUID = 1;
    private String errMsg;
    private int errno;

    public AccountException(int i) {
        this.errno = i;
    }

    public AccountException(int i, String str) {
        super(str);
        this.errno = i;
        this.errMsg = str;
    }

    public AccountException(String str) {
        super(str);
        this.errMsg = str;
    }

    public String getErrMsg() {
        return this.errMsg;
    }

    public int getErrno() {
        return this.errno;
    }

    public void setErrMsg(String str) {
        this.errMsg = str;
    }

    public void setErrno(int i) {
        this.errno = i;
    }
}
