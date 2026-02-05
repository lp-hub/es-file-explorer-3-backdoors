package com.estrongs.android.widget;

import android.view.View;

/* loaded from: classes.dex */
class bg implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ SlidingDrawer f2907a;

    private bg(SlidingDrawer slidingDrawer) {
        this.f2907a = slidingDrawer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bg(SlidingDrawer slidingDrawer, bf bfVar) {
        this(slidingDrawer);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z;
        boolean z2;
        z = this.f2907a.h;
        if (z) {
            return;
        }
        z2 = this.f2907a.C;
        if (z2) {
            this.f2907a.b();
        } else {
            this.f2907a.a();
        }
    }
}
