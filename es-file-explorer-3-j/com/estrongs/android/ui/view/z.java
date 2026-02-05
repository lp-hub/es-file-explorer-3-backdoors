package com.estrongs.android.ui.view;

import android.content.Context;
import android.widget.Toast;
import com.estrongs.android.pop.FexApplication;

/* loaded from: classes.dex */
public class z {

    /* renamed from: a, reason: collision with root package name */
    private static Toast f2658a;

    public static Toast a(Context context, int i, int i2) {
        return a(context, FexApplication.a().getText(i), i2);
    }

    public static synchronized Toast a(Context context, CharSequence charSequence, int i) {
        Toast toast;
        synchronized (z.class) {
            if (f2658a == null) {
                f2658a = Toast.makeText(FexApplication.a(), charSequence, i);
            } else {
                f2658a.setText(charSequence);
                f2658a.setDuration(i);
            }
            toast = f2658a;
        }
        return toast;
    }
}
