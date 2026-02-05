package org.simpleframework.xml.core;

/* loaded from: classes.dex */
interface Criteria extends Iterable<String> {
    void commit(Object obj);

    Variable get(String str);

    Variable remove(String str);

    Variable resolve(String str);

    void set(Label label, Object obj);
}
