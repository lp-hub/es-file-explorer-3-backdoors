package de.aflx.sardine.model;

/* loaded from: classes.dex */
public class Lockinfo {
    protected Lockscope lockscope;
    protected Locktype locktype;
    protected Owner owner;

    public Lockscope getLockscope() {
        return this.lockscope;
    }

    public Locktype getLocktype() {
        return this.locktype;
    }

    public Owner getOwner() {
        return this.owner;
    }

    public void setLockscope(Lockscope lockscope) {
        this.lockscope = lockscope;
    }

    public void setLocktype(Locktype locktype) {
        this.locktype = locktype;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }
}
