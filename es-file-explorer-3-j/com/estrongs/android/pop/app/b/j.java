package com.estrongs.android.pop.app.b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class j implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    private List<com.estrongs.fs.h> f491a;

    public j(Map<String, String> map, boolean z) {
        this(map, z, false);
    }

    public j(Map<String, String> map, boolean z, boolean z2) {
        this.f491a = null;
        this.f491a = i.a(map, z);
        if (z2) {
            i.b((List<com.estrongs.fs.h>) this.f491a);
        }
    }

    public j(boolean z) {
        this.f491a = null;
        this.f491a = new ArrayList();
        if (z) {
            i.b((List<com.estrongs.fs.h>) this.f491a);
        }
    }

    public n a() {
        for (int i = 0; i < this.f491a.size(); i++) {
            if (this.f491a.get(i) instanceof n) {
                return (n) this.f491a.get(i);
            }
        }
        return null;
    }

    public void a(com.estrongs.fs.h hVar) {
        this.f491a.add(hVar);
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        if (this.f491a == null) {
            return true;
        }
        Iterator<com.estrongs.fs.h> it = this.f491a.iterator();
        boolean z = true;
        while (it.hasNext()) {
            com.estrongs.fs.h next = it.next();
            boolean z2 = next != null ? z && next.a(gVar) : z;
            if (!z2) {
                return z2;
            }
            z = z2;
        }
        return z;
    }
}
