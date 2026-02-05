package com.estrongs.android.pop.view.utils;

import android.os.FileObserver;
import com.estrongs.android.pop.view.utils.RemoteSynchronizer;
import java.io.File;

/* loaded from: classes.dex */
public class aa extends FileObserver {

    /* renamed from: a, reason: collision with root package name */
    private String f1432a;

    public aa(String str) {
        super(str);
        this.f1432a = str;
    }

    @Override // android.os.FileObserver
    public void onEvent(int i, String str) {
        RemoteSynchronizer.RemoteFile remoteFile;
        RemoteSynchronizer.RemoteFile remoteFile2;
        switch (i) {
            case 8:
                synchronized (RemoteSynchronizer.c) {
                    remoteFile2 = RemoteSynchronizer.c.get(str);
                }
                if (remoteFile2 != null) {
                    File file = new File(this.f1432a, str);
                    remoteFile2.cachePath = file.getPath();
                    remoteFile2.localFileLastModified = file.lastModified();
                    RemoteSynchronizer.a(remoteFile2);
                    return;
                }
                return;
            case 128:
                synchronized (RemoteSynchronizer.c) {
                    remoteFile = RemoteSynchronizer.c.get(str);
                }
                if (remoteFile != null) {
                    File file2 = new File(this.f1432a, str);
                    remoteFile.cachePath = file2.getPath();
                    remoteFile.localFileLastModified = file2.lastModified();
                    RemoteSynchronizer.a(remoteFile);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
