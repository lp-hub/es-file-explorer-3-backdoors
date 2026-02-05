package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ah implements com.estrongs.android.ui.pcs.v {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1302a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(FileExplorerActivity fileExplorerActivity) {
        this.f1302a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.ui.pcs.v
    public void a(boolean z, String str, String str2) {
        if (z && com.estrongs.android.util.aw.b((CharSequence) str2)) {
            this.f1302a.m.d(System.currentTimeMillis());
            com.estrongs.android.view.ar t = this.f1302a.t();
            if (t != null && (t instanceof com.estrongs.android.ui.pcs.az) && com.estrongs.android.util.ak.aq(t.c())) {
                this.f1302a.k.d(20);
                this.f1302a.z();
                t.a(com.estrongs.android.ui.pcs.aw.a().h() + "/files");
            }
        }
    }
}
