package com.estrongs.android.pop.utils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class bj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bi f1229a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj(bi biVar) {
        this.f1229a = biVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.fs.g g;
        int a2;
        try {
            List<com.estrongs.fs.g> h = this.f1229a.f1227a.h();
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(h);
            Iterator it = this.f1229a.c.iterator();
            while (it.hasNext()) {
                arrayList.remove((com.estrongs.fs.g) it.next());
            }
            this.f1229a.f1227a.b(arrayList);
            if (this.f1229a.d != null && this.f1229a.d.startsWith("gallery") && (g = com.estrongs.fs.a.b.a().g(this.f1229a.d)) != null && (a2 = com.estrongs.android.util.aw.a(g.getExtra("item_count"), -1)) != -1) {
                g.putExtra("item_count", Integer.valueOf(a2 - this.f1229a.c.size()));
            }
            this.f1229a.f1227a.e();
        } catch (Exception e) {
        }
    }
}
