package com.estrongs.android.widget;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.view.bs;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p extends com.estrongs.android.view.ar {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f2931a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(g gVar, Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, bs bsVar, boolean z) {
        super(activity, viewGroup, aVar, bsVar, z);
        this.f2931a = gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.estrongs.fs.g gVar) {
        super.a(gVar);
    }

    @Override // com.estrongs.android.view.ar
    public boolean H() {
        return !U();
    }

    @Override // com.estrongs.android.view.an, com.estrongs.android.view.cq
    protected int a() {
        return C0000R.id.content_grid;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.ar
    public void a(com.estrongs.fs.g gVar, TypedMap typedMap) {
        Activity activity;
        Activity activity2;
        Activity activity3;
        boolean z = com.estrongs.android.util.ak.aP(gVar.getAbsolutePath()) && !com.estrongs.android.util.ak.aU(gVar.getAbsolutePath());
        if (!this.f2931a.f2918a) {
            activity = this.f2931a.r;
            if (com.estrongs.android.pop.q.a(activity).K() && z) {
                activity2 = this.f2931a.r;
                com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(activity2).a(C0000R.string.lbl_input_password).b(C0000R.string.confirm_ok, new r(this, gVar)).c(C0000R.string.confirm_cancel, new q(this));
                activity3 = this.f2931a.r;
                View inflate = com.estrongs.android.pop.esclasses.e.a(activity3).inflate(C0000R.layout.net_pincode, (ViewGroup) null);
                ((TextView) inflate.findViewById(C0000R.id.pincode_new_passwd_txt)).setVisibility(8);
                inflate.findViewById(C0000R.id.pincode_old_passwd_row).setVisibility(8);
                inflate.findViewById(C0000R.id.pincode_confirm_passwd_row).setVisibility(8);
                inflate.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
                c.a(inflate);
                com.estrongs.android.ui.b.ag a2 = c.a();
                a2.setOnDismissListener(new s(this));
                a2.getWindow().setSoftInputMode(5);
                a2.setCanceledOnTouchOutside(false);
                a2.show();
                return;
            }
        }
        super.a(gVar, typedMap);
    }
}
