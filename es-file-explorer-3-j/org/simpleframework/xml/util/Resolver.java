package org.simpleframework.xml.util;

import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.simpleframework.xml.util.Match;

/* loaded from: classes.dex */
public class Resolver<M extends Match> extends AbstractSet<M> {
    private final Resolver<M>.Stack stack = new Stack(this, null);
    private final Resolver<M>.Cache cache = new Cache();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Cache extends LinkedHashMap<String, List<M>> {
        public Cache() {
            super(1024, 0.75f, false);
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry entry) {
            return size() > 1024;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Stack extends LinkedList<M> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class Sequence implements Iterator<M> {
            private int cursor;

            public Sequence() {
                this.cursor = Stack.this.size();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.cursor > 0;
            }

            @Override // java.util.Iterator
            public M next() {
                if (!hasNext()) {
                    return null;
                }
                Stack stack = Stack.this;
                int i = this.cursor - 1;
                this.cursor = i;
                return (M) stack.get(i);
            }

            @Override // java.util.Iterator
            public void remove() {
                Stack.this.purge(this.cursor);
            }
        }

        private Stack() {
        }

        /* synthetic */ Stack(Resolver resolver, Stack stack) {
            this();
        }

        public void purge(int i) {
            Resolver.this.cache.clear();
            remove(i);
        }

        @Override // java.util.LinkedList, java.util.Deque
        public void push(M m) {
            Resolver.this.cache.clear();
            addFirst(m);
        }

        public Iterator<M> sequence() {
            return new Sequence();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0027, code lost:
    
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002a, code lost:
    
        if (r10 < r9.length) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x001e, code lost:
    
        if (r9[r10] != '?') goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0020, code lost:
    
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0023, code lost:
    
        if (r10 < r9.length) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0049, code lost:
    
        if (r8 < r7.length) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0032, code lost:
    
        if (r7[r8] == r9[r10]) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0036, code lost:
    
        if (r9[r10] != '?') goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0046, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x003c, code lost:
    
        if (r9[r10 - 1] == '?') goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0042, code lost:
    
        if (match(r7, r8, r9, r10) == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x004c, code lost:
    
        if (r7.length != r8) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0050, code lost:
    
        r0 = r10;
        r1 = r8;
        r8 = r1 + 1;
        r10 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x005a, code lost:
    
        if (r7[r1] == r9[r0]) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0060, code lost:
    
        if (r9[r10 - 1] == '?') goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
    
        if (r9[r10] == '*') goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
    
        if (r9[r10] == '*') goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean match(char[] cArr, int i, char[] cArr2, int i2) {
        while (i2 < cArr2.length && i < cArr.length) {
        }
        if (cArr2.length == i2) {
            return cArr.length == i;
        }
        while (cArr2[i2] == '*') {
            i2++;
            if (i2 >= cArr2.length) {
                return true;
            }
        }
        return false;
    }

    private boolean match(char[] cArr, char[] cArr2) {
        return match(cArr, 0, cArr2, 0);
    }

    private List<M> resolveAll(String str, char[] cArr) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.stack.iterator();
        while (it.hasNext()) {
            Match match = (Match) it.next();
            if (match(cArr, match.getPattern().toCharArray())) {
                this.cache.put(str, arrayList);
                arrayList.add(match);
            }
        }
        return arrayList;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(M m) {
        this.stack.push((Resolver<M>.Stack) m);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.cache.clear();
        this.stack.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<M> iterator() {
        return (Iterator<M>) this.stack.sequence();
    }

    public boolean remove(M m) {
        this.cache.clear();
        return this.stack.remove(m);
    }

    public M resolve(String str) {
        List<M> list = (List) this.cache.get(str);
        if (list == null) {
            list = resolveAll(str);
        }
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public List<M> resolveAll(String str) {
        List<M> list = (List) this.cache.get(str);
        if (list != null) {
            return list;
        }
        char[] charArray = str.toCharArray();
        if (charArray == null) {
            return null;
        }
        return resolveAll(str, charArray);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.stack.size();
    }
}
