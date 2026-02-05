package com.estrongs.fs;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class b implements h {

    /* renamed from: a, reason: collision with root package name */
    private List<h> f2957a = new ArrayList();

    public b(h hVar) {
        if (hVar != null) {
            this.f2957a.add(hVar);
        }
    }

    public List<h> a(Class cls) {
        ArrayList arrayList = new ArrayList();
        if (cls == null) {
            return arrayList;
        }
        for (int i = 0; i < this.f2957a.size(); i++) {
            if (cls.isInstance(this.f2957a.get(i))) {
                arrayList.add(this.f2957a.get(i));
            }
        }
        return arrayList;
    }

    public void a(h hVar) {
        this.f2957a.add(hVar);
    }

    @Override // com.estrongs.fs.h
    public boolean a(g gVar) {
        for (int i = 0; i < this.f2957a.size(); i++) {
            if (!this.f2957a.get(i).a(gVar)) {
                return false;
            }
        }
        return true;
    }
}
