package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import org.simpleframework.xml.strategy.Value;

/* loaded from: classes.dex */
class ArrayInstance implements Instance {
    private final int length;
    private final Class type;
    private final Value value;

    public ArrayInstance(Value value) {
        this.length = value.getLength();
        this.type = value.getType();
        this.value = value;
    }

    @Override // org.simpleframework.xml.core.Instance
    public Object getInstance() {
        if (this.value.isReference()) {
            return this.value.getValue();
        }
        Object newInstance = Array.newInstance((Class<?>) this.type, this.length);
        if (this.value == null) {
            return newInstance;
        }
        this.value.setValue(newInstance);
        return newInstance;
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
