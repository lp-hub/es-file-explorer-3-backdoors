package org.simpleframework.xml.convert;

import org.simpleframework.xml.strategy.Value;

/* loaded from: classes.dex */
class Reference implements Value {
    private Object data;
    private Value value;

    public Reference(Value value, Object obj) {
        this.value = value;
        this.data = obj;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public int getLength() {
        return 0;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public Class getType() {
        return this.data.getClass();
    }

    @Override // org.simpleframework.xml.strategy.Value
    public Object getValue() {
        return this.data;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public boolean isReference() {
        return true;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public void setValue(Object obj) {
        if (this.value != null) {
            this.value.setValue(obj);
        }
        this.data = obj;
    }
}
