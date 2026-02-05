package de.aflx.sardine.model;

/* loaded from: classes.dex */
public class Lockscope {
    protected Exclusive exclusive;
    protected Shared shared;

    public Exclusive getExclusive() {
        return this.exclusive;
    }

    public Shared getShared() {
        return this.shared;
    }

    public void setExclusive(Exclusive exclusive) {
        this.exclusive = exclusive;
    }

    public void setShared(Shared shared) {
        this.shared = shared;
    }
}
