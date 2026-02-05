package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.Context;

/* loaded from: classes.dex */
public class a {
    public static void a(Activity activity, int i) {
        a(activity, activity.getText(i));
    }

    public static void a(Activity activity, CharSequence charSequence) {
        try {
            activity.runOnUiThread(new b(activity, charSequence));
        } catch (Exception e) {
        }
    }

    public static void a(Activity activity, Runnable runnable) {
        activity.runOnUiThread(runnable);
    }

    public static void a(Context context, int i) {
        a(context, context.getText(i));
    }

    public static void a(Context context, CharSequence charSequence) {
        try {
            com.estrongs.android.ui.view.z.a(context, charSequence, 0).show();
        } catch (Exception e) {
        }
    }
}
