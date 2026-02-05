package com.handmark.pulltorefresh.library.a;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public class i {
    public static void a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            j.a(view, drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    public static void a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            j.a(view, runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }
}
