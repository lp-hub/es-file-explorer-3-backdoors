package com.estrongs.android.ui.view;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Handler;
import android.os.Message;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class IndicatorView extends View {

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f2576a = {-16842910};

    /* renamed from: b, reason: collision with root package name */
    private static final int[] f2577b = {R.attr.state_enabled};
    private TextPaint c;
    private List<aj> d;
    private int e;
    private int f;
    private long g;
    private long h;
    private Handler i;
    private View.OnClickListener j;
    private View.OnKeyListener k;

    public IndicatorView(Context context) {
        super(context);
        this.d = new LinkedList();
        this.e = -1;
        this.f = 0;
        this.h = 300L;
        this.i = new ag(this);
        this.j = new ah(this);
        this.k = new ai(this);
        d();
    }

    public IndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new LinkedList();
        this.e = -1;
        this.f = 0;
        this.h = 300L;
        this.i = new ag(this);
        this.j = new ah(this);
        this.k = new ai(this);
        d();
    }

    public IndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new LinkedList();
        this.e = -1;
        this.f = 0;
        this.h = 300L;
        this.i = new ag(this);
        this.j = new ah(this);
        this.k = new ai(this);
        d();
    }

    private void a(Canvas canvas, aj ajVar, int i, int i2, int i3, boolean z) {
        if (ajVar.e() || z) {
            NinePatchDrawable a2 = aj.a(ajVar);
            int intrinsicHeight = (i3 - a2.getIntrinsicHeight()) / 2;
            a2.setBounds(i, intrinsicHeight, i2, a2.getIntrinsicHeight() + intrinsicHeight);
            a2.draw(canvas);
        }
        Drawable d = ajVar.d();
        int b2 = ajVar.b() + i;
        int intrinsicWidth = d.getIntrinsicWidth() + i;
        int intrinsicHeight2 = (i3 - d.getIntrinsicHeight()) / 2;
        d.setBounds(b2, intrinsicHeight2, intrinsicWidth, d.getIntrinsicHeight() + intrinsicHeight2);
        d.draw(canvas);
        if (ajVar.f()) {
            int round = Math.round(this.c.getFontMetricsInt(null));
            int c = intrinsicWidth + ajVar.c();
            int b3 = i2 - ajVar.b();
            int i4 = (i3 - round) / 2;
            int i5 = i4 + round;
            StaticLayout staticLayout = new StaticLayout(aj.b(ajVar), g(), b3 - c, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            canvas.save();
            canvas.clipRect(c, i4, b3, i5);
            canvas.translate(c, i4);
            staticLayout.draw(canvas);
            canvas.restore();
        }
    }

    private void d() {
        setFocusable(true);
        super.setOnKeyListener(this.k);
        super.setOnClickListener(this.j);
    }

    private int e() {
        int i = 0;
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            i += this.d.get(i2).a();
        }
        return (f() * (this.d.size() + 1)) + i;
    }

    private int f() {
        if (this.e == -1) {
            this.e = com.estrongs.android.ui.d.a.a(getContext(), 2.0f);
        }
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TextPaint g() {
        if (this.c == null) {
            this.c = new TextPaint();
            this.c.setColor(com.estrongs.android.ui.theme.al.a(getContext()).d(C0000R.color.main_tab_notab_text));
            this.c.setDither(true);
            this.c.setAntiAlias(true);
            if (com.estrongs.android.pop.m.J) {
                this.c.setTextSize(com.estrongs.android.ui.d.a.a(getContext(), 16.0f));
            } else {
                this.c.setTextSize(com.estrongs.android.ui.d.a.a(getContext(), 13.0f));
            }
        }
        return this.c;
    }

    public int a() {
        if (this.d == null) {
            return 0;
        }
        return this.d.size();
    }

    public abstract void a(int i);

    public void a(int i, float f) {
        if (i >= 0) {
            try {
                if (i < this.d.size()) {
                    this.d.get(i).a(f);
                    invalidate();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void a(int i, int i2) {
        a(i, i2, false);
    }

    public void a(int i, int i2, boolean z) {
        this.g = System.currentTimeMillis();
        Message message = new Message();
        message.what = 3;
        message.arg1 = i;
        message.arg2 = i2;
        message.obj = Boolean.valueOf(z);
        this.i.sendMessage(message);
    }

    public void a(int i, com.estrongs.android.ui.d.d dVar) {
        aj ajVar;
        if (i >= 0) {
            try {
                if (i >= a() || (ajVar = this.d.get(i)) == null) {
                    return;
                }
                ajVar.a(dVar);
                invalidate();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void a(com.estrongs.android.ui.d.d dVar) {
        try {
            this.d.add(new aj(this, dVar));
            invalidate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(com.estrongs.android.ui.d.d dVar, int i) {
        try {
            this.d.add(i, new aj(this, dVar));
            invalidate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void b(int i) {
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            try {
                if (i2 == i) {
                    this.d.get(i2).a(1.0f);
                } else {
                    this.d.get(i2).a(0.0f);
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        invalidate();
    }

    public void c(int i) {
        try {
            this.d.remove(i);
            invalidate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        try {
            int size = this.d.size();
            if (size == 0) {
                return;
            }
            int width = getWidth();
            int height = getHeight();
            if (width == 0 || height == 0) {
                return;
            }
            int e = (width - e()) / 2;
            int i = 0;
            while (i < size) {
                int i2 = e + this.e;
                aj ajVar = this.d.get(i);
                e = i2 + ajVar.a();
                a(canvas, ajVar, i2, e, height, isFocused() && this.f == i);
                i++;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            this.f = 0;
        }
        invalidate();
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
    }

    @Override // android.view.View
    public void setOnKeyListener(View.OnKeyListener onKeyListener) {
    }
}
