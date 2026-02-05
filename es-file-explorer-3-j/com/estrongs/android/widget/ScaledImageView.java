package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESImageView;

/* loaded from: classes.dex */
public class ScaledImageView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private Drawable f2872a;

    /* renamed from: b, reason: collision with root package name */
    private Handler f2873b;
    private Handler c;
    private ay d;
    private ImageView e;
    private LinearLayout f;
    private int g;
    private boolean h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private ViewGroup.LayoutParams o;
    private int p;
    private long q;

    public ScaledImageView(Context context) {
        super(context);
        this.g = -1;
        this.p = 300;
        d();
    }

    public ScaledImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = -1;
        this.p = 300;
        d();
    }

    public ScaledImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = -1;
        this.p = 300;
        d();
    }

    private void a(int i) {
        this.e.setAlpha(i);
    }

    private void d() {
        this.f2872a = getBackground();
        this.e = new ESImageView(getContext());
        this.e.setScaleType(ImageView.ScaleType.FIT_XY);
        this.e.setBackgroundDrawable(this.f2872a);
        setBackgroundResource(C0000R.drawable.blank);
        setDrawingCacheEnabled(false);
        addView(this.e, new LinearLayout.LayoutParams(-1, -1));
        e();
    }

    private void e() {
        this.f2873b = new aw(this);
        this.c = new ax(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.o == null) {
            this.o = getLayoutParams();
            if (this.o == null) {
                this.g = -1;
                return;
            }
        }
        this.o.height = this.n;
        this.o.width = this.m;
        this.e.getLayoutParams().height = this.n;
        this.e.getLayoutParams().width = this.m;
        c();
        a(this.f2872a);
        invalidate();
        g();
    }

    private void g() {
        Message message = new Message();
        if (this.g == 0) {
            if (!this.h) {
                this.f2873b.sendMessageDelayed(message, 20L);
                return;
            } else {
                this.h = false;
                a();
                return;
            }
        }
        if (this.g == 1) {
            if (!this.h) {
                this.c.sendMessageDelayed(message, 20L);
            } else {
                this.h = false;
                b();
            }
        }
    }

    public void a() {
        this.g = -1;
        this.m = this.i;
        this.n = this.k;
        if (this.o == null) {
            this.o = getLayoutParams();
        }
        if (this.o != null) {
            this.o.width = this.i;
            this.o.height = this.k;
        }
        a(255);
        f();
        if (this.d != null) {
            this.d.a();
        }
        this.d = null;
    }

    public void a(Drawable drawable) {
        this.e.setImageDrawable(drawable);
        this.f2872a = drawable;
    }

    public void b() {
        this.g = -1;
        this.m = this.j;
        this.n = this.l;
        if (this.o == null) {
            this.o = getLayoutParams();
        }
        if (this.o != null) {
            this.o.width = this.j;
            this.o.height = this.l;
        }
        a(255);
        f();
        if (this.d != null) {
            this.d.a();
        }
        this.d = null;
    }

    public void c() {
        if (this.f != null) {
            int childCount = this.f.getChildCount();
            int i = 0;
            int i2 = 0;
            while (i < childCount) {
                ScaledImageView scaledImageView = (ScaledImageView) this.f.getChildAt(i);
                i++;
                i2 = scaledImageView == null ? i2 : scaledImageView.m + i2;
            }
            int measuredWidth = (this.f.getMeasuredWidth() - i2) / 2;
            int i3 = measuredWidth;
            for (int i4 = 0; i4 < childCount; i4++) {
                ScaledImageView scaledImageView2 = (ScaledImageView) this.f.getChildAt(i4);
                int i5 = scaledImageView2.m;
                int i6 = scaledImageView2.n;
                scaledImageView2.measure(i5, i6);
                scaledImageView2.layout(i3, scaledImageView2.getTop(), i3 + i5, i6 + scaledImageView2.getTop());
                i3 += i5;
            }
        }
    }
}
