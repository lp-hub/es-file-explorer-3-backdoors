package com.estrongs.android.pop.netfs.utils;

import java.util.HashMap;

/* loaded from: classes.dex */
public class SizeHashCache<K, V> {
    private HashMap<K, V> cache;
    private int cacheSize;
    private HashMap<Integer, K> hits;
    private int head = 0;
    private int rear = 0;

    public SizeHashCache(int i) {
        this.cache = null;
        this.hits = null;
        this.cacheSize = 0;
        this.cacheSize = i;
        this.cache = new HashMap<>();
        this.hits = new HashMap<>();
    }

    public void add(K k, V v) {
        if (this.cache.size() >= this.cacheSize) {
            this.cache.remove(this.hits.get(Integer.valueOf(this.head)));
            this.head++;
            if (this.head >= this.cacheSize) {
                this.head = 0;
            }
        }
        this.cache.put(k, v);
        this.hits.put(Integer.valueOf(this.rear), k);
        this.rear++;
        if (this.rear >= this.cacheSize) {
            this.rear = 0;
        }
    }

    public void clear() {
        this.head = 0;
        this.rear = 0;
        this.hits.clear();
        this.cache.clear();
    }

    public V getValue(K k) {
        return this.cache.get(k);
    }
}
