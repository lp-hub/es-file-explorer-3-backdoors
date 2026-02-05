package com.estrongs.android.pop.utils;

import android.content.Context;
import android.util.DisplayMetrics;

/* loaded from: classes.dex */
public class ca {
    public static boolean a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return Math.sqrt(Math.pow((((double) displayMetrics.widthPixels) * 1.0d) / ((double) displayMetrics.densityDpi), 2.0d) + Math.pow((((double) displayMetrics.heightPixels) * 1.0d) / ((double) displayMetrics.densityDpi), 2.0d)) >= 6.5d;
    }

    public static boolean b(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 4;
    }
}
