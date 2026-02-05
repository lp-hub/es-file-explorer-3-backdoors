package com.estrongs.android.pop;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1115a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ d f1116b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar, String str) {
        this.f1116b = dVar;
        this.f1115a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        ((FileExplorerActivity) this.f1116b.f1113a).d(this.f1115a);
    }
}
