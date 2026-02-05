package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class em implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f2103a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ el f2104b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public em(el elVar, List list) {
        this.f2104b = elVar;
        this.f2103a = list;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        FileExplorerActivity fileExplorerActivity5;
        FileExplorerActivity fileExplorerActivity6;
        FileExplorerActivity fileExplorerActivity7;
        FileExplorerActivity fileExplorerActivity8;
        com.estrongs.android.util.ax c = com.estrongs.android.util.ax.c();
        fileExplorerActivity = this.f2104b.f2102a.l;
        c.a(fileExplorerActivity.W.c(), true);
        fileExplorerActivity2 = this.f2104b.f2102a.l;
        fileExplorerActivity2.p = false;
        fileExplorerActivity3 = this.f2104b.f2102a.l;
        fileExplorerActivity3.z.clear();
        fileExplorerActivity4 = this.f2104b.f2102a.l;
        fileExplorerActivity4.z.addAll(this.f2103a);
        fileExplorerActivity5 = this.f2104b.f2102a.l;
        fileExplorerActivity5.l();
        fileExplorerActivity6 = this.f2104b.f2102a.l;
        fileExplorerActivity7 = this.f2104b.f2102a.l;
        fileExplorerActivity6.a(fileExplorerActivity7.W.d(), true);
        fileExplorerActivity8 = this.f2104b.f2102a.l;
        fileExplorerActivity8.W.i();
    }
}
