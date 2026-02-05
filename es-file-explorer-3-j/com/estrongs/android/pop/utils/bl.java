package com.estrongs.android.pop.utils;

import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.ew;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bl implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f1231a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ List f1232b;
    final /* synthetic */ br c;
    final /* synthetic */ com.estrongs.android.view.ar d;
    final /* synthetic */ ESActivity e;
    final /* synthetic */ boolean f;
    final /* synthetic */ boolean g;
    final /* synthetic */ boolean h;
    final /* synthetic */ com.estrongs.a.a.k i;
    final /* synthetic */ bg j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bl(bg bgVar, boolean z, List list, br brVar, com.estrongs.android.view.ar arVar, ESActivity eSActivity, boolean z2, boolean z3, boolean z4, com.estrongs.a.a.k kVar) {
        this.j = bgVar;
        this.f1231a = z;
        this.f1232b = list;
        this.c = brVar;
        this.d = arVar;
        this.e = eSActivity;
        this.f = z2;
        this.g = z3;
        this.h = z4;
        this.i = kVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (this.f1231a) {
            this.f1232b.remove(com.estrongs.fs.impl.pcs.b.a());
        }
        if (this.c != null) {
            this.c.a(this.f1232b);
        }
        if (this.d != null) {
            this.d.a(false);
        }
        if (this.e instanceof FileExplorerActivity) {
            ((FileExplorerActivity) this.e).A();
        }
        if (this.f) {
            this.j.a(this.e, this.f1232b);
            return;
        }
        if (this.j.f1224a != null && this.j.f1224a.getTaskStatus() != 4) {
            this.j.f1224a.requestStop();
        }
        com.estrongs.fs.b.o oVar = new com.estrongs.fs.b.o(com.estrongs.fs.d.a(this.e), (List<com.estrongs.fs.g>) this.f1232b, this.g, this.h);
        oVar.setTaskDecisionListener(new com.estrongs.android.pop.g(this.e));
        oVar.setDescription(this.e.getString(!this.h ? C0000R.string.delete_task_description : C0000R.string.delete_task_description_for_recycle));
        oVar.addTaskStatusChangeListener(this.i);
        oVar.addPostListener(new bm(this));
        new ew(this.e, this.e.getString(C0000R.string.delete_task_description), oVar).show();
        oVar.execute();
    }
}
