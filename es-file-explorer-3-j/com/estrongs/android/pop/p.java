package com.estrongs.android.pop;

import android.os.Build;

/* loaded from: classes.dex */
public class p {
    public static int a() {
        try {
            return Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException e) {
            return 3;
        }
    }
}
