package com.estrongs.android.ui.g;

import android.view.View;
import com.estrongs.android.ui.a.ce;
import com.estrongs.android.util.ax;

/* loaded from: classes.dex */
class d implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f2224a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        this.f2224a = cVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ce ceVar;
        ax.c().f();
        ax.c().g();
        ax.c().d();
        ceVar = this.f2224a.j;
        ceVar.notifyDataSetChanged();
        this.f2224a.g();
    }
}
