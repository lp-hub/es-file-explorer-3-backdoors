package com.handmark.pulltorefresh.library;

/* loaded from: classes.dex */
class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PullToRefreshBase f3282a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(PullToRefreshBase pullToRefreshBase) {
        this.f3282a = pullToRefreshBase;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3282a.requestLayout();
    }
}
