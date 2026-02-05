package com.estrongs.fs.a;

import com.estrongs.fs.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class d {
    private static final List<g> c = new ArrayList();
    private List<g> d;

    /* renamed from: b, reason: collision with root package name */
    private Map<String, d> f2956b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public boolean f2955a = true;

    public d a(String str) {
        return this.f2956b.get(str);
    }

    public List<g> a() {
        return this.d == null ? c : this.d;
    }

    public void a(String str, d dVar) {
        this.f2956b.put(str, dVar);
    }

    public void a(List<g> list) {
        this.d = list;
    }

    public d b(String str) {
        return this.f2956b.remove(str);
    }

    public void b() {
        this.f2956b.clear();
        this.d = null;
    }

    public Collection<d> c() {
        return this.f2956b.values();
    }
}
