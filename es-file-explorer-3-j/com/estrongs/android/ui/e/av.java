package com.estrongs.android.ui.e;

import android.content.Intent;
import android.net.Uri;
import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class av implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1993a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public av(w wVar) {
        this.f1993a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.ui.pcs.aw a2 = com.estrongs.android.ui.pcs.aw.a();
        if (!a2.c()) {
            return false;
        }
        if (a2.e() != 2) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("http://0.esfileexplorer.duapp.com/notify/1t"));
            try {
                this.f1993a.f1968b.startActivity(intent);
                return false;
            } catch (Exception e) {
                return false;
            }
        }
        com.estrongs.android.view.ar t = this.f1993a.k.t();
        if (t == null) {
            return false;
        }
        this.f1993a.a(t.c(), this.f1993a.k.getString(C0000R.string.pcs_expansion));
        return false;
    }
}
