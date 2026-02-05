package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

/* loaded from: classes.dex */
class FieldContact implements Contact {
    private Field field;
    private Annotation label;
    private int modifier;
    private String name;

    public FieldContact(Field field, Annotation annotation) {
        this.modifier = field.getModifiers();
        this.label = annotation;
        this.field = field;
    }

    private String getName(Field field) {
        String name = field.getName();
        return name != null ? name.intern() : name;
    }

    @Override // org.simpleframework.xml.core.Contact
    public Object get(Object obj) {
        return this.field.get(obj);
    }

    @Override // org.simpleframework.xml.core.Contact
    public Annotation getAnnotation() {
        return this.label;
    }

    @Override // org.simpleframework.xml.strategy.Type
    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return cls == this.label.annotationType() ? (T) this.label : (T) this.field.getAnnotation(cls);
    }

    @Override // org.simpleframework.xml.core.Contact
    public Class getDependent() {
        return Reflector.getDependent(this.field);
    }

    @Override // org.simpleframework.xml.core.Contact
    public Class[] getDependents() {
        return Reflector.getDependents(this.field);
    }

    @Override // org.simpleframework.xml.core.Contact
    public String getName() {
        if (this.name == null) {
            this.name = getName(this.field);
        }
        return this.name;
    }

    @Override // org.simpleframework.xml.strategy.Type
    public Class getType() {
        return this.field.getType();
    }

    public boolean isFinal() {
        return Modifier.isFinal(this.modifier);
    }

    @Override // org.simpleframework.xml.core.Contact
    public boolean isReadOnly() {
        return !isStatic() && isFinal();
    }

    public boolean isStatic() {
        return Modifier.isStatic(this.modifier);
    }

    @Override // org.simpleframework.xml.core.Contact
    public void set(Object obj, Object obj2) {
        if (isFinal()) {
            return;
        }
        this.field.set(obj, obj2);
    }

    @Override // org.simpleframework.xml.core.Contact, org.simpleframework.xml.strategy.Type
    public String toString() {
        return String.format("field '%s' %s", getName(), this.field.toString());
    }
}
