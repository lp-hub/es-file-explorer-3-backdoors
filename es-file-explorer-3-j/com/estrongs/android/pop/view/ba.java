package com.estrongs.android.pop.view;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.TypedMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ba extends com.estrongs.android.view.ar {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1333a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ba(FileExplorerActivity fileExplorerActivity, Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, com.estrongs.android.view.bs bsVar) {
        super(activity, viewGroup, aVar, bsVar);
        this.f1333a = fileExplorerActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.estrongs.fs.g gVar) {
        super.a(gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.ar
    public void a(com.estrongs.fs.g gVar, TypedMap typedMap) {
        boolean z;
        if ((gVar instanceof com.estrongs.fs.impl.local.b) && com.estrongs.android.util.ak.bE(gVar.getAbsolutePath())) {
            this.f1333a.c("recycle://");
            return;
        }
        boolean z2 = com.estrongs.android.util.ak.aP(gVar.getAbsolutePath()) && !com.estrongs.android.util.ak.aU(gVar.getAbsolutePath());
        z = FileExplorerActivity.av;
        if (z || !((this.f1333a.F && z2) || (this.f1333a.G && !this.f1333a.H && H()))) {
            super.a(gVar, typedMap);
            return;
        }
        if (this.f1333a.G) {
            this.f1333a.H = true;
        }
        com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(this.f1333a).a(C0000R.string.lbl_input_password).b(C0000R.string.confirm_ok, new bc(this, gVar)).c(C0000R.string.confirm_cancel, new bb(this));
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f1333a).inflate(C0000R.layout.net_pincode, (ViewGroup) null);
        ((TextView) inflate.findViewById(C0000R.id.pincode_new_passwd_txt)).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_old_passwd_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_confirm_passwd_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
        c.a(inflate);
        com.estrongs.android.ui.b.ag a2 = c.a();
        a2.setOnDismissListener(new bd(this));
        a2.getWindow().setSoftInputMode(5);
        a2.setCanceledOnTouchOutside(false);
        a2.show();
    }
}
