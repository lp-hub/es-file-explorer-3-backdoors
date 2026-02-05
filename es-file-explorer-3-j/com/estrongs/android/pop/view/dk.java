package com.estrongs.android.pop.view;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dk implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1405a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dk(FileExplorerActivity fileExplorerActivity) {
        this.f1405a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            synchronized (this.f1405a.y) {
                List<com.estrongs.android.view.ar> list = this.f1405a.y;
                for (int i = 0; i < list.size(); i++) {
                    com.estrongs.android.view.ar arVar = list.get(i);
                    if (arVar != null && com.estrongs.android.util.ak.P(arVar.c())) {
                        if (arVar == this.f1405a.t()) {
                            arVar.g();
                        } else {
                            arVar.a(true, true);
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
