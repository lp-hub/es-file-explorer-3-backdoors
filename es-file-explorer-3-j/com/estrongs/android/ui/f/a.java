package com.estrongs.android.ui.f;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.utils.ca;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.a.s;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.widget.TranslateImageView;
import com.estrongs.android.widget.bn;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    f f2197a;

    /* renamed from: b, reason: collision with root package name */
    private Context f2198b;
    private FrameLayout c;
    private View d;
    private al e;
    private View f;
    private View g;
    private TranslateImageView h;
    private int i;
    private int j;
    private boolean k;
    private boolean m;
    private boolean n;
    private s o;
    private boolean l = true;
    private int p = 0;

    public a(Context context, FrameLayout frameLayout, View view) {
        this.f2198b = context;
        this.e = al.a(this.f2198b);
        this.d = view;
        this.c = frameLayout;
        this.m = ca.a(this.f2198b);
        this.n = this.f2198b.getResources().getConfiguration().orientation == 1;
        this.k = false;
        this.f = com.estrongs.android.pop.esclasses.e.a(this.f2198b).inflate(C0000R.layout.new_navigation, (ViewGroup) null);
        this.c.addView(this.f);
        this.f.setVisibility(4);
        this.f.setOnClickListener(new b(this));
        this.h = (TranslateImageView) this.f.findViewById(C0000R.id.cover);
        this.h.setClickable(true);
        this.h.a(new c(this));
        this.g = com.estrongs.android.pop.esclasses.e.a(this.f2198b).inflate(C0000R.layout.navi_page1, (ViewGroup) null);
        f();
        ((FrameLayout) this.f.findViewById(C0000R.id.navi_container)).addView(this.g);
        a(false);
    }

    private void f() {
        this.f2197a = new d(this, this.f2198b, this.g, this.h);
        this.o = this.f2197a.b();
    }

    public void a() {
        if (this.o != null) {
            this.o.notifyDataSetChanged();
        }
    }

    public void a(String str) {
        if (this.o != null) {
            this.o.a(str);
        }
        a();
    }

    public void a(boolean z) {
        this.n = this.f2198b.getResources().getConfiguration().orientation == 1;
        this.i = this.f2198b.getResources().getDisplayMetrics().widthPixels;
        if (this.m || !this.n) {
            this.j = (this.i * 4) / 9;
        } else {
            this.j = (this.i * 4) / 5;
        }
        if (z) {
            d(true);
        }
        View findViewById = this.g.findViewById(C0000R.id.left);
        View findViewById2 = this.g.findViewById(C0000R.id.right);
        if (this.m || !this.n) {
            ((LinearLayout.LayoutParams) findViewById.getLayoutParams()).weight = 4.0f;
            ((LinearLayout.LayoutParams) findViewById2.getLayoutParams()).weight = 5.0f;
        } else {
            ((LinearLayout.LayoutParams) findViewById.getLayoutParams()).weight = 4.0f;
            ((LinearLayout.LayoutParams) findViewById2.getLayoutParams()).weight = 1.0f;
        }
    }

    public void b(String str) {
        if (this.o != null) {
            this.o.b(str);
        }
        a();
    }

    public void b(boolean z) {
        this.k = true;
        this.p = -1;
        this.f.setVisibility(0);
        this.g.setVisibility(0);
        this.h.a(com.estrongs.android.ui.d.a.a(this.d));
        if (z) {
            this.h.a(this.j, 300);
        } else {
            this.h.a(this.j);
            this.h.b(300);
        }
        this.h.a(new e(this));
    }

    public boolean b() {
        return this.k;
    }

    public int c() {
        return this.p;
    }

    public void c(boolean z) {
        ((FileExplorerActivity) this.f2198b).c((View) null, z);
    }

    public View d() {
        return this.f;
    }

    public void d(boolean z) {
        if (this.h != null) {
            this.h.a((bn) null);
            this.h.a(0, z ? 0 : 300);
        }
    }

    public void e() {
        this.f2197a.c();
    }
}
