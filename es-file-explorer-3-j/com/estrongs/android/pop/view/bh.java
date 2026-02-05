package com.estrongs.android.pop.view;

import android.view.View;
import android.widget.AdapterView;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bh implements AdapterView.OnItemLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1342a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bh(FileExplorerActivity fileExplorerActivity) {
        this.f1342a = fileExplorerActivity;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.estrongs.android.view.ar t = this.f1342a.t();
        if (t == null || !(t.e(i) instanceof CreateSiteFileObject)) {
            return this.f1342a.R.onItemLongClick(adapterView, view, i, j);
        }
        return true;
    }
}
