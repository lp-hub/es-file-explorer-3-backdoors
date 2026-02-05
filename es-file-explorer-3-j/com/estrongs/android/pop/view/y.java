package com.estrongs.android.pop.view;

import java.util.List;

/* loaded from: classes.dex */
class y implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f1485a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(x xVar) {
        this.f1485a = xVar;
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x000d */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        List list;
        com.estrongs.android.ui.f.a aVar;
        List list2;
        while (list.size() > 0) {
            FileExplorerActivity fileExplorerActivity = this.f1485a.f1484a;
            list2 = this.f1485a.f1484a.at;
            fileExplorerActivity.a((com.estrongs.android.util.p<com.estrongs.android.view.ar, String>) list2.remove(0), false);
        }
        aVar = this.f1485a.f1484a.aS;
        if (aVar == null) {
            this.f1485a.f1484a.aI();
        }
    }
}
