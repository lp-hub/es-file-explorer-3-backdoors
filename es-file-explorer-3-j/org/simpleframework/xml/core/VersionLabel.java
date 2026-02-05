package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Version;

/* loaded from: classes.dex */
class VersionLabel extends TemplateLabel {
    private Decorator decorator;
    private Introspector detail;
    private Version label;
    private String name;
    private Class type;

    public VersionLabel(Contact contact, Version version) {
        this.detail = new Introspector(contact, this);
        this.decorator = new Qualifier(contact);
        this.type = contact.getType();
        this.name = version.name();
        this.label = version;
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
        String empty = getEmpty(context);
        Contact contact = getContact();
        if (context.isFloat(contact)) {
            return new Primitive(context, contact, empty);
        }
        throw new AttributeException("Cannot use %s to represent %s", this.label, contact);
    }

    @Override // org.simpleframework.xml.core.Label
    public Decorator getDecorator() {
        return this.decorator;
    }

    @Override // org.simpleframework.xml.core.Label
    public String getEmpty(Context context) {
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
        return context.getStyle().getAttribute(this.detail.getName());
    }

    @Override // org.simpleframework.xml.core.Label
    public String getOverride() {
        return this.name;
    }

    @Override // org.simpleframework.xml.core.Label
    public String getPath() {
        return getExpression().getAttribute(getName());
    }

    @Override // org.simpleframework.xml.core.Label
    public String getPath(Context context) {
        return getExpression().getAttribute(getName(context));
    }

    @Override // org.simpleframework.xml.core.Label
    public Class getType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public boolean isAttribute() {
        return true;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isData() {
        return false;
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
