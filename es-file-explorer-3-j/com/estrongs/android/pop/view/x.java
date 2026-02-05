package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x implements com.estrongs.android.view.bs {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1484a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(FileExplorerActivity fileExplorerActivity) {
        this.f1484a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.view.bs
    public void a() {
        this.f1484a.ab();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
    
        if (r0 == 3) goto L10;
     */
    @Override // com.estrongs.android.view.bs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        this.f1484a.ab();
        i = this.f1484a.ag;
        if (i != 4) {
            i3 = this.f1484a.ag;
            if (i3 != 2) {
                i4 = this.f1484a.ag;
                if (i4 != 1) {
                    i5 = this.f1484a.ag;
                }
            }
        }
        com.estrongs.android.view.ar t = this.f1484a.t();
        if (t != null && t.h() != null && t.h().isEmpty()) {
            int a2 = com.estrongs.android.ui.d.e.a();
            FileExplorerActivity fileExplorerActivity = this.f1484a;
            i2 = this.f1484a.ag;
            fileExplorerActivity.b(i2 + 9, a2);
        }
        this.f1484a.h.postDelayed(new y(this), 1000L);
    }
}
