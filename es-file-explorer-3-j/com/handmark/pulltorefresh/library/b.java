package com.handmark.pulltorefresh.library;

import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class b implements a {

    /* renamed from: a, reason: collision with root package name */
    private final HashSet<com.handmark.pulltorefresh.library.a.e> f3279a = new HashSet<>();

    public void a(com.handmark.pulltorefresh.library.a.e eVar) {
        if (eVar != null) {
            this.f3279a.add(eVar);
        }
    }

    @Override // com.handmark.pulltorefresh.library.a
    public void a(CharSequence charSequence) {
        Iterator<com.handmark.pulltorefresh.library.a.e> it = this.f3279a.iterator();
        while (it.hasNext()) {
            it.next().a(charSequence);
        }
    }

    @Override // com.handmark.pulltorefresh.library.a
    public void b(CharSequence charSequence) {
        Iterator<com.handmark.pulltorefresh.library.a.e> it = this.f3279a.iterator();
        while (it.hasNext()) {
            it.next().b(charSequence);
        }
    }

    @Override // com.handmark.pulltorefresh.library.a
    public void c(CharSequence charSequence) {
        Iterator<com.handmark.pulltorefresh.library.a.e> it = this.f3279a.iterator();
        while (it.hasNext()) {
            it.next().c(charSequence);
        }
    }
}
