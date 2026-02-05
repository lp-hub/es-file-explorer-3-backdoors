package com.estrongs.android.pop.view.utils;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class w implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        y b2;
        while (true) {
            hashMap = RemoteSynchronizer.f;
            synchronized (hashMap) {
                hashMap2 = RemoteSynchronizer.f;
                int i = 0;
                for (Map.Entry entry : hashMap2.entrySet()) {
                    String str = (String) entry.getKey();
                    ab abVar = (ab) entry.getValue();
                    if (abVar.f1433a && abVar.f1434b != null) {
                        abVar.f1434b.requestStop();
                    } else if (abVar.f1434b == null) {
                        abVar.f1433a = false;
                        b2 = RemoteSynchronizer.b(RemoteSynchronizer.d.get(str), abVar);
                        abVar.f1434b = b2;
                        new com.estrongs.android.ui.notification.e(FileExplorerActivity.E(), FexApplication.a().getString(C0000R.string.progress_synchronizing), abVar.f1434b);
                        abVar.f1434b.execute();
                    }
                    int i2 = i + 1;
                    if (i2 < 5) {
                        i = i2;
                    }
                }
                try {
                    hashMap3 = RemoteSynchronizer.f;
                    hashMap3.wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
