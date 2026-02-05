package com.estrongs.android.view;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bc implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ar f2762a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bc(ar arVar) {
        this.f2762a = arVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.estrongs.fs.g e = this.f2762a.e(i);
        com.estrongs.fs.g a2 = e instanceof com.estrongs.fs.impl.m.a ? ((com.estrongs.fs.impl.m.a) e).a() : e;
        if (com.estrongs.android.util.ak.bz(this.f2762a.w)) {
            return;
        }
        if (a2.getFileType().a()) {
            this.f2762a.a(a2);
            com.estrongs.android.util.ax.c().a(a2.getAbsolutePath(), true);
        } else if (this.f2762a.y != null) {
            this.f2762a.y.a(e);
        }
    }
}
