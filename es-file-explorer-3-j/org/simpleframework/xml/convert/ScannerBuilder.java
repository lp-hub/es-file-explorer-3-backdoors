package org.simpleframework.xml.convert;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.util.WeakCache;

/* loaded from: classes.dex */
class ScannerBuilder extends WeakCache<Class, Scanner> {

    /* loaded from: classes.dex */
    class Entry extends WeakCache<Class, Annotation> implements Scanner {
        private final Class root;

        public Entry(Class cls) {
            this.root = cls;
        }

        private <T extends Annotation> T find(Class<T> cls) {
            for (Class cls2 = this.root; cls2 != null; cls2 = cls2.getSuperclass()) {
                T t = (T) cls2.getAnnotation(cls);
                if (t != null) {
                    return t;
                }
            }
            return null;
        }

        @Override // org.simpleframework.xml.convert.Scanner
        public <T extends Annotation> T scan(Class<T> cls) {
            if (!contains(cls)) {
                Annotation find = find(cls);
                if (cls != null) {
                    cache(cls, find);
                }
            }
            return (T) fetch(cls);
        }
    }

    public Scanner build(Class<?> cls) {
        Scanner fetch = fetch(cls);
        if (fetch != null) {
            return fetch;
        }
        Entry entry = new Entry(cls);
        cache(cls, entry);
        return entry;
    }
}
