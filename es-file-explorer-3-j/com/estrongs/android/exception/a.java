package com.estrongs.android.exception;

/* loaded from: classes.dex */
public class a {
    public static Throwable a(Throwable th) {
        Throwable th2 = th;
        while ((th2 instanceof AbstractException) && ((AbstractException) th2).getException() != null) {
            th2 = ((AbstractException) th2).getException();
        }
        return th2;
    }
}
