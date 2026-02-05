package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cn implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1380a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cn(FileExplorerActivity fileExplorerActivity) {
        this.f1380a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1380a.finish();
    }
}
