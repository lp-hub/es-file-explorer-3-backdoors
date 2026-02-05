package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.strategy.Type;

/* loaded from: classes.dex */
class ElementLabel extends TemplateLabel {
    private Decorator decorator;
    private Introspector detail;
    private Element label;
    private String name;
    private Class override;
    private Class type;

    public ElementLabel(Contact contact, Element element) {
        this.detail = new Introspector(contact, this);
        this.decorator = new Qualifier(contact);
        this.type = contact.getType();
        this.override = element.type();
        this.name = element.name();
        this.label = element;
    }

    @Override // org.simpleframework.xml.core.Label
    public Annotation getAnnotation() {
        return this.label;
    }

    @Override // org.simpleframework.xml.core.Label
    public Contact getContact() {
        return this.detail.getContact();
    }

    @Override // org.simpleframework.xml.core.Label
    public Converter getConverter(Context context) {
        Contact contact = getContact();
        return context.isPrimitive(contact) ? new Primitive(context, contact) : this.override == Void.TYPE ? new Composite(context, contact) : new Composite(context, contact, this.override);
    }

    @Override // org.simpleframework.xml.core.Label
    public Decorator getDecorator() {
        return this.decorator;
    }

    @Override // org.simpleframework.xml.core.Label
    public Object getEmpty(Context context) {
        return null;
    }

    @Override // org.simpleframework.xml.core.Label
    public Expression getExpression() {
        return this.detail.getExpression();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getName() {
        return this.detail.getName();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getName(Context context) {
        return context.getStyle().getElement(this.detail.getName());
    }

    @Override // org.simpleframework.xml.core.Label
    public String getOverride() {
        return this.name;
    }

    @Override // org.simpleframework.xml.core.Label
    public String getPath() {
        return getExpression().getElement(getName());
    }

    @Override // org.simpleframework.xml.core.Label
    public String getPath(Context context) {
        return getExpression().getElement(getName(context));
    }

    @Override // org.simpleframework.xml.core.Label
    public Class getType() {
        return this.override == Void.TYPE ? this.type : this.override;
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public Type getType(Class cls) {
        Contact contact = getContact();
        return this.override == Void.TYPE ? contact : new OverrideType(contact, this.override);
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isData() {
        return this.label.data();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isRequired() {
        return this.label.required();
    }

    @Override // org.simpleframework.xml.core.Label
    public String toString() {
        return this.detail.toString();
    }
}
