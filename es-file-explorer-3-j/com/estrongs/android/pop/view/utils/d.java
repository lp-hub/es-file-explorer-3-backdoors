package com.estrongs.android.pop.view.utils;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.utils.RemoteSynchronizer;
import com.estrongs.android.util.ak;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f1441a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f1442b;
    final /* synthetic */ c c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar, boolean z, com.estrongs.fs.g gVar) {
        this.c = cVar;
        this.f1441a = z;
        this.f1442b = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        RemoteSynchronizer.RemoteFile remoteFile;
        RemoteSynchronizer.RemoteFile remove;
        String d = ak.d(this.c.d);
        if (this.c.e && this.f1441a) {
            synchronized (RemoteSynchronizer.c) {
                remove = RemoteSynchronizer.c.remove(d);
            }
            remoteFile = remove;
        } else {
            remoteFile = null;
        }
        com.estrongs.fs.b.i iVar = new com.estrongs.fs.b.i(this.c.f1439a, this.f1442b, new com.estrongs.fs.impl.local.b(new File(this.c.f.getAbsolutePath())), d);
        iVar.processData.p = false;
        iVar.processData.k = false;
        e eVar = new e(this, this.c.c, this.c.c.getString(C0000R.string.progress_loading), iVar, remoteFile, d);
        iVar.c(false);
        eVar.a(this.c.c.getString(C0000R.string.please_wait_message), this.c.c.getString(C0000R.string.wait_open_remotely));
        eVar.setSingleButton(this.c.c.getString(C0000R.string.confirm_cancel), eVar.f);
        eVar.a(false).show();
        iVar.execute();
    }
}
