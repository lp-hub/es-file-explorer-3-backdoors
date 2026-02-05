package com.estrongs.android.pop.view;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements com.estrongs.android.ui.drag.c {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1422a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(FileExplorerActivity fileExplorerActivity) {
        this.f1422a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.ui.drag.c
    public void a(com.estrongs.android.ui.drag.j jVar, Object obj) {
        List<com.estrongs.fs.g> list = (List) obj;
        if (!com.estrongs.android.util.ak.Q(this.f1422a.u()) || com.estrongs.android.util.ak.X(this.f1422a.u())) {
            this.f1422a.a(list);
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                this.f1422a.M().a(arrayList);
                this.f1422a.l();
                return;
            } else {
                arrayList.add((com.estrongs.fs.impl.b.c) list.get(i2));
                i = i2 + 1;
            }
        }
    }

    @Override // com.estrongs.android.ui.drag.c
    public void b(com.estrongs.android.ui.drag.j jVar, Object obj) {
    }
}
