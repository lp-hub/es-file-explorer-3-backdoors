package com.estrongs.android.pop.app.imageviewer.gallery;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class h<K, V> extends WeakReference<V> {

    /* renamed from: a, reason: collision with root package name */
    K f1008a;

    public h(K k, V v, ReferenceQueue<V> referenceQueue) {
        super(v, referenceQueue);
        this.f1008a = k;
    }
}
