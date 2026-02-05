package com.estrongs.fs.impl.i;

import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.l;

/* loaded from: classes.dex */
public class a extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    private NetFileInfo f3085a;

    public a(NetFileInfo netFileInfo) {
        super(netFileInfo.path);
        this.f3085a = null;
        this.f3085a = netFileInfo;
        setName(netFileInfo.name);
    }

    public void a(String str) {
        this.path = str;
    }

    public void b(String str) {
        this.absolutePath = str;
    }

    @Override // com.estrongs.fs.a
    protected boolean canDelete() {
        return !this.f3085a.isDirectory || this.f3085a.folder_type == 0 || this.f3085a.folder_type == 64;
    }

    @Override // com.estrongs.fs.a
    protected boolean canRead() {
        return true;
    }

    @Override // com.estrongs.fs.a
    protected boolean canWrite() {
        return canDelete();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long createdTime() {
        return 0L;
    }

    @Override // com.estrongs.fs.a
    protected l doGetFileType() {
        return this.f3085a.isDirectory ? l.f3183a : l.f3184b;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean exists() {
        try {
            return b.e(this.f3085a.path);
        } catch (Exception e) {
            throw new FileSystemException(e);
        }
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public l getFileType() {
        if (this.type == l.M) {
            this.type = doGetFileType();
        }
        return this.type;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean hasPermission(int i) {
        switch (i) {
            case 0:
                return canRead();
            case 1:
                return canWrite();
            case 2:
                return canDelete();
            default:
                return false;
        }
    }

    @Override // com.estrongs.fs.a
    public long lastAccessed() {
        return 0L;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long lastModified() {
        return this.f3085a.lastModifiedTime;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long length() {
        return this.f3085a.size;
    }

    @Override // com.estrongs.fs.a
    public String toString() {
        return getAbsolutePath();
    }
}
