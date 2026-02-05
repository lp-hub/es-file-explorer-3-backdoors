package android.support.v4.view;

import android.database.DataSetObserver;

/* loaded from: classes.dex */
class ab extends DataSetObserver implements bh, bi {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PagerTitleStrip f65a;

    /* renamed from: b, reason: collision with root package name */
    private int f66b;

    private ab(PagerTitleStrip pagerTitleStrip) {
        this.f65a = pagerTitleStrip;
    }

    @Override // android.support.v4.view.bi
    public void a(int i) {
        if (this.f66b == 0) {
            this.f65a.a(this.f65a.f48a.c(), this.f65a.f48a.b());
        }
    }

    @Override // android.support.v4.view.bi
    public void a(int i, float f, int i2) {
        if (f > 0.5f) {
            i++;
        }
        this.f65a.a(i, f, false);
    }

    @Override // android.support.v4.view.bi
    public void b(int i) {
        this.f66b = i;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        this.f65a.a(this.f65a.f48a.c(), this.f65a.f48a.b());
    }
}
