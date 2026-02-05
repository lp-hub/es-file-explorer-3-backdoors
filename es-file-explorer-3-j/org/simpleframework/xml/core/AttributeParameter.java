package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.Attribute;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AttributeParameter extends TemplateParameter {
    private final Contact contact;
    private final Expression expression;
    private final Constructor factory;
    private final int index;
    private final Label label;
    private final String name;
    private final String path;
    private final Class type;

    /* loaded from: classes.dex */
    class Contact extends ParameterContact<Attribute> {
        public Contact(Attribute attribute, Constructor constructor, int i) {
            super(attribute, constructor, i);
        }

        @Override // org.simpleframework.xml.core.ParameterContact, org.simpleframework.xml.core.Contact
        public String getName() {
            return ((Attribute) this.label).name();
        }
    }

    public AttributeParameter(Constructor constructor, Attribute attribute, int i) {
        this.contact = new Contact(attribute, constructor, i);
        this.label = new AttributeLabel(this.contact, attribute);
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

    @Override // org.simpleframework.xml.core.TemplateParameter, org.simpleframework.xml.core.Parameter
    public String getName(Context context) {
        return context.getStyle().getAttribute(getName());
    }

    @Override // org.simpleframework.xml.core.Parameter
    public String getPath() {
        return this.path;
    }

    @Override // org.simpleframework.xml.core.TemplateParameter, org.simpleframework.xml.core.Parameter
    public String getPath(Context context) {
        return getExpression().getAttribute(getName(context));
    }

    @Override // org.simpleframework.xml.core.Parameter
    public Class getType() {
        return this.factory.getParameterTypes()[this.index];
    }

    @Override // org.simpleframework.xml.core.TemplateParameter, org.simpleframework.xml.core.Parameter
    public boolean isAttribute() {
        return true;
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
