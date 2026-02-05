package android.support.v4.view;

import android.view.View;

/* loaded from: classes.dex */
class z implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PagerTabStrip f84a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(PagerTabStrip pagerTabStrip) {
        this.f84a = pagerTabStrip;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f84a.f48a.a(this.f84a.f48a.c() + 1);
    }
}
