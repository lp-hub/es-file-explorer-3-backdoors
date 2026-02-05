package com.estrongs.android.view;

import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;

/* loaded from: classes.dex */
class cf extends bq implements View.OnTouchListener {

    /* renamed from: b, reason: collision with root package name */
    int f2806b;
    final /* synthetic */ bu c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cf(bu buVar) {
        super(buVar);
        this.c = buVar;
    }

    @Override // com.estrongs.android.view.bq, android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        boolean z;
        boolean z2;
        boolean z3;
        super.onScrollStateChanged(absListView, i);
        z = this.c.ah;
        if (z) {
            z2 = this.c.al;
            if (z2 && absListView.getLastVisiblePosition() == absListView.getCount() - 1) {
                z3 = this.c.ak;
                if (z3) {
                    return;
                }
                this.c.ao();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        z = this.c.al;
        if (z) {
            int y = (int) motionEvent.getY();
            switch (motionEvent.getAction()) {
                case 0:
                    this.f2806b = y;
                    break;
                case 2:
                    int y2 = ((int) motionEvent.getY()) - this.f2806b;
                    this.c.ah = y2 < 0 && Math.abs(y2) > 100;
                    break;
            }
        }
        return false;
    }
}
