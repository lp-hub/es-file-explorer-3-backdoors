package org.simpleframework.xml.core;

/* loaded from: classes.dex */
class ClassInstance implements Instance {
    private Instantiator creator;
    private Class type;
    private Object value;

    public ClassInstance(Instantiator instantiator, Class cls) {
        this.creator = instantiator;
        this.type = cls;
    }

    @Override // org.simpleframework.xml.core.Instance
    public Object getInstance() {
        if (this.value == null) {
            this.value = this.creator.getObject(this.type);
        }
        return this.value;
    }

    @Override // org.simpleframework.xml.core.Instance
    public Class getType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.core.Instance
    public boolean isReference() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Instance
    public Object setInstance(Object obj) {
        this.value = obj;
        return obj;
    }
}
