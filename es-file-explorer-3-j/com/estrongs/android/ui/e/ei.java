package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* loaded from: classes.dex */
class ei implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f2098a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ eh f2099b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ei(eh ehVar, List list) {
        this.f2099b = ehVar;
        this.f2098a = list;
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
        FileExplorerActivity fileExplorerActivity9;
        FileExplorerActivity fileExplorerActivity10;
        FileExplorerActivity fileExplorerActivity11;
        com.estrongs.android.util.ax c = com.estrongs.android.util.ax.c();
        fileExplorerActivity = this.f2099b.f2097a.l;
        c.a(fileExplorerActivity.W.c(), true);
        fileExplorerActivity2 = this.f2099b.f2097a.l;
        fileExplorerActivity2.p = true;
        fileExplorerActivity3 = this.f2099b.f2097a.l;
        fileExplorerActivity3.z.clear();
        fileExplorerActivity4 = this.f2099b.f2097a.l;
        fileExplorerActivity4.z.addAll(this.f2098a);
        fileExplorerActivity5 = this.f2099b.f2097a.l;
        com.estrongs.android.view.n a2 = com.estrongs.android.view.n.a(fileExplorerActivity5);
        List<com.estrongs.fs.g> list = this.f2098a;
        fileExplorerActivity6 = this.f2099b.f2097a.l;
        a2.a(list, fileExplorerActivity6.p);
        fileExplorerActivity7 = this.f2099b.f2097a.l;
        fileExplorerActivity7.m();
        fileExplorerActivity8 = this.f2099b.f2097a.l;
        fileExplorerActivity8.l();
        fileExplorerActivity9 = this.f2099b.f2097a.l;
        fileExplorerActivity10 = this.f2099b.f2097a.l;
        fileExplorerActivity9.a(fileExplorerActivity10.W.d(), true);
        fileExplorerActivity11 = this.f2099b.f2097a.l;
        fileExplorerActivity11.W.i();
    }
}
