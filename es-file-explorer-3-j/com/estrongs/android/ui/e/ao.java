package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ao implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1986a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(w wVar) {
        this.f1986a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        String[] strArr;
        com.estrongs.android.view.ar t;
        w wVar = this.f1986a;
        strArr = this.f1986a.y;
        wVar.a(strArr);
        com.estrongs.android.ui.pcs.aw a2 = com.estrongs.android.ui.pcs.aw.a();
        if (a2 != null) {
            a2.a(0);
            a2.a((String) null);
        }
        com.estrongs.android.pop.q a3 = com.estrongs.android.pop.q.a(this.f1986a.f1968b);
        a3.f(null, null);
        if ((this.f1986a.f1968b instanceof FileExplorerActivity) && (t = this.f1986a.k.t()) != null) {
            com.estrongs.fs.impl.i.b.l(t.c());
            if (com.estrongs.android.util.ak.ao(t.c())) {
                t.a(a3.e("Market"));
            } else {
                t.a("pcs://");
            }
        }
        com.estrongs.fs.a.b.a().a(com.estrongs.android.util.ak.g(), (String) null);
        if (com.estrongs.android.util.aw.b((CharSequence) com.estrongs.android.ui.pcs.aw.a().g())) {
            com.estrongs.fs.a.b.a().a(com.estrongs.android.ui.pcs.aw.a().i(), (String) null);
        }
        com.estrongs.fs.impl.pcs.b.a().setFileType(com.estrongs.fs.l.O);
        com.estrongs.android.util.a a4 = com.estrongs.android.util.a.a();
        if (a4 != null) {
            a4.a("Press_Logout", "Press_Logout");
        }
        return false;
    }
}
