package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class ESImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private Drawable f1122a;

    /* renamed from: b, reason: collision with root package name */
    private Drawable f1123b;

    public ESImageView(Context context) {
        super(context);
    }

    public ESImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ESImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void a(Drawable drawable) {
        this.f1122a = drawable;
    }

    protected void finalize() {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            com.estrongs.android.d.d.a(drawable);
        }
        super.finalize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
            if (this.f1122a != null) {
                int measuredHeight = getMeasuredHeight();
                int min = Math.min(measuredHeight / 3, getMeasuredWidth() / 3);
                this.f1122a.setBounds(0, measuredHeight - min, min, measuredHeight);
                this.f1122a.draw(canvas);
            }
            if (this.f1123b != null) {
                int measuredHeight2 = getMeasuredHeight();
                int measuredWidth = getMeasuredWidth();
                int min2 = Math.min(measuredHeight2 / 3, measuredWidth / 3);
                this.f1123b.setBounds(measuredWidth - min2, measuredHeight2 - min2, measuredWidth, measuredHeight2);
                this.f1123b.draw(canvas);
            }
        } catch (RuntimeException e) {
            e.printStackTrace();
            if (e.getMessage().indexOf("recycled bitmap") < 0 || !(getTag() instanceof com.estrongs.fs.g)) {
                return;
            }
            com.estrongs.android.d.d.b(getDrawable());
            com.estrongs.fs.g gVar = (com.estrongs.fs.g) getTag();
            boolean[] zArr = {false};
            Drawable a2 = com.estrongs.android.d.d.a(gVar, false, zArr);
            setImageDrawable(a2);
            if (zArr[0]) {
                com.estrongs.android.d.d.a(com.estrongs.android.d.d.f(gVar), a2, true);
            }
            super.onDraw(canvas);
            if (this.f1122a != null) {
                int measuredHeight3 = getMeasuredHeight();
                int min3 = Math.min(measuredHeight3 / 3, getMeasuredWidth() / 3);
                this.f1122a.setBounds(0, measuredHeight3 - min3, min3, measuredHeight3);
                this.f1122a.draw(canvas);
            }
            if (this.f1123b != null) {
                int measuredHeight4 = getMeasuredHeight();
                int measuredWidth2 = getMeasuredWidth();
                int min4 = Math.min(measuredHeight4 / 3, measuredWidth2 / 3);
                this.f1123b.setBounds(measuredWidth2 - min4, measuredHeight4 - min4, measuredWidth2, measuredHeight4);
                this.f1123b.draw(canvas);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        this.f1122a = null;
        this.f1123b = null;
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        this.f1122a = null;
        this.f1123b = null;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        this.f1122a = null;
        this.f1123b = null;
    }
}
