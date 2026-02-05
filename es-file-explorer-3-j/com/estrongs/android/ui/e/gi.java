package com.estrongs.android.ui.e;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.view.WindowManager;
import android.widget.LinearLayout;
import java.util.List;

/* loaded from: classes.dex */
public abstract class gi {

    /* renamed from: a, reason: collision with root package name */
    private Context f2161a;

    /* renamed from: b, reason: collision with root package name */
    protected WindowManager.LayoutParams f2162b;
    private LinearLayout c;
    private WindowManager d;
    private boolean e;
    private gp g;
    private int h = 5;
    private Runnable j = new gj(this);
    private boolean f = false;
    private Handler i = new Handler();

    public gi(Context context, boolean z) {
        this.f2161a = context;
        this.e = z;
        this.d = (WindowManager) this.f2161a.getSystemService("window");
        b();
    }

    private void e() {
        try {
            this.d.addView(this.c, this.f2162b);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.c.setVisibility(0);
        if (this.g instanceof gu) {
            ((gu) this.g).c();
        }
        this.i.post(new go(this));
    }

    public abstract void a();

    public void a(List<com.estrongs.android.view.a.a> list) {
        this.g.a(list);
        e();
    }

    protected void b() {
        Rect q;
        this.c = new gk(this, this.f2161a);
        this.f2162b = new WindowManager.LayoutParams();
        this.f2162b.width = -1;
        this.f2162b.height = -1;
        this.f2162b.format = -2;
        this.c.setVisibility(8);
        this.c.setBackgroundDrawable(null);
        this.c.setOnClickListener(new gl(this));
        if (!this.e) {
            this.g = new gn(this, this.f2161a, this.h);
            this.c.setGravity(17);
            this.c.addView(this.g.a());
            return;
        }
        this.g = new gm(this, this.f2161a, this.h);
        this.c.setGravity(53);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        if ((this.f2161a instanceof gh) && (q = ((gh) this.f2161a).q()) != null) {
            Rect rect = new Rect();
            ((Activity) this.f2161a).getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            int i = rect.top;
            layoutParams.height = q.height();
            layoutParams.topMargin = q.top - i;
        }
        this.c.addView(this.g.a(), layoutParams);
    }

    public boolean c() {
        return this.f;
    }

    public void d() {
        if (this.c != null) {
            this.c.setVisibility(8);
            try {
                this.d.removeView(this.c);
            } catch (Exception e) {
            }
            this.f = false;
            a();
        }
    }
}
