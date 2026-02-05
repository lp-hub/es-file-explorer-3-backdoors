package com.estrongs.android.pop.view;

import android.view.View;
import android.widget.AdapterView;
import com.estrongs.android.ui.drag.DragLayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class be implements AdapterView.OnItemLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1338a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public be(FileExplorerActivity fileExplorerActivity) {
        this.f1338a = fileExplorerActivity;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        boolean z;
        boolean z2;
        DragLayer dragLayer;
        com.estrongs.android.ui.drag.d dVar;
        this.f1338a.i();
        com.estrongs.android.view.ar t = this.f1338a.t();
        if (t != null) {
            String u = this.f1338a.u();
            if (t instanceof com.estrongs.android.pop.app.diskusage.e) {
                this.f1338a.t = t.e(i - 1);
            } else {
                this.f1338a.t = t.e(i);
            }
            boolean z3 = false;
            if (t.A()) {
                if (!t.w().contains(this.f1338a.t)) {
                    adapterView.performItemClick(view, i, j);
                }
                z3 = true;
            } else {
                com.estrongs.android.ui.e.w wVar = this.f1338a.k;
                z = this.f1338a.f1119a;
                wVar.b(z);
                adapterView.performItemClick(view, i, j);
                z2 = this.f1338a.f1119a;
                if (!z2) {
                    this.f1338a.b(true);
                    this.f1338a.f1120b = true;
                }
            }
            if (!com.estrongs.android.util.ak.aU(u) && !com.estrongs.android.util.ak.aC(u) && !com.estrongs.android.util.ak.au(u) && !com.estrongs.android.util.ak.L(u) && !com.estrongs.android.util.ak.r(u) && !com.estrongs.android.util.ak.aE(u) && !com.estrongs.android.util.ak.W(u)) {
                dragLayer = this.f1338a.ay;
                if (dragLayer == null) {
                    this.f1338a.at();
                }
                dVar = this.f1338a.az;
                dVar.a(new bf(this, u));
                if (!com.estrongs.android.util.ak.bz(t.c())) {
                    this.f1338a.f.a(this.f1338a.t, t, z3);
                }
            }
        }
        return true;
    }
}
