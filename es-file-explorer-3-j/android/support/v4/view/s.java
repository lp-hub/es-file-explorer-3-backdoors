package android.support.v4.view;

import android.os.Build;
import android.view.MotionEvent;

/* loaded from: classes.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    static final v f81a;

    static {
        if (Build.VERSION.SDK_INT >= 5) {
            f81a = new u();
        } else {
            f81a = new t();
        }
    }

    public static int a(MotionEvent motionEvent) {
        return (motionEvent.getAction() & 65280) >> 8;
    }

    public static int a(MotionEvent motionEvent, int i) {
        return f81a.a(motionEvent, i);
    }

    public static int b(MotionEvent motionEvent, int i) {
        return f81a.b(motionEvent, i);
    }

    public static float c(MotionEvent motionEvent, int i) {
        return f81a.c(motionEvent, i);
    }

    public static float d(MotionEvent motionEvent, int i) {
        return f81a.d(motionEvent, i);
    }
}
