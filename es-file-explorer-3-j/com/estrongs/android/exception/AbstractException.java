package com.estrongs.android.exception;

import java.io.PrintStream;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public abstract class AbstractException extends Exception {
    private static final long serialVersionUID = 1;
    private Throwable _exception;
    private String _message;

    public AbstractException() {
    }

    public AbstractException(String str) {
        super(str);
    }

    public AbstractException(String str, Throwable th) {
        this._message = str;
        this._exception = th;
    }

    public AbstractException(Throwable th) {
        this._exception = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this._exception != null ? this._exception : super.getCause();
    }

    public Throwable getException() {
        return this._exception;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this._message != null ? this._message : this._exception != null ? this._exception.getMessage() : super.getMessage();
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        synchronized (printStream) {
            if (this._exception != null) {
                printStream.println(getClass().toString() + ":" + this._message);
                this._exception.printStackTrace(printStream);
            } else {
                super.printStackTrace(printStream);
            }
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        synchronized (printWriter) {
            if (this._exception != null) {
                printWriter.println(getClass().toString() + ":" + this._message);
                this._exception.printStackTrace(printWriter);
            } else {
                super.printStackTrace(printWriter);
            }
        }
    }
}
