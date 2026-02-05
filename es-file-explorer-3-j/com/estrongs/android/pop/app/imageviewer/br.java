package com.estrongs.android.pop.app.imageviewer;

/* loaded from: classes.dex */
class br implements m {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f986a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public br(ViewImage21 viewImage21) {
        this.f986a = viewImage21;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.m
    public void a(int i) {
        Runnable runnable;
        if (i == 2) {
            n nVar = this.f986a.f930b;
            runnable = this.f986a.F;
            nVar.removeCallbacks(runnable);
        }
    }
}
