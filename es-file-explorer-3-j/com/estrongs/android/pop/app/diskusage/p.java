package com.estrongs.android.pop.app.diskusage;

import com.estrongs.android.pop.utils.br;
import java.io.File;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements br {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f682a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(e eVar) {
        this.f682a = eVar;
    }

    @Override // com.estrongs.android.pop.utils.br
    public void a(List<com.estrongs.fs.g> list) {
        b bVar;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            File a2 = ((q) list.get(i)).a();
            bVar = this.f682a.ao;
            com.estrongs.fs.c.a a3 = bVar.a(a2);
            if (a3 != null) {
                this.f682a.a(a3);
            }
        }
    }
}
