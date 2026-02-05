package com.estrongs.android.widget;

import android.content.Context;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.AbsListView;
import android.widget.GridView;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class HeaderGridView extends GridView implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    private LinearLayout f2866a;

    /* renamed from: b, reason: collision with root package name */
    private int f2867b;
    private int c;
    private int d;
    private boolean e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private int j;
    private Vibrator k;

    public HeaderGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2867b = 30;
        this.c = 0;
        this.j = 0;
    }

    public HeaderGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2867b = 30;
        this.c = 0;
        this.j = 0;
    }

    private void a() {
        if (this.j == 0) {
            return;
        }
        int i = (this.h - this.g) / 2;
        this.f2866a.setVisibility(0);
        this.d = this.f2866a.getMeasuredHeight();
        if (this.j == 1) {
            if (this.f && i < this.d) {
                this.f = false;
                e();
            } else if (!this.f && i > this.d) {
                this.f = true;
                e();
            }
        } else if (this.j == 3 || this.j == 2) {
            i += this.d;
            if (!this.f && i > 0) {
                this.f = true;
                e();
            }
        }
        if (i > 0) {
            int left = getLeft();
            int right = getRight();
            this.f2866a.layout(left, i - this.d, right, i);
            layout(left, i, right, getBottom());
        }
    }

    private void b() {
        if (this.j == 1) {
            if (this.f) {
                this.j = 2;
                c();
            } else {
                this.j = 0;
                d();
            }
        } else if (this.j == 3) {
            this.j = 0;
            d();
        }
        this.h = -100;
        this.g = -100;
        this.f = false;
        setVerticalScrollBarEnabled(true);
    }

    private void c() {
        this.f2866a.setVisibility(0);
        int left = getLeft();
        int right = getRight();
        int i = this.d;
        this.f2866a.layout(left, 0, right, i);
        layout(left, i, right, getBottom());
    }

    private void d() {
        this.f2866a.setVisibility(4);
        layout(getLeft(), 0, getRight(), getBottom());
    }

    private void e() {
        if (this.k != null) {
            this.k.vibrate(30L);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0017. Please report as an issue. */
    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (getFirstVisiblePosition() == 0 && this.e) {
            int action = motionEvent.getAction();
            int rawY = (int) motionEvent.getRawY();
            switch (action) {
                case 0:
                    if (this.g == -100) {
                        this.g = rawY;
                        this.h = rawY;
                    }
                    if (this.j == 2) {
                        return true;
                    }
                    break;
                case 1:
                    if (this.j != 0 || this.j != 2) {
                        r0 = this.j == 3;
                        this.h = rawY;
                        a();
                        b();
                    }
                    if (r0) {
                        return true;
                    }
                    break;
                case 2:
                    if (Math.abs(rawY - this.g) > this.i) {
                        if (this.j == 0 && getFirstVisiblePosition() == 0) {
                            if (rawY > this.g) {
                                this.j = 1;
                                setVerticalScrollBarEnabled(false);
                            }
                        } else if (this.j == 2) {
                            this.j = 3;
                            setVerticalScrollBarEnabled(false);
                        }
                    }
                    if (this.j != 0) {
                        r0 = rawY - this.h < 0;
                        this.h = rawY;
                        a();
                        if (r0) {
                            return true;
                        }
                    }
                    break;
            }
        }
        return super.onTouchEvent(motionEvent);
    }
}
