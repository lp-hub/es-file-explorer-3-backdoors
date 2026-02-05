package android.support.v4.view;

import android.os.Build;
import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public class ax {

    /* renamed from: a, reason: collision with root package name */
    static final ba f70a;

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            f70a = new az();
        } else {
            f70a = new ay();
        }
    }

    public static int a(ViewConfiguration viewConfiguration) {
        return f70a.a(viewConfiguration);
    }
}
