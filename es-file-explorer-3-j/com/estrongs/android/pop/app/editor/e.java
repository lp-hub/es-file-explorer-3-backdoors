package com.estrongs.android.pop.app.editor;

/* loaded from: classes.dex */
class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ObservableScrollView f748a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(ObservableScrollView observableScrollView) {
        this.f748a = observableScrollView;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        int i;
        Runnable runnable;
        int i2;
        f fVar;
        f fVar2;
        obj = this.f748a.e;
        synchronized (obj) {
            int scrollY = this.f748a.getScrollY();
            i = this.f748a.c;
            if (i - scrollY == 0) {
                fVar = this.f748a.f714a;
                if (fVar != null) {
                    fVar2 = this.f748a.f714a;
                    fVar2.a();
                    this.f748a.f = false;
                }
            } else {
                this.f748a.c = this.f748a.getScrollY();
                ObservableScrollView observableScrollView = this.f748a;
                runnable = this.f748a.f715b;
                i2 = this.f748a.d;
                observableScrollView.postDelayed(runnable, i2);
            }
        }
    }
}
