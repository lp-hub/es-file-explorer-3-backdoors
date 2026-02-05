package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
class MethodContact implements Contact {
    private Method get;
    private Class item;
    private Class[] items;
    private Annotation label;
    private String name;
    private MethodPart set;
    private Class type;

    public MethodContact(MethodPart methodPart) {
        this(methodPart, null);
    }

    public MethodContact(MethodPart methodPart, MethodPart methodPart2) {
        this.label = methodPart.getAnnotation();
        this.items = methodPart.getDependents();
        this.item = methodPart.getDependent();
        this.get = methodPart.getMethod();
        this.type = methodPart.getType();
        this.name = methodPart.getName();
        this.set = methodPart2;
    }

    @Override // org.simpleframework.xml.core.Contact
    public Object get(Object obj) {
        return this.get.invoke(obj, new Object[0]);
    }

    @Override // org.simpleframework.xml.core.Contact
    public Annotation getAnnotation() {
        return this.label;
    }

    @Override // org.simpleframework.xml.strategy.Type
    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        T t = (T) this.get.getAnnotation(cls);
        return cls == this.label.annotationType() ? (T) this.label : (t != null || this.set == null) ? t : (T) this.set.getAnnotation(cls);
    }

    @Override // org.simpleframework.xml.core.Contact
    public Class getDependent() {
        return this.item;
    }

    @Override // org.simpleframework.xml.core.Contact
    public Class[] getDependents() {
        return this.items;
    }

    @Override // org.simpleframework.xml.core.Contact
    public String getName() {
        return this.name;
    }

    @Override // org.simpleframework.xml.strategy.Type
    public Class getType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.core.Contact
    public boolean isReadOnly() {
        return this.set == null;
    }

    @Override // org.simpleframework.xml.core.Contact
    public void set(Object obj, Object obj2) {
        Class<?> declaringClass = this.get.getDeclaringClass();
        if (this.set == null) {
            throw new MethodException("Property '%s' is read only in %s", this.name, declaringClass);
        }
        this.set.getMethod().invoke(obj, obj2);
    }

    @Override // org.simpleframework.xml.core.Contact, org.simpleframework.xml.strategy.Type
    public String toString() {
        return String.format("method '%s'", this.name);
    }
}
