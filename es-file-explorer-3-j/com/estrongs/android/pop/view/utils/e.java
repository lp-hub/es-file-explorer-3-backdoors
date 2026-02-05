package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.utils.RemoteSynchronizer;
import com.estrongs.android.ui.b.ew;
import com.estrongs.android.util.ak;
import java.io.File;
import java.text.MessageFormat;

/* loaded from: classes.dex */
class e extends ew {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RemoteSynchronizer.RemoteFile f1443a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1444b;
    final /* synthetic */ d c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(d dVar, Activity activity, String str, com.estrongs.a.a aVar, RemoteSynchronizer.RemoteFile remoteFile, String str2) {
        super(activity, str, aVar);
        this.c = dVar;
        this.f1443a = remoteFile;
        this.f1444b = str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.ew
    public String a() {
        return null;
    }

    @Override // com.estrongs.android.ui.b.ew
    protected String b() {
        return MessageFormat.format(this.c.c.c.getString(C0000R.string.cancelled_to_open), this.c.f1442b.getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.ew
    public void b(com.estrongs.a.a aVar) {
        if (this.c.c.e && this.c.f1441a) {
            RemoteSynchronizer.a(ak.aY(this.c.c.d));
            RemoteSynchronizer.RemoteFile remoteFile = this.f1443a != null ? this.f1443a : new RemoteSynchronizer.RemoteFile(this.c.f1442b);
            com.estrongs.fs.g a2 = com.estrongs.fs.d.a().a(this.c.f1442b.getPath(), false, false);
            synchronized (RemoteSynchronizer.c) {
                if (a2 != null) {
                    if (remoteFile.lastModified != a2.lastModified() || remoteFile.size != a2.length()) {
                        remoteFile.lastModified = a2.lastModified();
                        remoteFile.size = a2.length();
                    }
                }
                RemoteSynchronizer.c.put(this.f1444b, remoteFile);
                remoteFile.cachePath = this.c.c.d;
                remoteFile.localFileLastModified = new File(this.c.c.d).lastModified();
                RemoteSynchronizer.c();
            }
        }
        com.estrongs.android.pop.utils.a.a(this.c.c.c, this.c.c.g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.ew
    public void c(com.estrongs.a.a aVar) {
        com.estrongs.android.pop.utils.a.a(this.c.c.c, (CharSequence) MessageFormat.format(this.c.c.c.getString(C0000R.string.failed_to_copy), this.c.f1442b.getName()));
    }
}
