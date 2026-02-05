package android.support.v4.c;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;

/* loaded from: classes.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    private static final d f39b;

    /* renamed from: a, reason: collision with root package name */
    private Object f40a;

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            f39b = new c();
        } else {
            f39b = new b();
        }
    }

    public a(Context context) {
        this.f40a = f39b.a(context);
    }

    public void a(int i, int i2) {
        f39b.a(this.f40a, i, i2);
    }

    public boolean a() {
        return f39b.a(this.f40a);
    }

    public boolean a(float f) {
        return f39b.a(this.f40a, f);
    }

    public boolean a(Canvas canvas) {
        return f39b.a(this.f40a, canvas);
    }

    public void b() {
        f39b.b(this.f40a);
    }

    public boolean c() {
        return f39b.c(this.f40a);
    }
}
