package com.estrongs.android.pop.view;

import com.estrongs.android.pop.esclasses.ESActivity;
import java.util.List;

/* loaded from: classes.dex */
class bm implements com.estrongs.android.widget.an {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1348a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bm(FileExplorerActivity fileExplorerActivity) {
        this.f1348a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.widget.an
    public void a(List<com.estrongs.fs.g> list) {
        this.f1348a.l();
        com.estrongs.fs.g gVar = list.get(0);
        if (com.estrongs.android.util.ak.az(gVar.getPath())) {
            if (com.estrongs.android.util.ak.ag(gVar.getPath()) || com.estrongs.android.util.ak.ai(gVar.getPath())) {
                gVar = new com.estrongs.fs.m(gVar.getPath().endsWith("/") ? gVar.getPath() + "mine" : gVar.getPath() + "/mine");
            } else if (com.estrongs.android.util.ak.aj(gVar.getPath())) {
                gVar = new com.estrongs.fs.m(gVar.getPath().endsWith("/") ? gVar.getPath() + "/pictures".substring(1) : gVar.getPath() + "/pictures");
            }
        }
        com.estrongs.android.pop.utils.aj.a((ESActivity) this.f1348a, this.f1348a.z, gVar, this.f1348a.p);
    }
}
