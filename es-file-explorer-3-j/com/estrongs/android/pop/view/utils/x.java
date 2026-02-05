package com.estrongs.android.pop.view.utils;

import com.estrongs.android.pop.view.utils.RemoteSynchronizer;
import java.io.File;
import java.util.HashMap;

/* loaded from: classes.dex */
final class x implements com.estrongs.a.a.j {
    @Override // com.estrongs.a.a.j
    public void a(com.estrongs.a.a aVar, boolean z) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        y yVar = (y) aVar;
        hashMap = RemoteSynchronizer.f;
        synchronized (hashMap) {
            hashMap2 = RemoteSynchronizer.f;
            ab abVar = (ab) hashMap2.get(yVar.f1477a.path);
            if (abVar == null) {
                return;
            }
            if (abVar.f1433a) {
                abVar.f1434b = null;
                RemoteSynchronizer.d.get(yVar.f1477a.path).tmpPath = null;
                RemoteSynchronizer.b();
            } else {
                hashMap3 = RemoteSynchronizer.f;
                hashMap3.remove(yVar.f1477a.path);
                RemoteSynchronizer.d.remove(yVar.f1477a.path);
                RemoteSynchronizer.b();
            }
            hashMap4 = RemoteSynchronizer.f;
            hashMap4.notify();
            if (yVar.getTaskStatus() == 5 && yVar.getTaskResult().f229a == 1) {
                synchronized (RemoteSynchronizer.c) {
                    RemoteSynchronizer.RemoteFile remoteFile = RemoteSynchronizer.c.get(AppRunner.b(yVar.f1477a.path));
                    if (remoteFile != null) {
                        remoteFile.localFileLastModified = new File(yVar.f1477a.cachePath).lastModified();
                        RemoteSynchronizer.c();
                    }
                }
            }
        }
    }
}
