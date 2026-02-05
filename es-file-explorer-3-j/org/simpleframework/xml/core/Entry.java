package org.simpleframework.xml.core;

import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.strategy.Type;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Entry {
    private static final String DEFAULT_NAME = "entry";
    private boolean attribute;
    private Contact contact;
    private String entry;
    private String key;
    private Class keyType;
    private ElementMap label;
    private String value;
    private Class valueType;

    public Entry(Contact contact, ElementMap elementMap) {
        this.attribute = elementMap.attribute();
        this.entry = elementMap.entry();
        this.value = elementMap.value();
        this.key = elementMap.key();
        this.contact = contact;
        this.label = elementMap;
    }

    private Class getDependent(int i) {
        Class[] dependents = this.contact.getDependents();
        if (dependents.length < i) {
            throw new PersistenceException("Could not find type for %s at index %s", this.contact, Integer.valueOf(i));
        }
        return dependents[i];
    }

    private boolean isEmpty(String str) {
        return str.length() == 0;
    }

    public Contact getContact() {
        return this.contact;
    }

    public String getEntry() {
        if (this.entry == null) {
            return this.entry;
        }
        if (isEmpty(this.entry)) {
            this.entry = DEFAULT_NAME;
        }
        return this.entry;
    }

    public String getKey() {
        if (this.key == null) {
            return this.key;
        }
        if (isEmpty(this.key)) {
            this.key = null;
        }
        return this.key;
    }

    public Converter getKey(Context context) {
        Type keyType = getKeyType();
        return context.isPrimitive(keyType) ? new PrimitiveKey(context, this, keyType) : new CompositeKey(context, this, keyType);
    }

    protected Type getKeyType() {
        if (this.keyType == null) {
            this.keyType = this.label.keyType();
            if (this.keyType == Void.TYPE) {
                this.keyType = getDependent(0);
            }
        }
        return new ClassType(this.keyType);
    }

    public String getValue() {
        if (this.value == null) {
            return this.value;
        }
        if (isEmpty(this.value)) {
            this.value = null;
        }
        return this.value;
    }

    public Converter getValue(Context context) {
        Type valueType = getValueType();
        return context.isPrimitive(valueType) ? new PrimitiveValue(context, this, valueType) : new CompositeValue(context, this, valueType);
    }

    protected Type getValueType() {
        if (this.valueType == null) {
            this.valueType = this.label.valueType();
            if (this.valueType == Void.TYPE) {
                this.valueType = getDependent(1);
            }
        }
        return new ClassType(this.valueType);
    }

    public boolean isAttribute() {
        return this.attribute;
    }

    public boolean isInline() {
        return isAttribute();
    }

    public String toString() {
        return String.format("%s on %s", this.label, this.contact);
    }
}
