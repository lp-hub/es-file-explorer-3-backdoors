package jcifs.smb;

import jcifs.util.Hexdump;

/* loaded from: classes.dex */
public class SmbShareInfo implements FileEntry {
    protected String netName;
    protected String remark;
    protected int type;

    public SmbShareInfo() {
    }

    public SmbShareInfo(String str, int i, String str2) {
        this.netName = str;
        this.type = i;
        this.remark = str2;
    }

    @Override // jcifs.smb.FileEntry
    public long createTime() {
        return 0L;
    }

    public boolean equals(Object obj) {
        if (obj instanceof SmbShareInfo) {
            return this.netName.equals(((SmbShareInfo) obj).netName);
        }
        return false;
    }

    @Override // jcifs.smb.FileEntry
    public int getAttributes() {
        return 17;
    }

    @Override // jcifs.smb.FileEntry
    public String getName() {
        return this.netName;
    }

    @Override // jcifs.smb.FileEntry
    public int getType() {
        switch (this.type & 65535) {
            case 1:
                return 32;
            case 2:
            default:
                return 8;
            case 3:
                return 16;
        }
    }

    public int hashCode() {
        return this.netName.hashCode();
    }

    @Override // jcifs.smb.FileEntry
    public long lastModified() {
        return 0L;
    }

    @Override // jcifs.smb.FileEntry
    public long length() {
        return 0L;
    }

    public String toString() {
        return new String("SmbShareInfo[netName=" + this.netName + ",type=0x" + Hexdump.toHexString(this.type, 8) + ",remark=" + this.remark + "]");
    }
}
