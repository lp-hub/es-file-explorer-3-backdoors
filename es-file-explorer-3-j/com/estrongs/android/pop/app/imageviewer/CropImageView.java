package com.estrongs.android.pop.app.imageviewer;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.estrongs.android.pop.app.imageviewer.HighlightView;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CropImageView extends ImageViewTouchBase {

    /* renamed from: a, reason: collision with root package name */
    ArrayList<HighlightView> f915a;

    /* renamed from: b, reason: collision with root package name */
    HighlightView f916b;
    float c;
    float d;
    int e;

    public CropImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f915a = new ArrayList<>();
        this.f916b = null;
    }

    private void a(MotionEvent motionEvent) {
        int i = 0;
        for (int i2 = 0; i2 < this.f915a.size(); i2++) {
            HighlightView highlightView = this.f915a.get(i2);
            highlightView.a(false);
            highlightView.c();
        }
        while (true) {
            if (i >= this.f915a.size()) {
                break;
            }
            HighlightView highlightView2 = this.f915a.get(i);
            if (highlightView2.a(motionEvent.getX(), motionEvent.getY()) == 1) {
                i++;
            } else if (!highlightView2.a()) {
                highlightView2.a(true);
                highlightView2.c();
            }
        }
        invalidate();
    }

    private void b(HighlightView highlightView) {
        Rect rect = highlightView.d;
        int max = Math.max(0, getLeft() - rect.left);
        int min = Math.min(0, getRight() - rect.right);
        int max2 = Math.max(0, getTop() - rect.top);
        int min2 = Math.min(0, getBottom() - rect.bottom);
        if (max == 0) {
            max = min;
        }
        if (max2 == 0) {
            max2 = min2;
        }
        if (max == 0 && max2 == 0) {
            return;
        }
        c(max, max2);
    }

    private void c(HighlightView highlightView) {
        Rect rect = highlightView.d;
        float max = Math.max(1.0f, Math.min((getWidth() / rect.width()) * 0.6f, (getHeight() / rect.height()) * 0.6f) * c());
        if (Math.abs(max - c()) / max > 0.1d) {
            float[] fArr = {highlightView.e.centerX(), highlightView.e.centerY()};
            getImageMatrix().mapPoints(fArr);
            a(max, fArr[0], fArr[1], 300.0f);
        }
        b(highlightView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.app.imageviewer.ImageViewTouchBase
    public void a(float f, float f2) {
        super.a(f, f2);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f915a.size()) {
                return;
            }
            HighlightView highlightView = this.f915a.get(i2);
            highlightView.f.postTranslate(f, f2);
            highlightView.c();
            i = i2 + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.app.imageviewer.ImageViewTouchBase
    public void a(float f, float f2, float f3) {
        super.a(f, f2, f3);
        Iterator<HighlightView> it = this.f915a.iterator();
        while (it.hasNext()) {
            HighlightView next = it.next();
            next.f.set(getImageMatrix());
            next.c();
        }
    }

    public void a(HighlightView highlightView) {
        this.f915a.add(highlightView);
        invalidate();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESImageView, android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f915a.size()) {
                return;
            }
            this.f915a.get(i2).a(canvas);
            i = i2 + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.app.imageviewer.ImageViewTouchBase, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.h.b() != null) {
            Iterator<HighlightView> it = this.f915a.iterator();
            while (it.hasNext()) {
                HighlightView next = it.next();
                next.f.set(getImageMatrix());
                next.c();
                if (next.f919b) {
                    c(next);
                }
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        CropImage cropImage = (CropImage) getContext();
        if (cropImage.f914b) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                if (cropImage.f913a) {
                    a(motionEvent);
                    break;
                } else {
                    int i = 0;
                    while (true) {
                        if (i >= this.f915a.size()) {
                            break;
                        } else {
                            HighlightView highlightView = this.f915a.get(i);
                            int a2 = highlightView.a(motionEvent.getX(), motionEvent.getY());
                            if (a2 != 1) {
                                this.e = a2;
                                this.f916b = highlightView;
                                this.c = motionEvent.getX();
                                this.d = motionEvent.getY();
                                this.f916b.a(a2 == 32 ? HighlightView.ModifyMode.Move : HighlightView.ModifyMode.Grow);
                                break;
                            } else {
                                i++;
                            }
                        }
                    }
                }
            case 1:
                if (cropImage.f913a) {
                    for (int i2 = 0; i2 < this.f915a.size(); i2++) {
                        HighlightView highlightView2 = this.f915a.get(i2);
                        if (highlightView2.a()) {
                            cropImage.c = highlightView2;
                            for (int i3 = 0; i3 < this.f915a.size(); i3++) {
                                if (i3 != i2) {
                                    this.f915a.get(i3).b(true);
                                }
                            }
                            c(highlightView2);
                            ((CropImage) getContext()).f913a = false;
                            return true;
                        }
                    }
                } else if (this.f916b != null) {
                    c(this.f916b);
                    this.f916b.a(HighlightView.ModifyMode.None);
                }
                this.f916b = null;
                break;
            case 2:
                if (cropImage.f913a) {
                    a(motionEvent);
                    break;
                } else if (this.f916b != null) {
                    this.f916b.a(this.e, motionEvent.getX() - this.c, motionEvent.getY() - this.d);
                    this.c = motionEvent.getX();
                    this.d = motionEvent.getY();
                    b(this.f916b);
                    break;
                }
                break;
        }
        switch (motionEvent.getAction()) {
            case 1:
                a(true, true);
                break;
            case 2:
                if (c() == 1.0f) {
                    a(true, true);
                    break;
                }
                break;
        }
        return true;
    }
}
