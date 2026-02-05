package com.estrongs.android.ui.e;

import android.view.MenuItem;

/* loaded from: classes.dex */
class y implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2195a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(w wVar) {
        this.f2195a = wVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0061, code lost:
    
        if (r0.isShowing() == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0026, code lost:
    
        if (r0.isShowing() != false) goto L8;
     */
    @Override // android.view.MenuItem.OnMenuItemClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.ui.b.cx cxVar;
        com.estrongs.android.ui.b.cx cxVar2;
        com.estrongs.android.ui.b.cx cxVar3;
        com.estrongs.android.ui.b.cx cxVar4;
        com.estrongs.android.ui.b.ba baVar;
        com.estrongs.android.ui.b.ba baVar2;
        com.estrongs.android.ui.b.ba baVar3;
        com.estrongs.android.ui.b.ba baVar4;
        this.f2195a.k.i();
        if (this.f2195a.k.t() instanceof com.estrongs.android.pop.app.diskusage.e) {
            baVar = this.f2195a.K;
            if (baVar != null) {
                baVar4 = this.f2195a.K;
            }
            this.f2195a.K = new com.estrongs.android.ui.b.ba(this.f2195a.f1968b);
            baVar2 = this.f2195a.K;
            baVar2.a(new z(this));
            baVar3 = this.f2195a.K;
            baVar3.show();
        } else {
            cxVar = this.f2195a.J;
            if (cxVar != null) {
                cxVar4 = this.f2195a.J;
            }
            this.f2195a.J = new com.estrongs.android.ui.b.cx(this.f2195a.f1968b);
            cxVar2 = this.f2195a.J;
            cxVar2.a(new ab(this));
            cxVar3 = this.f2195a.J;
            cxVar3.show();
        }
        return true;
    }
}
