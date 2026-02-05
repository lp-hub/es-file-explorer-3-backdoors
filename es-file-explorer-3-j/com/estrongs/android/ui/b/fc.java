package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class fc implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ fa f1812a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fc(fa faVar) {
        this.f1812a = faVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.a.a aVar;
        com.estrongs.a.a aVar2;
        com.estrongs.android.view.af afVar;
        com.estrongs.a.a aVar3;
        com.estrongs.android.view.af afVar2;
        com.estrongs.a.a aVar4;
        com.estrongs.a.a.k kVar;
        com.estrongs.a.a aVar5;
        aVar = this.f1812a.c.f1804a.r;
        if (aVar instanceof com.estrongs.fs.b.i) {
            this.f1812a.c.f1804a.setTitle(this.f1812a.c.f1804a.mContext.getString(C0000R.string.progress_copying));
        } else {
            aVar2 = this.f1812a.c.f1804a.r;
            if (aVar2 instanceof com.estrongs.fs.b.y) {
                this.f1812a.c.f1804a.setTitle(this.f1812a.c.f1804a.mContext.getString(C0000R.string.progress_moving));
            }
        }
        this.f1812a.c.f1804a.f();
        this.f1812a.c.f1804a.i = true;
        afVar = this.f1812a.c.f1804a.q;
        afVar.c(0);
        this.f1812a.c.f1804a.a((String) null);
        aVar3 = this.f1812a.c.f1804a.r;
        afVar2 = this.f1812a.c.f1804a.q;
        aVar3.addProgressListener(afVar2.c);
        aVar4 = this.f1812a.c.f1804a.r;
        kVar = this.f1812a.c.f1804a.l;
        aVar4.addTaskStatusChangeListener(kVar);
        this.f1812a.c.f1804a.g();
        aVar5 = this.f1812a.c.f1804a.r;
        aVar5.execute();
    }
}
