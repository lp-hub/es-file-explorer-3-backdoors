package android.support.v4.view;

import android.os.Build;
import android.view.KeyEvent;

/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    static final q f80a;

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            f80a = new p();
        } else {
            f80a = new o();
        }
    }

    public static boolean a(KeyEvent keyEvent) {
        return f80a.b(keyEvent.getMetaState());
    }

    public static boolean a(KeyEvent keyEvent, int i) {
        return f80a.a(keyEvent.getMetaState(), i);
    }
}
