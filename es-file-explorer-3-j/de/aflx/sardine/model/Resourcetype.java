package de.aflx.sardine.model;

import org.simpleframework.xml.Element;

/* loaded from: classes.dex */
public class Resourcetype {

    @Element(required = false)
    private Collection collection;

    public Collection getCollection() {
        return this.collection;
    }

    public void setCollection(Collection collection) {
        this.collection = collection;
    }
}
