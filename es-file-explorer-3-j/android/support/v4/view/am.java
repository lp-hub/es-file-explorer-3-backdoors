package android.support.v4.view;

import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public class am {

    /* renamed from: a, reason: collision with root package name */
    static final as f69a;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 16 || Build.VERSION.CODENAME.equals("JellyBean")) {
            f69a = new ar();
            return;
        }
        if (i >= 14) {
            f69a = new aq();
            return;
        }
        if (i >= 11) {
            f69a = new ap();
        } else if (i >= 9) {
            f69a = new ao();
        } else {
            f69a = new an();
        }
    }

    public static int a(View view) {
        return f69a.a(view);
    }

    public static void a(View view, a aVar) {
        f69a.a(view, aVar);
    }

    public static boolean a(View view, int i) {
        return f69a.a(view, i);
    }

    public static void b(View view) {
        f69a.b(view);
    }

    public static void b(View view, int i) {
        f69a.b(view, i);
    }

    public static int c(View view) {
        return f69a.c(view);
    }
}
