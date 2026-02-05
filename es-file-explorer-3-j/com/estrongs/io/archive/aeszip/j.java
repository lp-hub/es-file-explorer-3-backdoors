package com.estrongs.io.archive.aeszip;

import com.estrongs.io.model.ArchiveEntryFile;
import java.util.Iterator;

/* loaded from: classes.dex */
class j implements Iterator<ArchiveEntryFile> {

    /* renamed from: a, reason: collision with root package name */
    Iterator<de.a.a.a.a.i> f3203a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ h f3204b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(h hVar) {
        this.f3204b = hVar;
        this.f3203a = this.f3204b.g.c();
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ArchiveEntryFile next() {
        return new AesZipArchiveEntryFile(this.f3203a.next());
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f3203a.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
    }
}
