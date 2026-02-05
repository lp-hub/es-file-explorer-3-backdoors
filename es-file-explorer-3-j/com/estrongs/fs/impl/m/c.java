package com.estrongs.fs.impl.m;

import com.estrongs.fs.g;
import java.util.Comparator;

/* loaded from: classes.dex */
class c implements Comparator<g> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f3126a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.f3126a = bVar;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(g gVar, g gVar2) {
        return ((a) gVar2).f3122a - ((a) gVar).f3122a;
    }
}
