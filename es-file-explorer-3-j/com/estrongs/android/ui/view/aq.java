package com.estrongs.android.ui.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class aq {

    /* renamed from: a, reason: collision with root package name */
    private WindowManager f2613a;

    /* renamed from: b, reason: collision with root package name */
    private WindowManager.LayoutParams f2614b;
    private View c;
    private LinearLayout d;
    private View e;
    private View f;
    private boolean g;

    public aq(Context context, boolean z, boolean z2) {
        this.f2613a = ((Activity) context).getWindowManager();
        this.d = new ar(this, context);
        this.c = com.estrongs.android.pop.esclasses.e.a(context).inflate((z || z2) ? C0000R.layout.guideline : C0000R.layout.guideline_land, (ViewGroup) null);
        if (z2) {
            View findViewById = this.c.findViewById(C0000R.id.left_view);
            if (findViewById != null) {
                findViewById.setVisibility(0);
            }
            View findViewById2 = this.c.findViewById(C0000R.id.left_view_2);
            if (findViewById2 != null) {
                findViewById2.setVisibility(0);
            }
        }
        this.c.setOnClickListener(new as(this));
        this.c.setBackgroundColor(Color.argb(128, 0, 0, 0));
        this.d.addView(this.c, new LinearLayout.LayoutParams(-1, -1));
        this.f2614b = new WindowManager.LayoutParams();
        this.f2614b.width = -1;
        this.f2614b.height = -1;
        this.f2614b.format = -2;
        this.e = this.c.findViewById(C0000R.id.second_view);
        if (this.e != null) {
            this.e.setVisibility(4);
        }
        this.f = this.c.findViewById(C0000R.id.third_view);
        if (this.f != null) {
            this.f.setVisibility(4);
        }
    }

    public boolean a() {
        return this.g;
    }

    public void b() {
        if (this.e != null && this.e.getVisibility() != 0) {
            this.e.setVisibility(0);
        } else if (this.f == null || this.f.getVisibility() == 0) {
            d();
        } else {
            this.f.setVisibility(0);
        }
    }

    public void c() {
        try {
            this.f2613a.addView(this.d, this.f2614b);
            this.g = true;
        } catch (Exception e) {
        }
    }

    public void d() {
        try {
            this.f2613a.removeView(this.d);
            this.g = false;
        } catch (Exception e) {
        }
    }
}
