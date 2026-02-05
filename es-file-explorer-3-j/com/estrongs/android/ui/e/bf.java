package com.estrongs.android.ui.e;

import android.util.Log;
import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bf implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2004a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bf(w wVar) {
        this.f2004a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.ui.view.az azVar;
        com.estrongs.android.ui.b.t tVar;
        com.estrongs.android.ui.b.t tVar2;
        com.estrongs.android.ui.b.t tVar3;
        com.estrongs.android.ui.b.ag agVar;
        com.estrongs.android.ui.b.ag agVar2;
        com.estrongs.android.ui.b.ag agVar3;
        com.estrongs.android.ui.b.ag agVar4;
        com.estrongs.android.ui.b.ag agVar5;
        com.estrongs.android.ui.b.ag agVar6;
        com.estrongs.android.ui.b.w wVar;
        com.estrongs.android.ui.b.w wVar2;
        com.estrongs.android.ui.b.w wVar3;
        com.estrongs.android.ui.b.cq cqVar;
        com.estrongs.android.ui.b.cq cqVar2;
        com.estrongs.android.ui.b.cq cqVar3;
        try {
            azVar = this.f2004a.n;
        } catch (Throwable th) {
            Log.w("", "newItemClickListener.onMenuItemClick() catchs " + th.getMessage());
        }
        if (azVar.a()) {
            return true;
        }
        this.f2004a.k.i();
        com.estrongs.android.view.ar t = this.f2004a.k.t();
        if (t == null) {
            com.estrongs.android.ui.view.z.a(this.f2004a.k, this.f2004a.k.getString(C0000R.string.create_fail), 0).show();
            return false;
        }
        String c = t.c();
        if (com.estrongs.android.util.ak.I(c) || com.estrongs.android.util.ak.J(c)) {
            tVar = this.f2004a.I;
            if (tVar != null) {
                tVar3 = this.f2004a.I;
                if (tVar3.a()) {
                    return true;
                }
            }
            this.f2004a.I = new com.estrongs.android.ui.b.t(this.f2004a.f1968b);
            tVar2 = this.f2004a.I;
            tVar2.b();
            return true;
        }
        if (com.estrongs.android.util.ak.aV(c)) {
            cqVar = this.f2004a.L;
            if (cqVar != null) {
                cqVar3 = this.f2004a.L;
                if (cqVar3.a()) {
                    return true;
                }
            }
            this.f2004a.L = new com.estrongs.android.ui.b.cq(this.f2004a.f1968b);
            cqVar2 = this.f2004a.L;
            cqVar2.b();
            return true;
        }
        if (com.estrongs.android.util.ak.aD(c)) {
            wVar = this.f2004a.M;
            if (wVar != null) {
                wVar3 = this.f2004a.M;
                if (wVar3.a()) {
                    return true;
                }
            }
            this.f2004a.M = new com.estrongs.android.ui.b.w(this.f2004a.f1968b);
            wVar2 = this.f2004a.M;
            wVar2.b();
            return true;
        }
        if (com.estrongs.android.util.ak.aq(c)) {
            if (com.estrongs.android.util.ak.as(c)) {
                com.estrongs.android.ui.view.z.a(this.f2004a.f1968b, C0000R.string.create_fail, 0).show();
                return true;
            }
            com.estrongs.android.ui.b.ag agVar7 = new com.estrongs.android.ui.b.ag(this.f2004a.k);
            agVar7.setTitle(C0000R.string.action_new);
            agVar7.setSelectable(false);
            agVar7.setItems(new String[]{this.f2004a.k.getString(C0000R.string.category_file), this.f2004a.k.getString(C0000R.string.category_folder)}, -1, new bg(this));
            agVar7.show();
            return true;
        }
        if (!com.estrongs.android.util.ak.aO(c) && !com.estrongs.android.util.ak.aP(c)) {
            if (com.estrongs.android.util.ak.r(c)) {
                new com.estrongs.android.ui.c.l(this.f2004a.k).show();
                return true;
            }
            com.estrongs.android.ui.view.z.a(this.f2004a.k, this.f2004a.k.getString(C0000R.string.create_fail), 0).show();
            return false;
        }
        agVar = this.f2004a.H;
        if (agVar != null) {
            agVar6 = this.f2004a.H;
            if (agVar6.isShowing()) {
                return true;
            }
        }
        this.f2004a.H = new com.estrongs.android.ui.b.ag(this.f2004a.k);
        agVar2 = this.f2004a.H;
        agVar2.setTitle(C0000R.string.action_new);
        agVar3 = this.f2004a.H;
        agVar3.setSelectable(false);
        agVar4 = this.f2004a.H;
        agVar4.setItems(new String[]{this.f2004a.k.getString(C0000R.string.category_file), this.f2004a.k.getString(C0000R.string.category_folder)}, -1, new bh(this));
        agVar5 = this.f2004a.H;
        agVar5.show();
        return true;
    }
}
