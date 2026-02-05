package com.estrongs.io.archive.rar;

import com.estrongs.io.model.ArchiveEntryFile;
import de.innosystec.unrar.rarfile.g;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements Iterator<ArchiveEntryFile> {

    /* renamed from: a, reason: collision with root package name */
    g f3225a = null;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f3226b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f3226b = aVar;
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ArchiveEntryFile next() {
        return new RarArchiveEntryFile(this.f3225a);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        this.f3225a = this.f3226b.g.c();
        return this.f3225a != null;
    }

    @Override // java.util.Iterator
    public void remove() {
    }
}
