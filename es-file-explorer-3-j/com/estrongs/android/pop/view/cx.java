package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cx implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1390a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cx(FileExplorerActivity fileExplorerActivity) {
        this.f1390a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.util.a aVar;
        com.estrongs.android.util.a aVar2;
        com.estrongs.android.pop.utils.y.a(this.f1390a);
        aVar = this.f1390a.aW;
        if (aVar != null) {
            aVar2 = this.f1390a.aW;
            aVar2.a("TaskManager_Show", "TaskManager_Show");
        }
    }
}
