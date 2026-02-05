package org.simpleframework.xml.util;

import java.util.AbstractSet;
import java.util.HashMap;
import java.util.Iterator;
import org.simpleframework.xml.util.Entry;

/* loaded from: classes.dex */
public class Dictionary<E extends Entry> extends AbstractSet<E> {
    protected Dictionary<E>.Table map = new Table();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Table extends HashMap<String, E> {
        public Table() {
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        return this.map.put(e.getName(), e) != 0;
    }

    public E get(String str) {
        return (E) this.map.get(str);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return this.map.values().iterator();
    }

    public E remove(String str) {
        return (E) this.map.remove(str);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.map.size();
    }
}
