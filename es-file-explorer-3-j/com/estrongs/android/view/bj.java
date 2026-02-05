package com.estrongs.android.view;

import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
class bj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.b.t f2773a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ List f2774b;
    final /* synthetic */ bi c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj(bi biVar, com.estrongs.fs.b.t tVar, List list) {
        this.c = biVar;
        this.f2773a = tVar;
        this.f2774b = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.c.f2771a.e) {
            this.c.f2771a.e.remove(this);
        }
        this.c.f2772b.a(this.f2773a, this.f2774b);
        String path = this.f2773a.f3024b.getPath();
        Parcelable parcelable = this.c.f2772b.G.get(path);
        if (parcelable == null || !com.estrongs.android.util.aw.a(path, this.c.f2772b.w)) {
            return;
        }
        this.c.f2772b.g.onRestoreInstanceState(parcelable);
    }
}
