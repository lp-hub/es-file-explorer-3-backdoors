package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class de implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1399a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public de(FileExplorerActivity fileExplorerActivity) {
        this.f1399a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            com.estrongs.android.ui.a.s.a(this.f1399a);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
