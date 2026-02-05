package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public abstract class au extends ap {
    protected Context e;
    protected com.estrongs.android.ui.theme.al f;
    private View g;
    private String h;
    private View i;
    private int j;
    private int k;
    private ImageView l;
    private ImageView m;
    private ImageView n;
    private ImageView o;
    private int p;
    private int q;
    private boolean r;

    public au(Context context, View view, String str, int i, Rect rect, boolean z) {
        super(view, rect);
        this.r = true;
        this.e = context;
        this.g = view;
        this.h = str;
        this.r = z;
        c(i);
        a();
    }

    private void a() {
        this.f = com.estrongs.android.ui.theme.al.a(this.e);
        this.i = com.estrongs.android.pop.esclasses.e.a(this.e).inflate(C0000R.layout.popupwindowwitharrow, (ViewGroup) null);
        Drawable a2 = this.f.a(C0000R.drawable.popupbox_bg);
        this.i.setBackgroundDrawable(a2);
        a(this.i);
        a(this.e.getResources().getDrawable(C0000R.drawable.blank));
        int intrinsicWidth = a2.getIntrinsicWidth() / 2;
        this.q = intrinsicWidth;
        this.p = intrinsicWidth;
        a(this.h);
        WindowManager windowManager = (WindowManager) this.e.getSystemService("window");
        this.j = windowManager.getDefaultDisplay().getWidth();
        this.k = windowManager.getDefaultDisplay().getHeight();
        windowManager.getDefaultDisplay().getHeight();
        a(-1, -2);
        b(this.j);
        a(this.k);
        this.l = (ImageView) this.i.findViewById(C0000R.id.popup_arrow_up);
        this.l.setVisibility(4);
        this.m = (ImageView) this.i.findViewById(C0000R.id.popup_arrow_down);
        this.m.setVisibility(4);
        this.n = (ImageView) this.i.findViewById(C0000R.id.popup_arrow_left);
        this.n.setVisibility(4);
        this.o = (ImageView) this.i.findViewById(C0000R.id.popup_arrow_right);
        this.o.setVisibility(4);
        a(true);
        b(true);
        c(false);
        b(this.g);
        m();
        b();
    }

    private void d() {
        TextView textView = (TextView) this.i.findViewById(C0000R.id.popup_title);
        if (this.h == null || this.h.equals("")) {
            return;
        }
        textView.setText(this.h);
    }

    private void d(int i) {
        if (j() == null) {
            return;
        }
        super.a(this.g, 0, 0, 0);
    }

    private void m() {
        if (this.r) {
            if (k() == 0) {
                this.l.setVisibility(0);
                int intrinsicWidth = this.l.getDrawable().getIntrinsicWidth();
                int centerX = j().centerX() - (intrinsicWidth / 2);
                ((LinearLayout) this.i.findViewById(C0000R.id.popup_position_arrow_up)).getLayoutParams().width = centerX < this.p ? this.p : centerX > (this.j - this.q) - intrinsicWidth ? (this.j - this.q) - intrinsicWidth : centerX;
                return;
            }
            if (k() == 1) {
                this.m.setVisibility(0);
                int intrinsicWidth2 = this.m.getDrawable().getIntrinsicWidth();
                int centerX2 = j().centerX() - (intrinsicWidth2 / 2);
                ((LinearLayout) this.i.findViewById(C0000R.id.popup_position_arrow_down)).getLayoutParams().width = centerX2 < this.p ? this.p : centerX2 > (this.j - this.q) - intrinsicWidth2 ? (this.j - this.q) - intrinsicWidth2 : centerX2;
                return;
            }
            if (k() == 2) {
                this.n.setVisibility(0);
                int intrinsicHeight = this.n.getDrawable().getIntrinsicHeight();
                int centerY = ((j().centerY() - (intrinsicHeight / 2)) - this.d.top) - com.estrongs.android.ui.d.a.a(this.e, 54.0f);
                if (centerY < 0) {
                    centerY = 0;
                } else if (centerY > (this.d.height() - this.q) - intrinsicHeight) {
                    centerY = (this.d.height() - this.q) - intrinsicHeight;
                }
                ((ViewGroup.MarginLayoutParams) this.n.getLayoutParams()).topMargin = centerY;
                return;
            }
            if (k() == 3) {
                this.o.setVisibility(0);
                int intrinsicHeight2 = this.o.getDrawable().getIntrinsicHeight();
                int centerY2 = ((j().centerY() - (intrinsicHeight2 / 2)) - this.d.top) - com.estrongs.android.ui.d.a.a(this.e, 54.0f);
                if (centerY2 < 0) {
                    centerY2 = 0;
                } else if (centerY2 > (this.d.height() - this.q) - intrinsicHeight2) {
                    centerY2 = (this.d.height() - this.q) - intrinsicHeight2;
                }
                ((ViewGroup.MarginLayoutParams) this.o.getLayoutParams()).topMargin = centerY2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(View view, FrameLayout.LayoutParams layoutParams) {
        FrameLayout frameLayout = (FrameLayout) this.i.findViewById(C0000R.id.popup_content_container);
        frameLayout.removeAllViews();
        frameLayout.addView(view, layoutParams);
    }

    protected void a(String str) {
        this.h = str;
        d();
    }

    protected abstract void b();

    public void c() {
        if (!e()) {
            d(j().centerY());
        } else if (this.i.getVisibility() == 8) {
            this.i.setVisibility(0);
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RelativeLayout l() {
        return (RelativeLayout) this.i.findViewById(C0000R.id.popup_title_container);
    }
}
