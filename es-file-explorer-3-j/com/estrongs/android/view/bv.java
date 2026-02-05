package com.estrongs.android.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bv implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bu f2789a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bv(bu buVar) {
        this.f2789a = buVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.f2789a.l) {
            if (this.f2789a.e(i) instanceof CreateSiteFileObject) {
                return;
            }
            CheckBox checkBox = ((com.estrongs.android.widget.e) view.getTag()).i;
            checkBox.setChecked(!checkBox.isChecked());
            this.f2789a.c(i);
            return;
        }
        com.estrongs.fs.g e = this.f2789a.e(i);
        if (!com.estrongs.android.util.ak.al(e.getPath()) || com.estrongs.android.ui.pcs.aw.a().c()) {
            if (this.f2789a.h != null) {
                this.f2789a.h.onItemClick(adapterView, view, i, j);
            }
        } else {
            new com.estrongs.android.ui.b.aq(this.f2789a.ad).a(C0000R.string.category_pcs).b(C0000R.string.sp_pcs_login_register).d(C0000R.string.action_login, new ca(this, e)).e(C0000R.string.register, new by(this, e)).f(C0000R.string.toolbar_directly, new bw(this, e)).a().show();
            com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
            if (a2 != null) {
                a2.b("PCS_Home_Page_UV", "PCS_Home_Page_UV");
            }
        }
    }
}
