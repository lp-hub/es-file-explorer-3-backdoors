package jcifs.smb;

/* loaded from: classes.dex */
public class DosFileFilter implements SmbFileFilter {
    protected int attributes;
    protected String wildcard;

    public DosFileFilter(String str, int i) {
        this.wildcard = str;
        this.attributes = i;
    }

    @Override // jcifs.smb.SmbFileFilter
    public boolean accept(SmbFile smbFile) {
        return (smbFile.getAttributes() & this.attributes) != 0;
    }
}
