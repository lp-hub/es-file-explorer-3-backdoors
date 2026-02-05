package com.estrongs.android.pop.utils;

/* loaded from: classes.dex */
public class ThreadUtil {

    /* loaded from: classes.dex */
    public class InvalidThreadExcpetion extends RuntimeException {
        public InvalidThreadExcpetion() {
            super("An attempt was made to invoke an operation which can only be executed by the non user-interface thread from user-interface thread");
        }
    }
}
