package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dr implements AdapterView.OnItemLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f693a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dr(PopAudioPlayer popAudioPlayer) {
        this.f693a = popAudioPlayer;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.estrongs.android.ui.view.v vVar;
        com.estrongs.android.ui.view.v vVar2;
        vVar = this.f693a.U;
        if (vVar.b()) {
            adapterView.performItemClick(view, i, j);
        } else {
            vVar2 = this.f693a.U;
            vVar2.a(true);
            adapterView.performItemClick(view, i, j);
        }
        return true;
    }
}
