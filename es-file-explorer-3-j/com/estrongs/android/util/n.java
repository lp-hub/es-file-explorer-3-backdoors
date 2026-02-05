package com.estrongs.android.util;

/* loaded from: classes.dex */
public class n extends Thread {
    protected boolean g;

    public n(String str) {
        super(str);
        this.g = false;
    }

    public void a() {
        if (isAlive()) {
            this.g = true;
            interrupt();
        }
    }
}
