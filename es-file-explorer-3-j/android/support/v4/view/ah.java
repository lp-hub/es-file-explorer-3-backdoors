package android.support.v4.view;

import android.os.Build;
import android.view.VelocityTracker;

/* loaded from: classes.dex */
public class ah {

    /* renamed from: a, reason: collision with root package name */
    static final ak f68a;

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            f68a = new aj();
        } else {
            f68a = new ai();
        }
    }

    public static float a(VelocityTracker velocityTracker, int i) {
        return f68a.a(velocityTracker, i);
    }
}
