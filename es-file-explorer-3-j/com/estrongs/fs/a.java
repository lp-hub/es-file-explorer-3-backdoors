package com.estrongs.fs;

import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;

/* loaded from: classes.dex */
public abstract class a implements g {
    protected String absolutePath;
    protected int esType;
    protected TypedMap extras;
    protected boolean isLink;
    protected boolean isShouldTryLoadThumbnail;
    protected long lastModified;
    protected String linkTarget;
    protected String name;
    protected String path;
    protected long size;
    protected l type;

    public a() {
        this.type = l.M;
        this.size = -1L;
        this.lastModified = -1L;
        this.extras = null;
        this.isLink = false;
        this.linkTarget = null;
        this.esType = -2;
        this.isShouldTryLoadThumbnail = true;
    }

    public a(String str) {
        this.type = l.M;
        this.size = -1L;
        this.lastModified = -1L;
        this.extras = null;
        this.isLink = false;
        this.linkTarget = null;
        this.esType = -2;
        this.isShouldTryLoadThumbnail = true;
        this.path = str;
        this.absolutePath = str;
    }

    public a(String str, l lVar) {
        this(str);
        this.type = lVar;
    }

    public a(String str, String str2) {
        this.type = l.M;
        this.size = -1L;
        this.lastModified = -1L;
        this.extras = null;
        this.isLink = false;
        this.linkTarget = null;
        this.esType = -2;
        this.isShouldTryLoadThumbnail = true;
        this.path = str;
        this.absolutePath = str2;
    }

    public a(String str, String str2, l lVar) {
        this(str, str2);
        this.type = lVar;
    }

    protected boolean canDelete() {
        return true;
    }

    protected boolean canRead() {
        return true;
    }

    protected boolean canWrite() {
        return true;
    }

    @Override // com.estrongs.fs.g
    public long createdTime() {
        return lastModified();
    }

    protected l doGetFileType() {
        return this.type;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof g)) {
            g gVar = (g) obj;
            if (this.absolutePath != null) {
                return this.absolutePath.equalsIgnoreCase(gVar.getAbsolutePath());
            }
        }
        return false;
    }

    @Override // com.estrongs.fs.g
    public boolean exists() {
        return false;
    }

    @Override // com.estrongs.fs.g
    public String getAbsolutePath() {
        return this.absolutePath;
    }

    @Override // com.estrongs.fs.g
    public int getESFileType() {
        return this.esType;
    }

    @Override // com.estrongs.fs.g
    public Object getExtra(String str) {
        if (this.extras != null) {
            return this.extras.get(str);
        }
        return null;
    }

    @Override // com.estrongs.fs.g
    public l getFileType() {
        if (this.type == l.M) {
            this.type = doGetFileType();
        }
        return this.type;
    }

    public String getLinkTarget() {
        return this.linkTarget;
    }

    @Override // com.estrongs.fs.g
    public String getName() {
        return this.name;
    }

    @Override // com.estrongs.fs.g
    public String getPath() {
        return ak.bh(this.path);
    }

    @Override // com.estrongs.fs.g
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

    @Override // com.estrongs.fs.g
    public boolean isLink() {
        return this.isLink;
    }

    public long lastAccessed() {
        return lastModified();
    }

    @Override // com.estrongs.fs.g
    public long lastModified() {
        return this.lastModified;
    }

    @Override // com.estrongs.fs.g
    public long length() {
        return this.size;
    }

    @Override // com.estrongs.fs.g
    public Object putExtra(String str, Object obj) {
        if (this.extras == null) {
            this.extras = new TypedMap();
        }
        return this.extras.put(str, obj);
    }

    @Override // com.estrongs.fs.g
    public void setESFileType(int i) {
        this.esType = i;
    }

    @Override // com.estrongs.fs.g
    public void setFileType(l lVar) {
        this.type = lVar;
    }

    @Override // com.estrongs.fs.g
    public void setName(String str) {
        if (this.name == null && str == null) {
            return;
        }
        if (this.name == null || !this.name.equals(str)) {
            if (this.name != null) {
                String str2 = this.name;
                this.path = this.path.substring(0, this.path.lastIndexOf(str2)) + str;
                this.absolutePath = this.absolutePath.substring(0, this.absolutePath.lastIndexOf(str2)) + str;
            }
            this.name = str;
            this.esType = -2;
        }
    }

    @Override // com.estrongs.fs.g
    public void setShouldTryLoadThumbnail(boolean z) {
        this.isShouldTryLoadThumbnail = z;
    }

    @Override // com.estrongs.fs.g
    public boolean shouldTryLoadThumbnail() {
        return this.isShouldTryLoadThumbnail;
    }

    public String toString() {
        return getAbsolutePath();
    }
}
