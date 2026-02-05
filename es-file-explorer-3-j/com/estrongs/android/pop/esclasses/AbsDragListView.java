package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ListView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.theme.al;

/* loaded from: classes.dex */
public abstract class AbsDragListView extends ListView {

    /* renamed from: a, reason: collision with root package name */
    protected int f1117a;

    /* renamed from: b, reason: collision with root package name */
    protected int f1118b;
    private ImageView c;
    private int d;
    private int e;
    private WindowManager f;
    private WindowManager.LayoutParams g;
    private int h;
    private int i;
    private int j;

    public AbsDragListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public void a() {
        requestDisallowInterceptTouchEvent(false);
        if (this.c != null) {
            this.f.removeView(this.c);
            this.c = null;
        }
    }

    public void a(int i) {
        int i2 = 0;
        if (this.c != null) {
            this.g.alpha = 0.8f;
            this.g.y = (i - this.d) + this.e;
            this.f.updateViewLayout(this.c, this.g);
        }
        int pointToPosition = pointToPosition(0, i);
        if (pointToPosition != -1) {
            this.f1118b = pointToPosition;
        }
        if (i < this.i) {
            i2 = 8;
        } else if (i > this.j) {
            i2 = -8;
        }
        if (i2 != 0) {
            try {
                setSelectionFromTop(this.f1118b, i2 + getChildAt(this.f1118b - getFirstVisiblePosition()).getTop());
            } catch (Exception e) {
            }
        }
    }

    public abstract void a(int i, int i2);

    public void a(Bitmap bitmap, int i) {
        a();
        this.g = new WindowManager.LayoutParams();
        this.g.gravity = 48;
        this.g.x = 0;
        this.g.y = (i - this.d) + this.e;
        this.g.width = -2;
        this.g.height = -2;
        this.g.flags = 408;
        this.g.format = -3;
        this.g.windowAnimations = 0;
        ImageView imageView = new ImageView(getContext());
        imageView.setImageBitmap(bitmap);
        this.f = (WindowManager) getContext().getSystemService("window");
        this.f.addView(imageView, this.g);
        this.c = imageView;
    }

    public int b() {
        return this.f1117a;
    }

    public void b(int i) {
        int pointToPosition = pointToPosition(0, i);
        if (pointToPosition != -1) {
            this.f1118b = pointToPosition;
        }
        if (i >= getChildAt(0).getTop() && i <= getChildAt(getChildCount() - 1).getBottom() && this.f1118b >= 0 && this.f1118b < getAdapter().getCount() && this.f1117a != this.f1118b) {
            a(this.f1117a, this.f1118b);
        }
    }

    public abstract int c();

    public abstract boolean d();

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int pointToPosition = pointToPosition(x, y);
        this.f1118b = pointToPosition;
        this.f1117a = pointToPosition;
        if (this.f1118b == -1 || getChildCount() <= 1 || !d()) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        ViewGroup viewGroup = (ViewGroup) getChildAt(this.f1118b - getFirstVisiblePosition());
        this.d = y - viewGroup.getTop();
        this.e = (int) (motionEvent.getRawY() - y);
        View findViewById = viewGroup.findViewById(c());
        if (findViewById == null || x >= findViewById.getRight()) {
            return false;
        }
        this.i = Math.min(y - this.h, getHeight() / 3);
        this.j = Math.max(this.h + y, (getHeight() * 2) / 3);
        viewGroup.setBackgroundDrawable(al.a(getContext()).a(C0000R.drawable.main_content_icon_bg_click));
        viewGroup.setDrawingCacheEnabled(true);
        a(Bitmap.createBitmap(viewGroup.getDrawingCache()), y);
        viewGroup.destroyDrawingCache();
        viewGroup.setBackgroundDrawable(null);
        requestDisallowInterceptTouchEvent(true);
        return true;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.c == null || this.f1118b == -1) {
            return super.onTouchEvent(motionEvent);
        }
        switch (motionEvent.getAction()) {
            case 1:
                int y = (int) motionEvent.getY();
                a();
                b(y);
                break;
            case 2:
                a((int) motionEvent.getY());
                break;
            case 3:
                a();
                break;
        }
        return true;
    }
}
