package com.baidu.share.message.token;

/* loaded from: classes.dex */
public class ShareTokenExpiredException extends RuntimeException {
    public ShareTokenExpiredException() {
    }

    public ShareTokenExpiredException(String str) {
        super(str);
    }

    public ShareTokenExpiredException(String str, Throwable th) {
        super(str, th);
    }

    public ShareTokenExpiredException(Throwable th) {
        super(th == null ? null : th.toString(), th);
    }
}
