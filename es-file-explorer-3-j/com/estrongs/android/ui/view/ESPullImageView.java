package com.estrongs.android.ui.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class ESPullImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private double f2573a;

    /* renamed from: b, reason: collision with root package name */
    private Rect f2574b;
    private Rect c;
    private Drawable d;
    private Bitmap e;
    private Drawable f;
    private Bitmap g;

    public ESPullImageView(Context context) {
        super(context);
        this.f2573a = 0.0d;
        this.f2574b = new Rect();
        this.c = new Rect();
    }

    public ESPullImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2573a = 0.0d;
        this.f2574b = new Rect();
        this.c = new Rect();
    }

    public ESPullImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2573a = 0.0d;
        this.f2574b = new Rect();
        this.c = new Rect();
    }

    public void a(double d) {
        if (d > 1.0d) {
            if (this.f2573a == 1.0d) {
                return;
            } else {
                d = 1.0d;
            }
        }
        this.f2573a = d;
        if (this.d == null) {
            this.d = com.estrongs.android.ui.theme.al.a(getContext()).a(C0000R.drawable.pull_end);
        }
        if (this.f == null) {
            this.f = com.estrongs.android.ui.theme.al.a(getContext()).a(C0000R.drawable.pull_normal);
        }
        if (this.e == null) {
            this.e = BitmapFactory.decodeResource(getContext().getResources(), C0000R.drawable.pull_end);
        }
        if (this.g == null) {
            this.g = BitmapFactory.decodeResource(getContext().getResources(), C0000R.drawable.pull_normal);
        }
        postInvalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawBitmap(this.g, 0.0f, 0.0f, (Paint) null);
        getDrawingRect(this.f2574b);
        this.c.set(this.f2574b.left, (int) (this.f2574b.bottom - ((this.f2574b.bottom - this.f2574b.top) * this.f2573a)), this.f2574b.right, this.f2574b.bottom);
        canvas.save();
        canvas.clipRect(this.c);
        canvas.drawBitmap(this.e, 0.0f, 0.0f, (Paint) null);
        canvas.restore();
    }
}
