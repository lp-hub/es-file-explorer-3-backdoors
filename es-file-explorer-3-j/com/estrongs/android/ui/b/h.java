package com.estrongs.android.ui.b;

import com.estrongs.android.pop.C0000R;
import java.util.List;

/* loaded from: classes.dex */
class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f1858a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f1859b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar, List list) {
        this.f1859b = gVar;
        this.f1858a = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1859b.f1844a.findViewById(C0000R.id.load_progress).setVisibility(8);
        this.f1859b.f1844a.d.a(this.f1858a);
        this.f1859b.f1844a.d.notifyDataSetChanged();
    }
}
