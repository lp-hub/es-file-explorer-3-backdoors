package com.estrongs.android.ui.e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESScrollView;

/* loaded from: classes.dex */
public class fi {

    /* renamed from: a, reason: collision with root package name */
    boolean f2131a = false;

    /* renamed from: b, reason: collision with root package name */
    private Context f2132b;
    private boolean c;
    private gq d;
    private LinearLayout e;
    private Drawable f;
    private com.estrongs.android.ui.theme.al g;
    private ESScrollView h;
    private LinearLayout i;
    private View j;
    private View k;

    public fi(Context context, boolean z) {
        this.f2132b = context;
        this.c = z;
        this.e = (LinearLayout) com.estrongs.android.pop.esclasses.e.a(this.f2132b).inflate(C0000R.layout.extra_edit_bottom, (ViewGroup) null);
        d();
    }

    private void d() {
        this.g = com.estrongs.android.ui.theme.al.a(this.f2132b);
        this.f = this.g.a(C0000R.drawable.toolbar_edit_more_bg);
        this.d = new fu(this.f2132b, this.c);
        this.h = (ESScrollView) this.e.findViewById(C0000R.id.extra_edit_scroll);
        this.j = this.e.findViewById(C0000R.id.point_top);
        this.k = this.e.findViewById(C0000R.id.point_bottom);
        this.h.b();
        this.h.a(new fj(this));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.i = (LinearLayout) this.e.findViewById(C0000R.id.extra_edit_panel);
        if (this.i != null) {
            this.i.addView(this.d.a(), layoutParams);
        } else {
            this.e.addView(this.d.a(), layoutParams);
        }
    }

    public void a() {
        this.e.setVisibility(0);
        ESScrollView.a(this.h, this.i);
        this.j.setVisibility(4);
        this.k.setVisibility(4);
        this.f2131a = false;
    }

    public void a(Animation animation) {
        if (this.i.getMeasuredHeight() - this.h.getHeight() > 0) {
            this.f2131a = true;
        } else {
            this.f2131a = false;
        }
        if (this.f2131a) {
            this.j.setVisibility(0);
        }
    }

    public gq b() {
        return this.d;
    }

    public View c() {
        return this.e;
    }
}
