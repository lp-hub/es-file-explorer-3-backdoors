package com.estrongs.android.a;

import android.content.Context;
import android.os.Handler;
import com.estrongs.android.ui.b.de;

/* loaded from: classes.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    private static Handler f252a = new Handler();

    /* renamed from: b, reason: collision with root package name */
    private static de f253b = null;
    private static boolean c = false;
    private static Object d = new Object();

    public static final void a() {
        synchronized (d) {
            if (c) {
                f252a.post(new v());
            }
        }
    }

    public static final void a(Context context, int i, int i2) {
        a(context, context.getString(i), context.getString(i2));
    }

    public static final void a(Context context, String str, String str2) {
        synchronized (d) {
            if (c && f253b != null) {
                try {
                    f253b.dismiss();
                } catch (Exception e) {
                }
            }
            c = true;
            f253b = de.a(context, str, str2, true, true, new u(context));
            f253b.show();
        }
    }
}
