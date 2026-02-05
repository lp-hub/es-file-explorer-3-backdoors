package com.estrongs.io.archive.compressor;

import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;
import java.util.Iterator;

/* loaded from: classes.dex */
class b implements Iterator<ArchiveEntryFile> {

    /* renamed from: a, reason: collision with root package name */
    int f3211a = 0;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f3212b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f3212b = aVar;
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ArchiveEntryFile next() {
        String str;
        this.f3211a++;
        str = this.f3212b.f3220b;
        File file = new File(str);
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(".");
        if (lastIndexOf > 0) {
            name = name.substring(0, lastIndexOf);
        }
        CompressorArchiveEntryFile compressorArchiveEntryFile = new CompressorArchiveEntryFile(name);
        compressorArchiveEntryFile.setSize(file.length());
        return compressorArchiveEntryFile;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f3211a < 1;
    }

    @Override // java.util.Iterator
    public void remove() {
    }
}
