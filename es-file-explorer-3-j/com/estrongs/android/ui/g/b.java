package com.estrongs.android.ui.g;

import android.view.View;
import com.estrongs.android.ui.a.ce;
import com.estrongs.android.util.ax;

/* loaded from: classes.dex */
class b implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2223a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f2223a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ce ceVar;
        ax.c().f();
        ax.c().g();
        ax.c().d();
        ceVar = this.f2223a.h;
        ceVar.notifyDataSetChanged();
        this.f2223a.g();
    }
}
