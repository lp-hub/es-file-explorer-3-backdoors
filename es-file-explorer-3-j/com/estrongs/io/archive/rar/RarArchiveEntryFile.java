package com.estrongs.io.archive.rar;

import com.estrongs.io.model.ArchiveEntryFile;
import de.innosystec.unrar.rarfile.g;

/* loaded from: classes.dex */
public class RarArchiveEntryFile extends ArchiveEntryFile {
    private static final long serialVersionUID = 3636659340327122290L;
    private g archiveEntry;

    public RarArchiveEntryFile(g gVar) {
        super(gVar.o().trim().replaceAll("\\\\", "/"));
        this.archiveEntry = gVar;
    }

    public g getArchiveEntry() {
        return this.archiveEntry;
    }

    @Override // com.estrongs.io.model.ArchiveEntryFile
    public long getSize() {
        return this.archiveEntry.t();
    }

    @Override // com.estrongs.io.model.ArchiveEntryFile, java.io.File
    public boolean isDirectory() {
        return this.archiveEntry.C();
    }
}
