package android.support.v4.view;

import android.view.View;

/* loaded from: classes.dex */
class y implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PagerTabStrip f83a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(PagerTabStrip pagerTabStrip) {
        this.f83a = pagerTabStrip;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f83a.f48a.a(this.f83a.f48a.c() - 1);
    }
}
