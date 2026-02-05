package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESImageView;

/* loaded from: classes.dex */
public class UsageImageView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f2878a;

    /* renamed from: b, reason: collision with root package name */
    private ImageView f2879b;
    private Drawable c;
    private Drawable d;
    private Context e;
    private float f;
    private int g;

    public UsageImageView(Context context) {
        super(context);
        a();
    }

    public UsageImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private Rect a(Rect rect) {
        int measuredWidth = (int) (getMeasuredWidth() * this.f);
        if (measuredWidth > 0 && measuredWidth < this.g) {
            measuredWidth = this.g;
        }
        return new Rect(rect.left, rect.top, measuredWidth, rect.bottom);
    }

    private void a() {
        this.e = getContext();
        this.f2878a = new ESImageView(this.e);
        this.f2879b = new ESImageView(this.e);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(this.f2878a, layoutParams);
        addView(this.f2879b, layoutParams);
        this.c = this.e.getResources().getDrawable(C0000R.drawable.disk_content_allsize_bg);
        this.d = this.e.getResources().getDrawable(C0000R.drawable.disk_content_singlesize_bg);
        this.g = this.d.getIntrinsicWidth() / 2;
        this.f2878a.setBackgroundDrawable(this.c);
        this.f2879b.setBackgroundDrawable(this.d);
        this.f = 0.0f;
    }

    public void a(float f) {
        this.f = f;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.f2878a.draw(canvas);
        int save = canvas.save();
        new Rect();
        canvas.clipRect(a(canvas.getClipBounds()), Region.Op.INTERSECT);
        this.f2879b.draw(canvas);
        canvas.restoreToCount(save);
    }
}
