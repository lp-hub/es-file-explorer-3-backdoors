package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class df implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1400a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public df(FileExplorerActivity fileExplorerActivity) {
        this.f1400a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            com.estrongs.android.ui.a.s.b(this.f1400a);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
