package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fm implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ew f1823a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fm(ew ewVar) {
        this.f1823a = ewVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.a.a aVar;
        com.estrongs.a.a aVar2;
        com.estrongs.a.a aVar3;
        com.estrongs.android.view.af afVar;
        com.estrongs.a.a aVar4;
        aVar = this.f1823a.r;
        com.estrongs.android.ui.notification.e.b(aVar.getTaskId());
        aVar2 = this.f1823a.r;
        if (aVar2 instanceof com.estrongs.fs.b.i) {
            this.f1823a.setTitle(this.f1823a.mContext.getString(C0000R.string.progress_copying));
        } else {
            aVar3 = this.f1823a.r;
            if (aVar3 instanceof com.estrongs.fs.b.y) {
                this.f1823a.setTitle(this.f1823a.mContext.getString(C0000R.string.progress_moving));
            }
        }
        this.f1823a.f();
        this.f1823a.g();
        afVar = this.f1823a.q;
        afVar.c(0);
        this.f1823a.a((String) null);
        aVar4 = this.f1823a.r;
        aVar4.execute();
    }
}
