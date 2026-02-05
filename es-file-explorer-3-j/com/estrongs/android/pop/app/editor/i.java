package com.estrongs.android.pop.app.editor;

/* loaded from: classes.dex */
class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f752a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f753b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(g gVar, int i) {
        this.f753b = gVar;
        this.f752a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        ObservableScrollView observableScrollView;
        observableScrollView = this.f753b.f749a.j;
        observableScrollView.scrollTo(0, this.f752a);
    }
}
