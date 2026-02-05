package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class ProgressTextView extends TextView {

    /* renamed from: a, reason: collision with root package name */
    private Context f2868a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f2869b;
    private int c;
    private Rect d;
    private Rect e;
    private Drawable f;
    private ColorDrawable g;
    private LayerDrawable h;

    public ProgressTextView(Context context) {
        super(context);
        this.c = 0;
        this.d = new Rect();
        this.e = new Rect();
    }

    public ProgressTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 0;
        this.d = new Rect();
        this.e = new Rect();
    }

    public ProgressTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = 0;
        this.d = new Rect();
        this.e = new Rect();
    }

    private int a() {
        return com.estrongs.android.ui.theme.al.a(this.f2868a).d(C0000R.color.progress_green);
    }

    public void a(int i) {
        this.c = i;
        postInvalidate();
    }

    public void a(boolean z) {
        this.f2869b = z;
        if (z) {
            this.f = getBackground();
            this.g = new ColorDrawable(a());
            this.h = new LayerDrawable(new Drawable[]{this.f, this.g});
            setBackgroundDrawable(this.h);
        } else if (this.f != null) {
            setBackgroundDrawable(this.f);
        }
        invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f2869b) {
            getDrawingRect(this.d);
            this.e.set(this.d.left, this.d.top, this.d.left + (((this.d.right - this.d.left) * this.c) / 100), this.d.bottom);
            this.g.setBounds(this.e);
        }
    }
}
