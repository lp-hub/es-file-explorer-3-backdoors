package com.estrongs.android.pop.utils;

import android.app.Activity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class bc extends com.estrongs.fs.b.y {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1220a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f1221b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bc(com.estrongs.fs.d dVar, List list, com.estrongs.fs.g gVar, Activity activity, com.estrongs.fs.g gVar2) {
        super(dVar, list, gVar);
        this.f1220a = activity;
        this.f1221b = gVar2;
    }

    private void l() {
        com.estrongs.android.view.ar t;
        int b2;
        if (this.A.size() > 0 && com.estrongs.android.util.ak.aC(this.A.get(0).getPath())) {
            LinkedList linkedList = new LinkedList();
            Iterator<com.estrongs.fs.g> it = this.A.iterator();
            while (it.hasNext()) {
                String a2 = com.estrongs.fs.a.a.a(it.next().getPath());
                if (!linkedList.contains(a2)) {
                    linkedList.add(a2);
                }
            }
            LinkedList linkedList2 = new LinkedList();
            Iterator it2 = linkedList.iterator();
            while (it2.hasNext()) {
                com.estrongs.fs.g g = com.estrongs.fs.a.b.a().g((String) it2.next());
                if (g != null && g.getExtra("item_count") != null) {
                    b2 = aj.b(g);
                    if (b2 == 0) {
                        linkedList2.add(g);
                    }
                }
            }
            if (linkedList2.size() > 0) {
                new com.estrongs.fs.b.o(com.estrongs.fs.d.a(this.f1220a), (List<com.estrongs.fs.g>) linkedList2, false).execute(false);
            }
        }
        if (this.f1221b.getExtra("item_count") != null) {
            aj.b(this.f1221b);
        }
        if ((this.f1220a instanceof FileExplorerActivity) && (t = ((FileExplorerActivity) this.f1220a).t()) != null && com.estrongs.android.util.ak.aC(t.c())) {
            this.f1220a.runOnUiThread(new bd(this, t));
        }
    }

    @Override // com.estrongs.fs.b.y, com.estrongs.fs.b.i, com.estrongs.a.a
    public boolean task() {
        boolean task = super.task();
        l();
        return task;
    }
}
