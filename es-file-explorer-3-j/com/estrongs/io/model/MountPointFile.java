package com.estrongs.io.model;

import java.io.File;

/* loaded from: classes.dex */
public class MountPointFile extends File {
    private static final long serialVersionUID = 1;
    private ArchiveEntryFile delegated;

    public MountPointFile(File file, ArchiveEntryFile archiveEntryFile) {
        super(file, archiveEntryFile.getPath());
        this.delegated = archiveEntryFile;
        archiveEntryFile.setParent(this);
    }

    public File getMountedFile() {
        return this.delegated;
    }

    @Override // java.io.File
    public boolean isDirectory() {
        return this.delegated.isDirectory();
    }

    @Override // java.io.File
    public boolean isFile() {
        return this.delegated.isFile();
    }

    @Override // java.io.File
    public File[] listFiles() {
        return this.delegated.listFiles();
    }
}
