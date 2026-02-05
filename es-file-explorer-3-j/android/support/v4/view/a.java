package android.support.v4.view;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

/* loaded from: classes.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    private static final d f56b;
    private static final Object c;

    /* renamed from: a, reason: collision with root package name */
    final Object f57a = f56b.a(this);

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            f56b = new e();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f56b = new b();
        } else {
            f56b = new g();
        }
        c = f56b.a();
    }

    public android.support.v4.view.a.g a(View view) {
        return f56b.a(c, view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object a() {
        return this.f57a;
    }

    public void a(View view, int i) {
        f56b.a(c, view, i);
    }

    public void a(View view, android.support.v4.view.a.a aVar) {
        f56b.a(c, view, aVar);
    }

    public void a(View view, AccessibilityEvent accessibilityEvent) {
        f56b.d(c, view, accessibilityEvent);
    }

    public boolean a(View view, int i, Bundle bundle) {
        return f56b.a(c, view, i, bundle);
    }

    public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return f56b.a(c, viewGroup, view, accessibilityEvent);
    }

    public boolean b(View view, AccessibilityEvent accessibilityEvent) {
        return f56b.a(c, view, accessibilityEvent);
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        f56b.c(c, view, accessibilityEvent);
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        f56b.b(c, view, accessibilityEvent);
    }
}
