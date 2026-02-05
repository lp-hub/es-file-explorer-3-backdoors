package com.estrongs.io.archive.compressor;

import com.estrongs.io.model.ArchiveEntryFile;

/* loaded from: classes.dex */
public class CompressorArchiveEntryFile extends ArchiveEntryFile {
    private static final long serialVersionUID = 3636659340327122290L;
    private long size;

    public CompressorArchiveEntryFile(String str) {
        super(str);
        this.size = -1L;
    }

    @Override // com.estrongs.io.model.ArchiveEntryFile
    public long getSize() {
        return this.size;
    }

    @Override // com.estrongs.io.model.ArchiveEntryFile, java.io.File
    public boolean isDirectory() {
        return false;
    }

    public void setSize(long j) {
        this.size = j;
    }
}
