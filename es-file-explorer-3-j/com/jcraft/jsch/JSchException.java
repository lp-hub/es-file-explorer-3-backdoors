package com.jcraft.jsch;

/* loaded from: classes.dex */
public class JSchException extends Exception {
    private Throwable cause;

    public JSchException() {
        this.cause = null;
    }

    public JSchException(String str) {
        super(str);
        this.cause = null;
    }

    public JSchException(String str, Throwable th) {
        super(str);
        this.cause = null;
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
