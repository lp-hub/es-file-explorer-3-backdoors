package com.estrongs.android.pop.view.utils;

import com.estrongs.android.pop.view.utils.RemoteSynchronizer;
import com.estrongs.android.util.ak;
import com.estrongs.fs.FileSystemException;
import java.io.File;
import java.util.HashMap;

/* loaded from: classes.dex */
public class y extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    protected RemoteSynchronizer.RemoteFile f1477a;
    private ab c;
    private long e;
    private long f;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.fs.b.i f1478b = null;
    private boolean d = false;

    public y(RemoteSynchronizer.RemoteFile remoteFile, ab abVar) {
        this.f1477a = remoteFile;
        this.c = abVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        try {
            if (com.estrongs.fs.d.a().a(com.estrongs.fs.d.a().j(this.f1477a.tmpPath))) {
                this.f1477a.tmpPath = null;
            }
        } catch (FileSystemException e) {
            e.printStackTrace();
        }
    }

    @Override // com.estrongs.a.a
    public void addProgressListener(com.estrongs.a.a.h hVar) {
        super.addProgressListener(hVar);
        if (this.f1478b == null || this.f1478b.getTaskStatus() != 2) {
            return;
        }
        this.f1478b.addProgressListener(hVar);
    }

    @Override // com.estrongs.a.a
    public void requestStop() {
        if (this.f1478b != null && this.f1478b.getTaskStatus() == 2) {
            this.f1478b.requestStop();
        }
        super.requestStop();
    }

    @Override // com.estrongs.a.a
    public boolean task() {
        HashMap hashMap;
        com.estrongs.fs.g a2 = com.estrongs.fs.d.a().a(this.f1477a.path, false, false);
        if (a2 == null) {
            return false;
        }
        try {
            if (this.f1477a.tmpPath != null) {
                if (com.estrongs.fs.d.a().a(com.estrongs.fs.d.a().j(this.f1477a.tmpPath))) {
                    this.d = true;
                }
            }
        } catch (FileSystemException e) {
            e.printStackTrace();
        } finally {
            this.f1477a.tmpPath = null;
        }
        this.e = this.f1477a.lastModified;
        this.f = this.f1477a.size;
        if (a2.lastModified() != this.e || a2.length() != this.f) {
            return false;
        }
        String bk = ak.bk(a2.getName());
        this.f1477a.tmpPath = com.estrongs.fs.c.d.l(ak.aY(a2.getPath()) + a2.getName() + ".new" + (bk == null ? "" : bk));
        hashMap = RemoteSynchronizer.f;
        synchronized (hashMap) {
            RemoteSynchronizer.b();
        }
        this.f1478b = new com.estrongs.fs.b.i(com.estrongs.fs.d.a(), new com.estrongs.fs.impl.local.b(new File(this.f1477a.cachePath)), com.estrongs.fs.d.a().j(ak.aY(this.f1477a.tmpPath)), ak.d(this.f1477a.tmpPath));
        this.f1478b.d(false);
        this.f1478b.e(true);
        this.f1478b.addProgressListeners(getProgressListeners());
        this.f1478b.addPostListener(new z(this, bk, a2));
        this.f1478b.execute(false);
        if (this.f1478b.getTaskStatus() == 4) {
            return true;
        }
        com.estrongs.a.p taskResult = this.f1478b.getTaskResult();
        setTaskResult(taskResult.f229a, taskResult.f230b);
        return false;
    }
}
