package com.estrongs.android.ui.e;

import android.os.Build;
import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class ap implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1987a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(w wVar) {
        this.f1987a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f1987a.k.i();
        String ac = com.estrongs.android.pop.q.a(this.f1987a.f1968b).ac();
        if (ac == null) {
            ac = this.f1987a.f1968b.getString(C0000R.string.pcs_backup_path_hint, Build.MODEL);
        }
        com.estrongs.android.ui.b.bd bdVar = new com.estrongs.android.ui.b.bd(this.f1987a.f1968b, this.f1987a.f1968b.getString(C0000R.string.pcs_backup_set_path), ac, false);
        bdVar.a(new aq(this));
        bdVar.a();
        return true;
    }
}
