package com.estrongs.fs.impl.o;

import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.l;
import java.net.MalformedURLException;
import jcifs.smb.SmbException;
import jcifs.smb.SmbFile;

/* loaded from: classes.dex */
public class a extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    protected boolean f3151a;

    /* renamed from: b, reason: collision with root package name */
    protected boolean f3152b;

    public a(SmbFile smbFile, String str) {
        super(str);
        String str2;
        SmbException e;
        this.f3151a = true;
        this.f3152b = true;
        String name = smbFile.getName();
        try {
            str2 = (smbFile.isDirectory() && name.endsWith("/")) ? name.substring(0, name.length() - 1) : name;
            try {
                this.size = smbFile.length();
                this.f3151a = smbFile.canWrite();
                this.f3152b = smbFile.canRead();
                this.lastModified = smbFile.getLastModified();
                if (smbFile.isDirectory()) {
                    this.type = l.f3183a;
                } else {
                    this.type = l.f3184b;
                }
            } catch (SmbException e2) {
                e = e2;
                e.printStackTrace();
                setName(str2);
            }
        } catch (SmbException e3) {
            str2 = name;
            e = e3;
        }
        setName(str2);
    }

    @Override // com.estrongs.fs.a
    protected boolean canDelete() {
        return canWrite();
    }

    @Override // com.estrongs.fs.a
    protected boolean canRead() {
        return this.f3152b;
    }

    @Override // com.estrongs.fs.a
    protected boolean canWrite() {
        return this.f3151a;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean exists() {
        try {
            return new SmbFile(getAbsolutePath()).exists();
        } catch (MalformedURLException e) {
            throw new FileSystemException(e);
        } catch (SmbException e2) {
            throw new FileSystemException(e2);
        }
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public void setName(String str) {
        boolean z = this.name != null;
        super.setName(str);
        if (z && getFileType().a()) {
            if (!this.path.endsWith("/")) {
                this.path += "/";
            }
            if (this.absolutePath.endsWith("/")) {
                return;
            }
            this.absolutePath += "/";
        }
    }
}
