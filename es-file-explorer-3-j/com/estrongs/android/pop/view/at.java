package com.estrongs.android.pop.view;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.TypedMap;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class at extends com.estrongs.android.ui.pcs.az {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1320a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public at(FileExplorerActivity fileExplorerActivity, Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, com.estrongs.android.view.bs bsVar) {
        super(activity, viewGroup, aVar, bsVar);
        this.f1320a = fileExplorerActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.estrongs.android.ui.pcs.v vVar) {
        com.estrongs.android.ui.pcs.d dVar = new com.estrongs.android.ui.pcs.d(this.f1320a);
        dVar.a(vVar);
        dVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.estrongs.android.ui.pcs.v vVar) {
        com.estrongs.android.ui.pcs.a aVar = new com.estrongs.android.ui.pcs.a(this.ad);
        aVar.a(vVar);
        aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.estrongs.fs.g gVar) {
        super.a(gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.ar
    public void a(com.estrongs.fs.b.t tVar, List<com.estrongs.fs.g> list) {
        if (com.estrongs.android.pop.utils.bs.a() && com.estrongs.android.pop.m.I && com.estrongs.android.util.ak.d(com.estrongs.android.util.ak.bp(this.f1320a.m.e("Market")), c()) && this.f1320a.m.n()) {
            com.estrongs.fs.impl.pcs.b a2 = com.estrongs.fs.impl.pcs.b.a();
            if (com.estrongs.android.ui.pcs.aw.a().c()) {
                if (!com.estrongs.android.ui.pcs.aw.a().d()) {
                    a2.setFileType(com.estrongs.fs.l.N);
                } else if (((int) ((System.currentTimeMillis() - this.f1320a.m.aw()) / 86400000)) < 15) {
                    a2.setFileType(com.estrongs.fs.l.P);
                } else {
                    a2.setFileType(com.estrongs.fs.l.O);
                }
            }
            list.add(0, a2);
        }
        super.a(tVar, list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.pcs.az, com.estrongs.android.view.ar
    public void a(com.estrongs.fs.g gVar, TypedMap typedMap) {
        boolean z;
        if ((gVar instanceof com.estrongs.fs.impl.local.b) && com.estrongs.android.util.ak.bE(gVar.getAbsolutePath())) {
            this.f1320a.c("recycle://");
            return;
        }
        if (gVar.getPath().endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files/")) {
            au auVar = new au(this, gVar, typedMap);
            if (!com.estrongs.android.ui.pcs.aw.a().c()) {
                if (this.f1320a.m.d()) {
                    this.f1320a.h.post(new av(this, auVar));
                    return;
                } else {
                    this.f1320a.h.post(new aw(this, auVar));
                    return;
                }
            }
            if (com.estrongs.android.ui.pcs.aw.a().d() && com.estrongs.android.ui.pcs.bt.b() && !this.N) {
                new com.estrongs.android.ui.pcs.bt(this.ad, gVar.getPath()).a();
            }
            this.f1320a.m.d(System.currentTimeMillis());
        }
        boolean z2 = com.estrongs.android.util.ak.aP(gVar.getAbsolutePath()) && !com.estrongs.android.util.ak.aU(gVar.getAbsolutePath());
        z = FileExplorerActivity.av;
        if (z || !((this.f1320a.F && z2) || (this.f1320a.G && !this.f1320a.H && H()))) {
            super.a(gVar, typedMap);
            return;
        }
        if (this.f1320a.G) {
            this.f1320a.H = true;
        }
        com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(this.f1320a).a(C0000R.string.lbl_input_password).b(C0000R.string.confirm_ok, new ay(this, gVar)).c(C0000R.string.confirm_cancel, new ax(this));
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f1320a).inflate(C0000R.layout.net_pincode, (ViewGroup) null);
        ((TextView) inflate.findViewById(C0000R.id.pincode_new_passwd_txt)).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_old_passwd_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_confirm_passwd_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
        c.a(inflate);
        com.estrongs.android.ui.b.ag a2 = c.a();
        a2.setOnDismissListener(new az(this));
        a2.getWindow().setSoftInputMode(5);
        a2.setCanceledOnTouchOutside(false);
        a2.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.ar
    public void a(List<com.estrongs.fs.g> list, com.estrongs.fs.c.a.a aVar) {
        super.a(list, aVar);
        if (list.contains(com.estrongs.fs.impl.pcs.b.a())) {
            list.remove(com.estrongs.fs.impl.pcs.b.a());
            list.add(0, com.estrongs.fs.impl.pcs.b.a());
        }
    }

    @Override // com.estrongs.android.view.ar
    public String c() {
        String c = super.c();
        return (c == null || !c.endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX/")) ? c : c.replace("PCS_DRIVE_Js1a7M5e_9yAcTvFX", "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files");
    }
}
