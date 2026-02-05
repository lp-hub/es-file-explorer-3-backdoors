package com.estrongs.io.archive.aeszip;

import com.estrongs.io.model.ArchiveEntryFile;

/* loaded from: classes.dex */
public class AesZipArchiveEntryFile extends ArchiveEntryFile {
    private static final long serialVersionUID = 3636659340327122290L;
    private de.a.a.a.a.i archiveEntry;

    public AesZipArchiveEntryFile(de.a.a.a.a.i iVar) {
        super(iVar.getName());
        this.archiveEntry = iVar;
    }

    public AesZipArchiveEntryFile(String str) {
        super(str);
        this.archiveEntry = new de.a.a.a.a.i(str);
    }

    public de.a.a.a.a.i getArchiveEntry() {
        return this.archiveEntry;
    }

    @Override // com.estrongs.io.model.ArchiveEntryFile
    public long getSize() {
        return this.archiveEntry.getSize();
    }

    @Override // com.estrongs.io.model.ArchiveEntryFile, java.io.File
    public boolean isDirectory() {
        try {
            return this.archiveEntry.isDirectory();
        } catch (StringIndexOutOfBoundsException e) {
            return false;
        }
    }

    @Override // com.estrongs.io.model.ArchiveEntryFile
    public boolean isEncrypted() {
        if (this.archiveEntry.isDirectory()) {
            return false;
        }
        return this.archiveEntry.d();
    }
}
