package com.estrongs.android.pop.spfs;

import com.estrongs.android.util.ak;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.a;
import com.estrongs.fs.l;
import java.util.List;

/* loaded from: classes.dex */
public class SPFileObject extends a {
    public String description;
    private boolean familyFlag;
    private boolean friendFlag;
    private boolean isDirectory;
    private List<com.gmail.yuyang226.flickr.a.a> notes;
    public String ownerId;
    public String ownerUsername;
    private boolean publicFlag;

    public SPFileObject(SPFileInfo sPFileInfo) {
        super(sPFileInfo.path);
        setName(sPFileInfo.name);
        this.isDirectory = sPFileInfo.isDirectory;
        this.size = sPFileInfo.size;
        this.lastModified = sPFileInfo.lastModifiedTime;
        this.publicFlag = sPFileInfo.publicFlag;
        this.friendFlag = sPFileInfo.friendFlag;
        this.familyFlag = sPFileInfo.familyFlag;
        this.notes = sPFileInfo.notes;
        this.description = sPFileInfo.description;
        this.ownerId = sPFileInfo.ownerId;
        this.ownerUsername = sPFileInfo.ownerUsername;
    }

    @Override // com.estrongs.fs.a
    protected l doGetFileType() {
        return this.isDirectory ? l.f3183a : l.f3184b;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean exists() {
        try {
            return SPFileSystem.exists(this.path);
        } catch (Exception e) {
            throw new FileSystemException(e);
        }
    }

    public String getDescription() {
        return this.description;
    }

    public List<com.gmail.yuyang226.flickr.a.a> getNotes() {
        return this.notes;
    }

    public String getOwnerId() {
        return this.ownerId;
    }

    public String getOwnerUsername() {
        return this.ownerUsername;
    }

    public boolean isFamilyFlag() {
        return this.familyFlag;
    }

    public boolean isFriendFlag() {
        return this.friendFlag;
    }

    public boolean isPublicFlag() {
        return this.publicFlag;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setFamilyFlag(boolean z) {
        this.familyFlag = z;
    }

    public void setFriendFlag(boolean z) {
        this.friendFlag = z;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public void setName(String str) {
        if (!ak.aj(this.path)) {
            this.name = str;
            return;
        }
        if (this.name != null && !ak.Z(this.path).startsWith("/files")) {
            str = str.substring(str.lastIndexOf(">") + 1);
        }
        super.setName(str);
    }

    public void setOwnerId(String str) {
        this.ownerId = str;
    }

    public void setOwnerUsername(String str) {
        this.ownerUsername = str;
    }

    public void setPublicFlag(boolean z) {
        this.publicFlag = z;
    }
}
