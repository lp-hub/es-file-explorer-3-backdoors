package de.aflx.sardine.model;

/* loaded from: classes.dex */
public class Activelock {
    protected String depth;
    protected Lockscope lockscope;
    protected Locktoken locktoken;
    protected Locktype locktype;
    protected Owner owner;
    protected String timeout;

    public String getDepth() {
        return this.depth;
    }

    public Lockscope getLockscope() {
        return this.lockscope;
    }

    public Locktoken getLocktoken() {
        return this.locktoken;
    }

    public Locktype getLocktype() {
        return this.locktype;
    }

    public Owner getOwner() {
        return this.owner;
    }

    public String getTimeout() {
        return this.timeout;
    }

    public void setDepth(String str) {
        this.depth = str;
    }

    public void setLockscope(Lockscope lockscope) {
        this.lockscope = lockscope;
    }

    public void setLocktoken(Locktoken locktoken) {
        this.locktoken = locktoken;
    }

    public void setLocktype(Locktype locktype) {
        this.locktype = locktype;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }

    public void setTimeout(String str) {
        this.timeout = str;
    }
}
