package com.estrongs.android.ui.d;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.m;
import com.estrongs.android.ui.view.IndicatorView;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    private LinearLayout f1927a;

    /* renamed from: b, reason: collision with root package name */
    private LinearLayout f1928b;
    protected IndicatorView c;
    private int d = -1;
    private Context e;

    public b(LinearLayout linearLayout, Context context) {
        this.f1927a = linearLayout;
        this.e = context;
        this.f1928b = (LinearLayout) this.f1927a.findViewById(C0000R.id.container_indicators);
        a();
    }

    protected void a() {
        this.c = new c(this, this.e);
        this.f1928b.addView(this.c, new ViewGroup.LayoutParams(-1, m.J ? a.a(this.e, 26.0f) : a.a(this.e, 16.0f)));
        for (int i = 0; i < b(); i++) {
            this.c.a(e.c(i), i);
        }
        this.d = e.a();
        e(this.d);
    }

    public abstract void a(int i);

    public void a(int i, float f) {
        this.c.a(i, f);
    }

    public void a(int i, int i2) {
        this.c.a(i, i2);
        this.d = i2;
    }

    public void a(LinearLayout linearLayout) {
        this.f1927a = linearLayout;
        this.f1927a.removeAllViews();
        ViewParent parent = this.f1928b.getParent();
        if (parent == null) {
            linearLayout.addView(this.f1928b);
        } else if (parent != linearLayout && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(this.f1928b);
            linearLayout.addView(this.f1928b);
        }
        c(d());
    }

    public void a(d dVar) {
        this.c.a(dVar);
    }

    public void a(d dVar, int i) {
        this.c.a(dVar, i);
    }

    protected int b() {
        return e.c();
    }

    public void b(int i) {
        try {
            boolean z = this.d == i;
            this.d = e.a();
            int i2 = this.d;
            if (i <= this.d) {
                i2++;
            }
            if (z) {
                this.c.a(i, i2, true);
            } else {
                this.c.c(i);
            }
        } catch (Exception e) {
        }
    }

    public void c() {
        this.f1927a.removeView(this.f1928b);
    }

    public void c(int i) {
        if (i != this.d) {
            this.c.a(this.d, i);
        } else {
            this.c.b(i);
        }
        this.d = i;
    }

    public int d() {
        return this.d;
    }

    public void d(int i) {
        e(i);
    }

    public void e(int i) {
        this.c.b(i);
        this.d = i;
    }

    public void f(int i) {
        this.c.a(i, e.c(i));
    }
}
