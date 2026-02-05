package com.estrongs.io.archive.rar;

import com.estrongs.io.archive.g;
import java.io.File;

/* loaded from: classes.dex */
class b extends e {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.io.a.b f3223a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f3224b;
    final /* synthetic */ a c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(a aVar, com.estrongs.io.a.d dVar, com.estrongs.io.a.b bVar, g gVar) {
        super(dVar);
        this.c = aVar;
        this.f3223a = bVar;
        this.f3224b = gVar;
    }

    @Override // com.estrongs.io.archive.rar.e, de.innosystec.unrar.d
    public boolean a(File file) {
        this.f3223a.a(file.getName(), this.f3224b.a(), this.f3224b.b() + this.f3224b.c());
        return super.a(file);
    }
}
