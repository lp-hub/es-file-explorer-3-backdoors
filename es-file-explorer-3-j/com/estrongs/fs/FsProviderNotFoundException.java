package com.estrongs.fs;

/* loaded from: classes.dex */
public class FsProviderNotFoundException extends FileSystemException {
    private static final long serialVersionUID = 1;
    private int flagInstallOrUpdate;

    public FsProviderNotFoundException(String str, int i) {
        super("File system provider not found for " + str);
        this.flagInstallOrUpdate = i;
    }

    public int getFlagInstallOrUpdate() {
        return this.flagInstallOrUpdate;
    }

    public void setFlagInstallOrUpdate(int i) {
        this.flagInstallOrUpdate = i;
    }
}
