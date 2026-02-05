package com.estrongs.android.pop.view.utils;

import com.estrongs.android.pop.view.utils.RemoteSynchronizer;
import com.estrongs.android.util.ak;
import com.estrongs.fs.FileSystemException;
import java.io.File;

/* loaded from: classes.dex */
class z implements com.estrongs.a.a.j {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1479a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f1480b;
    final /* synthetic */ y c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(y yVar, String str, com.estrongs.fs.g gVar) {
        this.c = yVar;
        this.f1479a = str;
        this.f1480b = gVar;
    }

    @Override // com.estrongs.a.a.j
    public void a(com.estrongs.a.a aVar, boolean z) {
        boolean z2;
        long j;
        long j2;
        boolean z3;
        int i = 0;
        if (aVar.getTaskStatus() == 4) {
            com.estrongs.fs.g a2 = com.estrongs.fs.d.a().a(this.c.f1477a.path, false, false);
            if (a2 == null) {
                this.c.a();
                return;
            }
            long lastModified = a2.lastModified();
            j = this.c.e;
            if (lastModified == j) {
                long length = a2.length();
                j2 = this.c.f;
                if (length == j2) {
                    try {
                        String l = com.estrongs.fs.c.d.l(ak.aY(a2.getPath()) + a2.getName() + ".old" + (this.f1479a == null ? "" : this.f1479a));
                        if (com.estrongs.fs.d.a().b(a2, ak.d(l), false)) {
                            this.c.d = true;
                            if (ak.an(this.c.f1477a.path) || ak.aq(this.c.f1477a.path) || ak.ao(this.c.f1477a.path)) {
                                boolean z4 = false;
                                while (i < 5 && !z4) {
                                    try {
                                        Thread.sleep(1000L);
                                        i++;
                                        z4 = com.estrongs.fs.d.a().b(com.estrongs.fs.d.a().j(this.c.f1477a.tmpPath), a2.getName(), false);
                                    } catch (Exception e) {
                                    }
                                }
                                z3 = z4;
                            } else {
                                z3 = com.estrongs.fs.d.a().b(com.estrongs.fs.d.a().j(this.c.f1477a.tmpPath), a2.getName(), false);
                            }
                            if (z3) {
                                if (ak.an(this.c.f1477a.path) || ak.aq(this.c.f1477a.path) || ak.ao(this.c.f1477a.path)) {
                                    try {
                                        Thread.sleep(1000L);
                                    } catch (InterruptedException e2) {
                                    }
                                }
                                com.estrongs.fs.d.a().a(com.estrongs.fs.d.a().j(l));
                                com.estrongs.fs.g a3 = com.estrongs.fs.d.a().a(a2.getPath(), false, false);
                                synchronized (RemoteSynchronizer.c) {
                                    RemoteSynchronizer.RemoteFile remoteFile = RemoteSynchronizer.c.get(AppRunner.b(a2.getPath()));
                                    if (a3 != null && remoteFile != null) {
                                        remoteFile.lastModified = a3.lastModified();
                                        remoteFile.size = a3.length();
                                        remoteFile.localFileLastModified = new File(this.c.f1477a.cachePath).lastModified();
                                        RemoteSynchronizer.c();
                                    }
                                    remoteFile.tmpPath = null;
                                }
                            }
                        }
                    } catch (FileSystemException e3) {
                        e3.printStackTrace();
                    }
                }
            }
            this.c.a();
            return;
        }
        this.c.a();
        z2 = this.c.d;
        if (z2) {
            com.estrongs.fs.a.b.a().a(ak.aY(this.f1480b.getPath()) + "*");
        }
    }
}
