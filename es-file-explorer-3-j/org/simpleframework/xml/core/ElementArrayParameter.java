package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.ElementArray;

/* loaded from: classes.dex */
class ElementArrayParameter extends TemplateParameter {
    private final Contact contact;
    private final Expression expression;
    private final Constructor factory;
    private final int index;
    private final Label label;
    private final String name;
    private final String path;
    private final Class type;

    /* loaded from: classes.dex */
    class Contact extends ParameterContact<ElementArray> {
        public Contact(ElementArray elementArray, Constructor constructor, int i) {
            super(elementArray, constructor, i);
        }

        @Override // org.simpleframework.xml.core.ParameterContact, org.simpleframework.xml.core.Contact
        public String getName() {
            return ((ElementArray) this.label).name();
        }
    }

    public ElementArrayParameter(Constructor constructor, ElementArray elementArray, int i) {
        this.contact = new Contact(elementArray, constructor, i);
        this.label = new ElementArrayLabel(this.contact, elementArray);
        this.expression = this.label.getExpression();
        this.path = this.label.getPath();
        this.type = this.label.getType();
        this.name = this.label.getName();
        this.factory = constructor;
        this.index = i;
    }

    @Override // org.simpleframework.xml.core.Parameter
    public Annotation getAnnotation() {
        return this.contact.getAnnotation();
    }

    @Override // org.simpleframework.xml.core.Parameter
    public Expression getExpression() {
        return this.expression;
    }

    @Override // org.simpleframework.xml.core.Parameter
    public int getIndex() {
        return this.index;
    }

    @Override // org.simpleframework.xml.core.Parameter
    public String getName() {
        return this.name;
    }

    @Override // org.simpleframework.xml.core.Parameter
    public String getPath() {
        return this.path;
    }

    @Override // org.simpleframework.xml.core.Parameter
    public Class getType() {
        return this.factory.getParameterTypes()[this.index];
    }

    @Override // org.simpleframework.xml.core.Parameter
    public boolean isPrimitive() {
        return this.type.isPrimitive();
    }

    @Override // org.simpleframework.xml.core.Parameter
    public boolean isRequired() {
        return this.label.isRequired();
    }

    @Override // org.simpleframework.xml.core.Parameter
    public String toString() {
        return this.contact.toString();
    }
}
