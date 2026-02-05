package com.estrongs.android.pop.app.compress;

import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;

/* loaded from: classes.dex */
class aq extends com.estrongs.io.a.c {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ap f593a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(ap apVar) {
        this.f593a = apVar;
    }

    @Override // com.estrongs.io.a.c, com.estrongs.io.a.b
    public String a() {
        String str;
        str = this.f593a.f592a.f;
        return str;
    }

    @Override // com.estrongs.io.a.c, com.estrongs.io.a.a
    public boolean b() {
        return this.f593a.f592a.f589a;
    }

    @Override // com.estrongs.io.a.c, com.estrongs.io.a.b
    public String c() {
        com.estrongs.io.archive.h hVar;
        ArchiveEntryFile archiveEntryFile;
        StringBuilder append = new StringBuilder().append("zip/");
        hVar = this.f593a.f592a.f590b;
        File g = com.estrongs.fs.c.d.g(append.append(com.estrongs.android.util.ak.bl(com.estrongs.android.util.ak.d(hVar.j()))).toString());
        archiveEntryFile = this.f593a.f592a.e;
        File file = new File(g, com.estrongs.io.archive.h.d(archiveEntryFile.getPath()));
        if (file.exists()) {
            com.estrongs.fs.c.d.a(file);
        }
        return g.getAbsolutePath() + "/";
    }
}
