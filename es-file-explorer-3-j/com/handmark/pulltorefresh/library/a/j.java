package com.handmark.pulltorefresh.library.a;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.view.View;

@TargetApi(16)
/* loaded from: classes.dex */
class j {
    public static void a(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static void a(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }
}
