package com.estrongs.android.pop.app.network;

import android.view.View;
import android.widget.AdapterView;
import com.estrongs.android.f.j;
import com.estrongs.android.ui.b.gi;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EsNetworkActivity f1072a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(EsNetworkActivity esNetworkActivity) {
        this.f1072a = esNetworkActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.estrongs.android.f.h hVar;
        com.estrongs.android.f.h hVar2;
        gi giVar;
        hVar = this.f1072a.n;
        j b2 = hVar.b(i - 1);
        if (b2 != null) {
            EsNetworkActivity esNetworkActivity = this.f1072a;
            EsNetworkActivity esNetworkActivity2 = this.f1072a;
            hVar2 = this.f1072a.n;
            esNetworkActivity.d = new gi(esNetworkActivity2, hVar2, b2);
            giVar = this.f1072a.d;
            giVar.show();
        }
    }
}
