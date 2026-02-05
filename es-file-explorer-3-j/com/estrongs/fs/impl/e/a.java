package com.estrongs.fs.impl.e;

import com.estrongs.fs.g;
import com.estrongs.fs.l;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;

/* loaded from: classes.dex */
public class a implements g {

    /* renamed from: a, reason: collision with root package name */
    protected int f3069a = -2;

    /* renamed from: b, reason: collision with root package name */
    protected boolean f3070b = true;
    private File c;
    private String d;

    public a(File file) {
        this.c = file;
        if (!file.isDirectory() && (file instanceof ArchiveEntryFile) && ((ArchiveEntryFile) file).isEncrypted()) {
            this.d = file.getName() + " * ";
        } else {
            this.d = file.getName();
        }
    }

    public File a() {
        return this.c;
    }

    @Override // com.estrongs.fs.g
    public long createdTime() {
        return lastModified();
    }

    @Override // com.estrongs.fs.g
    public boolean exists() {
        return false;
    }

    @Override // com.estrongs.fs.g
    public String getAbsolutePath() {
        return this.c.getAbsolutePath();
    }

    @Override // com.estrongs.fs.g
    public int getESFileType() {
        return this.f3069a;
    }

    @Override // com.estrongs.fs.g
    public Object getExtra(String str) {
        return null;
    }

    @Override // com.estrongs.fs.g
    public l getFileType() {
        return this.c.isDirectory() ? l.f3183a : l.f3184b;
    }

    @Override // com.estrongs.fs.g
    public String getName() {
        return this.d;
    }

    @Override // com.estrongs.fs.g
    public String getPath() {
        return this.c.getPath();
    }

    @Override // com.estrongs.fs.g
    public boolean hasPermission(int i) {
        return false;
    }

    @Override // com.estrongs.fs.g
    public boolean isLink() {
        return false;
    }

    @Override // com.estrongs.fs.g
    public long lastModified() {
        return this.c.lastModified();
    }

    @Override // com.estrongs.fs.g
    public long length() {
        return this.c.length();
    }

    @Override // com.estrongs.fs.g
    public Object putExtra(String str, Object obj) {
        return null;
    }

    @Override // com.estrongs.fs.g
    public void setESFileType(int i) {
        this.f3069a = i;
    }

    @Override // com.estrongs.fs.g
    public void setFileType(l lVar) {
    }

    @Override // com.estrongs.fs.g
    public void setName(String str) {
    }

    @Override // com.estrongs.fs.g
    public void setShouldTryLoadThumbnail(boolean z) {
        this.f3070b = false;
    }

    @Override // com.estrongs.fs.g
    public boolean shouldTryLoadThumbnail() {
        return this.f3070b;
    }
}
