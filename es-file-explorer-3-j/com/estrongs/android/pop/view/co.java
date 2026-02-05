package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class co implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1381a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public co(FileExplorerActivity fileExplorerActivity) {
        this.f1381a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            com.estrongs.android.ui.f.f.a(this.f1381a);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
