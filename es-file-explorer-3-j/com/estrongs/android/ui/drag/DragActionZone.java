package com.estrongs.android.ui.drag;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class DragActionZone extends LinearLayout implements o {

    /* renamed from: a, reason: collision with root package name */
    private c f1934a;

    /* renamed from: b, reason: collision with root package name */
    private int f1935b;
    private Vibrator c;
    private Handler d;
    private Runnable e;

    public DragActionZone(Context context) {
        this(context, null);
    }

    public DragActionZone(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public DragActionZone(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.d = new Handler();
        this.c = (Vibrator) context.getSystemService("vibrator");
    }

    public void a(int i) {
        this.f1935b = i;
    }

    public void a(Drawable drawable) {
        ImageView imageView = (ImageView) findViewById(C0000R.id.drag_action_image);
        imageView.setImageDrawable(drawable);
        if (isEnabled()) {
            imageView.setColorFilter((ColorFilter) null);
        } else {
            imageView.setColorFilter(new LightingColorFilter(1, -7829368));
        }
    }

    public void a(c cVar) {
        this.f1934a = cVar;
    }

    @Override // com.estrongs.android.ui.drag.o
    public void a(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
        if (isEnabled() && this.f1934a != null) {
            this.f1934a.a(jVar, obj);
        }
    }

    public boolean a(Rect rect, int i, int i2) {
        int sqrt;
        int intrinsicWidth = getBackground().getIntrinsicWidth();
        switch (this.f1935b) {
            case 0:
                sqrt = (int) Math.sqrt(((i - rect.left) * (i - rect.left)) + ((i2 - rect.top) * (i2 - rect.top)));
                break;
            case 1:
                sqrt = (int) Math.sqrt(((i - rect.right) * (i - rect.right)) + ((i2 - rect.top) * (i2 - rect.top)));
                break;
            case 2:
                sqrt = (int) Math.sqrt(((i - rect.left) * (i - rect.left)) + ((i2 - rect.bottom) * (i2 - rect.bottom)));
                break;
            case 3:
                sqrt = (int) Math.sqrt(((i - rect.right) * (i - rect.right)) + ((i2 - rect.bottom) * (i2 - rect.bottom)));
                break;
            default:
                sqrt = intrinsicWidth;
                break;
        }
        return sqrt < intrinsicWidth;
    }

    @Override // com.estrongs.android.ui.drag.o
    public void b(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
        if (isEnabled()) {
            setPressed(true);
            this.c.vibrate(40L);
            if (this.e == null) {
                this.e = new a(this, jVar, obj);
            }
            this.d.postDelayed(this.e, 250L);
        }
    }

    @Override // com.estrongs.android.ui.drag.o
    public void c(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
    }

    @Override // com.estrongs.android.ui.drag.o
    public void d(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
        if (isEnabled()) {
            setPressed(false);
            if (this.e == null) {
                this.e = new b(this, jVar, obj);
            }
            this.d.removeCallbacks(this.e);
        }
    }

    @Override // com.estrongs.android.ui.drag.o
    public boolean e(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
        return isEnabled();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        ImageView imageView = (ImageView) findViewById(C0000R.id.drag_action_image);
        if (z) {
            imageView.setColorFilter((ColorFilter) null);
        } else {
            imageView.setColorFilter(new LightingColorFilter(1, -7829368));
        }
    }
}
