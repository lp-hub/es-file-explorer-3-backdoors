package com.estrongs.android.pop.app.imageviewer;

import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bn implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f979a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(ViewImage21 viewImage21) {
        this.f979a = viewImage21;
    }

    @Override // java.lang.Runnable
    public void run() {
        a aVar;
        boolean z;
        o oVar;
        com.estrongs.android.pop.app.imageviewer.gallery.e a2 = this.f979a.e.a(this.f979a.c);
        aVar = this.f979a.G;
        aVar.b(a2);
        if (!this.f979a.e.b(this.f979a.c)) {
            com.estrongs.android.ui.view.z.a(this.f979a, com.estrongs.android.util.ak.d(a2.d()) + " " + this.f979a.getString(C0000R.string.operation_delete_fail), 1).show();
            return;
        }
        if (this.f979a.g != null) {
            this.f979a.g.b();
        }
        if (this.f979a.e.b() == 0) {
            this.f979a.finish();
            return;
        }
        ViewImage21 viewImage21 = this.f979a;
        int i = this.f979a.c;
        z = this.f979a.t;
        viewImage21.a(i, z);
        oVar = this.f979a.K;
        oVar.notifyDataSetChanged();
    }
}
