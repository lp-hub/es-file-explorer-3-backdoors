package com.estrongs.android.pop.app.diskusage;

import android.widget.ListAdapter;
import android.widget.ListView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f679a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(e eVar) {
        this.f679a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.a.g gVar;
        com.estrongs.android.ui.a.g gVar2;
        ListView listView;
        com.estrongs.android.ui.a.g gVar3;
        gVar = this.f679a.aE;
        if (gVar != null) {
            gVar2 = this.f679a.aE;
            gVar2.a((b) null);
            listView = this.f679a.aG;
            gVar3 = this.f679a.aE;
            listView.setAdapter((ListAdapter) gVar3);
        }
    }
}
