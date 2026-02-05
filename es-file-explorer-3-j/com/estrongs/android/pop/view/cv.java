package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cv implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1388a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cv(FileExplorerActivity fileExplorerActivity) {
        this.f1388a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1388a.c("app://user");
    }
}
