package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Value;

/* loaded from: classes.dex */
class ValueInstance implements Instance {
    private final Instantiator creator;
    private final Class type;
    private final Value value;

    public ValueInstance(Instantiator instantiator, Value value) {
        this.type = value.getType();
        this.creator = instantiator;
        this.value = value;
    }

    @Override // org.simpleframework.xml.core.Instance
    public Object getInstance() {
        if (this.value.isReference()) {
            return this.value.getValue();
        }
        Object object = this.creator.getObject(this.type);
        if (this.value == null) {
            return object;
        }
        this.value.setValue(object);
        return object;
    }

    @Override // org.simpleframework.xml.core.Instance
    public Class getType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.core.Instance
    public boolean isReference() {
        return this.value.isReference();
    }

    @Override // org.simpleframework.xml.core.Instance
    public Object setInstance(Object obj) {
        if (this.value != null) {
            this.value.setValue(obj);
        }
        return obj;
    }
}
