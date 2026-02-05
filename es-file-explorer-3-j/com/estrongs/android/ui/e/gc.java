package com.estrongs.android.ui.e;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class gc {

    /* renamed from: a, reason: collision with root package name */
    private Context f2156a;

    /* renamed from: b, reason: collision with root package name */
    protected WindowManager.LayoutParams f2157b;
    View c;
    Animation d;
    private LinearLayout e;
    private WindowManager f;
    private boolean g;
    private boolean h = false;
    private gg i;
    private boolean j;
    private fi k;

    public gc(Context context, boolean z, boolean z2) {
        this.f2156a = context;
        this.g = z;
        this.j = z2;
        this.f = (WindowManager) this.f2156a.getSystemService("window");
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        this.e = new gd(this, this.f2156a);
        this.f2157b = new WindowManager.LayoutParams();
        this.f2157b.width = -1;
        this.f2157b.height = -1;
        this.f2157b.format = -2;
        this.e.setVisibility(8);
        this.e.setBackgroundDrawable(null);
        this.e.setOnClickListener(new ge(this));
    }

    public void a(View view) {
        Rect q;
        this.c = view;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        if (this.g) {
            this.e.setGravity(53);
            if ((this.f2156a instanceof gh) && (q = ((gh) this.f2156a).q()) != null) {
                Rect rect = new Rect();
                ((Activity) this.f2156a).getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
                int i = rect.top;
                if (!this.j) {
                    layoutParams.height = q.height();
                }
                layoutParams.topMargin = q.top - i;
            }
        } else {
            this.e.setGravity(17);
        }
        this.e.removeAllViews();
        this.e.addView(view, layoutParams);
    }

    public void a(fi fiVar) {
        this.k = fiVar;
    }

    public void a(gg ggVar) {
        this.i = ggVar;
    }

    public boolean b() {
        return this.h;
    }

    public void c() {
        try {
            if (this.k != null) {
                this.k.a();
            }
            this.f.addView(this.e, this.f2157b);
        } catch (Exception e) {
        }
        if (this.d == null) {
            this.d = new AlphaAnimation(0.1f, 1.0f);
            this.d.setDuration(250L);
            this.d.setInterpolator(new DecelerateInterpolator());
            this.d.setAnimationListener(new gf(this));
        }
        this.d.start();
        this.c.setAnimation(this.d);
        this.e.setVisibility(0);
    }

    public void d() {
        if (this.e != null) {
            this.e.setVisibility(8);
            try {
                this.f.removeView(this.e);
            } catch (Exception e) {
            }
            this.h = false;
            if (this.i != null) {
                this.i.a();
            }
        }
    }
}
