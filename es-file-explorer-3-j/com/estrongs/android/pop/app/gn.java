package com.estrongs.android.pop.app;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class gn {

    /* renamed from: a, reason: collision with root package name */
    private static ProgressDialog f848a = null;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f849b = false;
    private static Handler c = new Handler();

    public static final void a() {
        if (f849b) {
            c.post(new go());
        }
    }

    public static final void a(Context context) {
        f849b = true;
        f848a = new ProgressDialog(context);
        f848a.setMessage(context.getText(C0000R.string.progress_loading));
        f848a.setIndeterminate(true);
        f848a.setCancelable(true);
        f848a.show();
    }
}
