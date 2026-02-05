package org.simpleframework.xml.util;

import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class WeakCache<K, V> implements Cache<K, V> {
    private WeakCache<K, V>.SegmentList list;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Segment extends WeakHashMap<K, V> {
        private Segment() {
        }

        /* synthetic */ Segment(WeakCache weakCache, Segment segment) {
            this();
        }

        public synchronized void cache(K k, V v) {
            put(k, v);
        }

        public synchronized boolean contains(K k) {
            return containsKey(k);
        }

        public synchronized V fetch(K k) {
            return get(k);
        }

        public synchronized V take(K k) {
            return remove(k);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class SegmentList {
        private List<WeakCache<K, V>.Segment> list = new ArrayList();
        private int size;

        public SegmentList(int i) {
            this.size = i;
            create(i);
        }

        private void create(int i) {
            while (true) {
                int i2 = i - 1;
                if (i <= 0) {
                    return;
                }
                this.list.add(new Segment(WeakCache.this, null));
                i = i2;
            }
        }

        private int segment(K k) {
            return Math.abs(k.hashCode() % this.size);
        }

        public WeakCache<K, V>.Segment get(K k) {
            int segment = segment(k);
            if (segment < this.size) {
                return this.list.get(segment);
            }
            return null;
        }
    }

    public WeakCache() {
        this(10);
    }

    public WeakCache(int i) {
        this.list = new SegmentList(i);
    }

    private WeakCache<K, V>.Segment map(K k) {
        return this.list.get(k);
    }

    @Override // org.simpleframework.xml.util.Cache
    public void cache(K k, V v) {
        map(k).cache(k, v);
    }

    @Override // org.simpleframework.xml.util.Cache
    public boolean contains(K k) {
        return map(k).contains(k);
    }

    @Override // org.simpleframework.xml.util.Cache
    public V fetch(K k) {
        return map(k).fetch(k);
    }

    @Override // org.simpleframework.xml.util.Cache
    public V take(K k) {
        return map(k).take(k);
    }
}
