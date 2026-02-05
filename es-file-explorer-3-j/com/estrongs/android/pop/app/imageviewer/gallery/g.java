package com.estrongs.android.pop.app.imageviewer.gallery;

import java.lang.ref.ReferenceQueue;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class g<K, V> {

    /* renamed from: a, reason: collision with root package name */
    private final HashMap<K, V> f1006a;

    /* renamed from: b, reason: collision with root package name */
    private final HashMap<K, h<K, V>> f1007b;
    private ReferenceQueue<V> c;

    public g() {
        this(512);
    }

    public g(final int i) {
        this.f1007b = new HashMap<>();
        this.c = new ReferenceQueue<>();
        final int i2 = 16;
        final float f = 0.75f;
        final boolean z = true;
        this.f1006a = new LinkedHashMap<K, V>(i2, f, z) { // from class: com.estrongs.android.pop.app.imageviewer.gallery.LruCache$1
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<K, V> entry) {
                return size() > i;
            }
        };
    }

    private void b() {
        h hVar = (h) this.c.poll();
        while (hVar != null) {
            this.f1007b.remove(hVar.f1008a);
            hVar = (h) this.c.poll();
        }
    }

    public synchronized V a(K k) {
        V v;
        b();
        v = this.f1006a.get(k);
        if (v == null) {
            h<K, V> hVar = this.f1007b.get(k);
            v = hVar == null ? null : (V) hVar.get();
        }
        return v;
    }

    public synchronized V a(K k, V v) {
        h<K, V> put;
        b();
        this.f1006a.put(k, v);
        put = this.f1007b.put(k, new h<>(k, v, this.c));
        return put == null ? null : (V) put.get();
    }

    public synchronized void a() {
        this.f1006a.clear();
        this.f1007b.clear();
        this.c = new ReferenceQueue<>();
    }
}
