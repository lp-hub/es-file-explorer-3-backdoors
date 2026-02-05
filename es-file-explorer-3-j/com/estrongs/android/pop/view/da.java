package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class da implements com.estrongs.a.o {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1394a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public da(FileExplorerActivity fileExplorerActivity) {
        this.f1394a = fileExplorerActivity;
    }

    private void a() {
        synchronized (this.f1394a.y) {
            for (com.estrongs.android.view.ar arVar : this.f1394a.y) {
                if (arVar != null && "download://".equals(arVar.c())) {
                    this.f1394a.h.post(new db(this, arVar));
                    return;
                }
            }
        }
    }

    @Override // com.estrongs.a.o
    public void a(com.estrongs.a.a aVar) {
        a();
    }

    @Override // com.estrongs.a.o
    public void b(com.estrongs.a.a aVar) {
        a();
    }
}
