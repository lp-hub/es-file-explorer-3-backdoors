package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.RelativeLayout;
import com.baidu.sapi2.callback.LoginCallBack;

/* loaded from: classes.dex */
public class ap {
    private static int G = -1;
    private as A;
    private boolean B;
    private int C;
    private int D;
    private ScaleAnimation E;
    private ScaleAnimation F;
    private boolean H;

    /* renamed from: a, reason: collision with root package name */
    WindowManager.LayoutParams f2894a;

    /* renamed from: b, reason: collision with root package name */
    at f2895b;
    RelativeLayout.LayoutParams c;
    protected Rect d;
    private Context e;
    private WindowManager f;
    private boolean g;
    private View h;
    private View i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private View.OnTouchListener o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private Rect x;
    private Drawable y;
    private int z;

    protected ap(View view, int i, int i2, boolean z) {
        this.k = true;
        this.l = false;
        this.m = true;
        this.z = LoginCallBack.REQUEST_LOGINPROTECT;
        this.B = false;
        this.C = 0;
        this.H = false;
        if (view != null) {
            this.e = view.getContext();
            this.f = (WindowManager) this.e.getSystemService("window");
        }
        a(view);
        b(i);
        a(i2);
        a(z);
        if (G == -1) {
            G = com.estrongs.android.ui.d.a.a(this.e, 48.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ap(View view, Rect rect) {
        this(view, 0, 0, false);
        this.d = rect;
    }

    private WindowManager.LayoutParams a(IBinder iBinder) {
        this.v = this.f.getDefaultDisplay().getHeight();
        this.w = this.f.getDefaultDisplay().getWidth();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(this.w, this.v, 0, 0, this.z, 1024, 0);
        layoutParams.gravity = 51;
        layoutParams.width = this.q;
        this.r = 0;
        layoutParams.height = this.t;
        this.u = 0;
        if (this.y != null) {
            layoutParams.format = this.y.getOpacity();
        } else {
            layoutParams.format = -3;
        }
        layoutParams.flags = d(layoutParams.flags);
        layoutParams.type = this.z;
        layoutParams.token = iBinder;
        layoutParams.softInputMode = 32;
        layoutParams.setTitle("PopupWindow:" + Integer.toHexString(hashCode()));
        return layoutParams;
    }

    private void a(WindowManager.LayoutParams layoutParams) {
        if (this.h == null || this.e == null || this.f == null) {
            throw new IllegalStateException("You must specify a valid content view by calling setContentView() before attempting to show the popup.");
        }
        if (this.i == null) {
            this.f2895b = new at(this, this.e);
            if (k() == 1 || k() == 0) {
                this.c = new RelativeLayout.LayoutParams(-1, -2);
            } else {
                this.c = new RelativeLayout.LayoutParams(-1, -1);
            }
            a(this.c);
            this.f2895b.addView(this.h, this.c);
            this.i = this.f2895b;
        }
        this.h.setVisibility(0);
    }

    private void a(RelativeLayout.LayoutParams layoutParams) {
        if (this.D == 0) {
            layoutParams.addRule(10, -1);
            layoutParams.leftMargin = 0;
            layoutParams.topMargin = this.x.bottom;
            if (this.d == null) {
                layoutParams.bottomMargin = G;
                return;
            }
            layoutParams.leftMargin = this.d.left;
            layoutParams.rightMargin = this.w - this.d.right;
            layoutParams.bottomMargin = this.v - this.d.bottom;
            return;
        }
        if (this.D == 1) {
            layoutParams.addRule(12, -1);
            layoutParams.bottomMargin = this.t - this.x.top;
            if (this.d == null) {
                this.f2895b.setPadding(0, G, 0, 0);
                return;
            }
            layoutParams.leftMargin = this.d.left;
            layoutParams.rightMargin = this.w - this.d.right;
            this.f2895b.setPadding(0, this.d.top, 0, 0);
            return;
        }
        if ((this.D == 2 || this.D == 3) && this.d != null) {
            int a2 = com.estrongs.android.ui.d.a.a(this.e, 320.0f);
            if (this.d.width() > a2) {
                layoutParams.leftMargin = (this.w - a2) / 2;
                layoutParams.rightMargin = (this.w - a2) / 2;
            } else {
                layoutParams.leftMargin = this.d.left;
                layoutParams.rightMargin = this.w - this.d.right;
            }
            layoutParams.topMargin = this.d.top;
        }
    }

    private void b(WindowManager.LayoutParams layoutParams) {
        layoutParams.packageName = this.e.getPackageName();
        this.f.addView(this.i, layoutParams);
        this.g = true;
    }

    private int d(int i) {
        int i2 = (-426521) & i;
        if (this.B) {
            i2 |= 32768;
        }
        if (!this.j) {
            i2 |= 8;
        }
        if (!this.k) {
            i2 |= 16;
        }
        if (this.l) {
            i2 |= 262144;
        }
        if (!this.m) {
            i2 |= 512;
        }
        return this.n ? i2 | 256 : i2;
    }

    private int d(boolean z) {
        float f = 0.0f;
        float f2 = 0.0f;
        if (this.D == 0) {
            f = this.x.centerX() / this.q;
            f2 = 0.0f;
        } else if (this.D == 1) {
            f = this.x.centerX() / this.q;
            f2 = 1.0f;
        } else if (this.D == 2) {
            f = 0.0f;
            f2 = (this.x.centerY() - this.d.top) / (this.d.bottom - this.d.top);
        } else if (this.D == 3) {
            f = 1.0f;
            f2 = (this.x.centerY() - this.d.top) / (this.d.bottom - this.d.top);
        }
        if (this.E == null || z) {
            this.E = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 1, f, 1, f2);
            this.E.setDuration(800L);
            this.E.setInterpolator(new OvershootInterpolator(1.1f));
            this.E.setAnimationListener(new aq(this));
        }
        if (this.F == null || z) {
            this.F = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 1, f, 1, f2);
            this.F.setDuration(400L);
            this.F.setInterpolator(new AccelerateInterpolator());
            this.F.setAnimationListener(new ar(this));
        }
        return this.C;
    }

    public void a(int i) {
        this.t = i;
    }

    public void a(int i, int i2) {
        this.p = i;
        this.s = i2;
    }

    public void a(Drawable drawable) {
        this.y = drawable;
    }

    public void a(View view) {
        if (e()) {
            return;
        }
        this.h = view;
        if (this.e == null) {
            this.e = this.h.getContext();
        }
        if (this.f == null) {
            this.f = (WindowManager) this.e.getSystemService("window");
        }
    }

    public void a(View view, int i, int i2, int i3) {
        if (e() || this.h == null || this.H) {
            return;
        }
        this.g = true;
        this.f2894a = a(view.getWindowToken());
        d(false);
        b(view);
        a(this.f2894a);
        this.f2894a.gravity = i;
        this.f2894a.x = i2;
        this.f2894a.y = i3;
        b(this.f2894a);
    }

    public void a(boolean z) {
        this.j = z;
    }

    public void b(int i) {
        this.q = i;
    }

    public void b(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        this.x = new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2);
    }

    public void b(boolean z) {
        this.k = z;
    }

    public void c(int i) {
        this.D = i;
    }

    public void c(boolean z) {
        this.l = z;
    }

    public boolean e() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        g();
    }

    public void g() {
        this.H = false;
        this.h.setVisibility(8);
        if (!e() || this.i == null) {
            return;
        }
        try {
            this.f.removeView(this.i);
        } catch (IllegalArgumentException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h() {
        if (this.H) {
            return;
        }
        this.f.addView(this.i, this.f2894a);
        this.g = true;
    }

    public void i() {
        if (e() && this.h.getVisibility() != 8) {
            g();
            this.g = false;
        }
        if (this.i != this.h && (this.i instanceof ViewGroup)) {
            ((ViewGroup) this.i).removeView(this.h);
        }
        this.i = null;
        if (this.A != null) {
            this.A.a();
        }
    }

    public Rect j() {
        return this.x;
    }

    public int k() {
        return this.D;
    }
}
