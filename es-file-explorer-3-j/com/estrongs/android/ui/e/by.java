package com.estrongs.android.ui.e;

import android.view.View;
import android.widget.Button;

/* loaded from: classes.dex */
public class by {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bv f2025a;

    /* renamed from: b, reason: collision with root package name */
    private View f2026b;
    private Button c;
    private View d;

    public by(bv bvVar) {
        this.f2025a = bvVar;
    }

    public void a() {
        this.f2026b.setVisibility(0);
        this.c.setCompoundDrawables(null, null, null, null);
        this.c.setText((CharSequence) null);
    }

    public void b() {
        this.f2026b.setVisibility(0);
    }

    public void c() {
        this.f2026b.setVisibility(8);
    }

    public void d() {
        this.d.setVisibility(0);
    }

    public void e() {
        this.d.setVisibility(8);
    }
}
