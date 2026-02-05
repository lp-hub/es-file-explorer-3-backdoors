package com.estrongs.fs.impl.local;

import android.net.LocalSocket;
import java.io.File;

/* loaded from: classes.dex */
public class b extends com.estrongs.fs.a {
    public b(LocalSocket localSocket, File file) {
        this(localSocket, file, true);
    }

    public b(LocalSocket localSocket, File file, boolean z) {
        super(file.getPath());
        File[] listFiles;
        setName(file.getName());
        this.size = file.length();
        this.lastModified = file.lastModified();
        this.isLink = false;
        if (localSocket != null) {
            try {
                this.isLink = com.estrongs.android.e.c.a(localSocket, file.getAbsolutePath());
            } catch (Exception e) {
            }
        }
        if (!file.isDirectory()) {
            this.type = com.estrongs.fs.l.f3184b;
            return;
        }
        this.type = com.estrongs.fs.l.f3183a;
        if (getExtra("child_count") == null && z && (listFiles = file.listFiles()) != null) {
            putExtra("child_count", Integer.valueOf(listFiles.length));
        }
    }

    public b(File file) {
        this(null, file, true);
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean exists() {
        return new File(getAbsolutePath()).exists();
    }
}
