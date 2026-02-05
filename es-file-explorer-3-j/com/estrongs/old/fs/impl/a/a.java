package com.estrongs.old.fs.impl.a;

import com.estrongs.fs.l;
import org.apache.commons.net.ftp.FTPFile;

/* loaded from: classes.dex */
public class a extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    private FTPFile f3229a;

    public a(FTPFile fTPFile, String str, String str2) {
        super(str);
        this.f3229a = fTPFile;
        setName(fTPFile.getName());
        if (str2 != null) {
            this.isLink = true;
            this.linkTarget = str2;
        }
    }

    @Override // com.estrongs.fs.a
    protected boolean canDelete() {
        return canWrite();
    }

    @Override // com.estrongs.fs.a
    protected boolean canRead() {
        return this.f3229a.hasPermission(0, 0);
    }

    @Override // com.estrongs.fs.a
    protected boolean canWrite() {
        return this.f3229a.hasPermission(0, 1);
    }

    @Override // com.estrongs.fs.a
    protected l doGetFileType() {
        return this.f3229a.isDirectory() ? l.f3183a : l.f3184b;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean exists() {
        return c.a().b(getAbsolutePath());
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long lastModified() {
        return this.f3229a.getTimestamp().getTimeInMillis();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long length() {
        return this.f3229a.getSize();
    }
}
