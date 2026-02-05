package de.aflx.sardine.model;

import org.simpleframework.xml.Element;

/* loaded from: classes.dex */
public class Lockentry {

    @Element
    protected Lockscope lockscope;

    @Element
    protected Locktype locktype;

    public Lockscope getLockscope() {
        return this.lockscope;
    }

    public Locktype getLocktype() {
        return this.locktype;
    }

    public void setLockscope(Lockscope lockscope) {
        this.lockscope = lockscope;
    }

    public void setLocktype(Locktype locktype) {
        this.locktype = locktype;
    }
}
