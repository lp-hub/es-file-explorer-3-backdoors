package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.LinearLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1998a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(a aVar, Context context) {
        super(context);
        this.f1998a = aVar;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int i;
        int i2;
        boolean z2;
        boolean z3;
        boolean z4;
        try {
            z = this.f1998a.g;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (!z) {
            return true;
        }
        if (this.f1998a.b() && this.f1998a.d) {
            if (motionEvent.getAction() == 0) {
                this.f1998a.h = (int) motionEvent.getX();
                this.f1998a.i = (int) motionEvent.getY();
                this.f1998a.j = false;
            } else if (motionEvent.getAction() == 1) {
                z3 = this.f1998a.j;
                if (z3) {
                    z4 = this.f1998a.j;
                    return z4;
                }
            } else if (motionEvent.getAction() == 2) {
                float x = motionEvent.getX();
                i = this.f1998a.h;
                int i3 = (int) (x - i);
                float y = motionEvent.getY();
                i2 = this.f1998a.i;
                if (Math.abs(i3) > Math.abs((int) (y - i2)) && Math.abs(i3) > 20) {
                    z2 = this.f1998a.j;
                    if (!z2) {
                        motionEvent.setAction(3);
                        dispatchTouchEvent(motionEvent);
                        if (i3 < 0) {
                            this.f1998a.c();
                        } else {
                            this.f1998a.d();
                        }
                        this.f1998a.j = true;
                        return true;
                    }
                }
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
