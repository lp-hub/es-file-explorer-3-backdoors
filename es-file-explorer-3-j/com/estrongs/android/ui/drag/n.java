package com.estrongs.android.ui.drag;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.ar;
import java.util.List;

/* loaded from: classes.dex */
class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f1961a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(m mVar) {
        this.f1961a = mVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        try {
            fileExplorerActivity = this.f1961a.f1960b.e;
            synchronized (fileExplorerActivity.y) {
                fileExplorerActivity2 = this.f1961a.f1960b.e;
                List<ar> list = fileExplorerActivity2.y;
                for (int i = 0; i < list.size(); i++) {
                    ar arVar = list.get(i);
                    if (this.f1961a.f1959a.equals(arVar.c())) {
                        if (i == com.estrongs.android.ui.d.e.a()) {
                            arVar.g();
                        } else {
                            arVar.j(true);
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
