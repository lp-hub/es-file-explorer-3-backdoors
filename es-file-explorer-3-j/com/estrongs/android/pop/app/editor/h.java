package com.estrongs.android.pop.app.editor;

/* loaded from: classes.dex */
class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f750a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f751b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar, int i) {
        this.f751b = gVar;
        this.f750a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        ObservableScrollView observableScrollView;
        ReaderTextView readerTextView;
        observableScrollView = this.f751b.f749a.k;
        observableScrollView.scrollTo(0, this.f750a);
        readerTextView = this.f751b.f749a.h;
        readerTextView.a();
    }
}
