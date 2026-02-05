package android.support.v4.app;

import android.os.Build;

/* loaded from: classes.dex */
public class v {

    /* renamed from: a, reason: collision with root package name */
    private static final x f32a;

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            f32a = new z();
        } else {
            f32a = new y();
        }
    }
}
