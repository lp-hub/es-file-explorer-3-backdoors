package org.simpleframework.xml.core;

import java.util.LinkedList;

/* loaded from: classes.dex */
class Hierarchy extends LinkedList<Class> {
    public Hierarchy(Class cls) {
        scan(cls);
    }

    private void scan(Class cls) {
        while (cls != null) {
            addFirst(cls);
            cls = cls.getSuperclass();
        }
        remove(Object.class);
    }
}
