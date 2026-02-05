package com.estrongs.android.pop.utils;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.StrictMode;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class bv {

    /* renamed from: a, reason: collision with root package name */
    private StrictMode.ThreadPolicy f1241a;

    public void a() {
        if (Build.VERSION.SDK_INT > 9) {
            StrictMode.ThreadPolicy build = new StrictMode.ThreadPolicy.Builder().permitAll().build();
            this.f1241a = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(build);
        }
    }

    public void b() {
        if (Build.VERSION.SDK_INT <= 9 || this.f1241a == null) {
            return;
        }
        StrictMode.setThreadPolicy(this.f1241a);
    }
}
