package com.estrongs.android.pop.view;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bu implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1358a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bu(FileExplorerActivity fileExplorerActivity) {
        this.f1358a = fileExplorerActivity;
    }

    /* JADX WARN: Incorrect condition in loop: B:8:0x003c */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        List list;
        List list2;
        boolean z;
        List list3;
        List list4;
        com.estrongs.android.view.ar arVar;
        int a2 = com.estrongs.android.ui.d.e.a();
        list = this.f1358a.at;
        if (com.estrongs.android.util.aw.a((List<?>) list, a2)) {
            list2 = this.f1358a.at;
            com.estrongs.android.util.p pVar = (com.estrongs.android.util.p) list2.remove(a2);
            if (pVar != null) {
                try {
                    z = com.estrongs.android.util.ak.aq((String) pVar.f2707b);
                } catch (Exception e) {
                    z = false;
                }
                this.f1358a.a((com.estrongs.android.util.p<com.estrongs.android.view.ar, String>) pVar, true);
            } else {
                z = false;
            }
            if (z) {
                return;
            }
            for (int i = 0; i < list3.size(); i++) {
                list4 = this.f1358a.at;
                com.estrongs.android.util.p pVar2 = (com.estrongs.android.util.p) list4.get(i);
                if (pVar2 != null && (arVar = (com.estrongs.android.view.ar) pVar2.f2706a) != null && (arVar instanceof com.estrongs.android.ui.pcs.az) && com.estrongs.android.util.ak.aq((String) pVar2.f2707b)) {
                    ((com.estrongs.android.ui.pcs.az) arVar).b((String) pVar2.f2707b);
                    return;
                }
            }
        }
    }
}
