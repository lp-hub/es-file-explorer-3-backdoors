package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Text;

/* loaded from: classes.dex */
class TextLabel extends TemplateLabel {
    private Contact contact;
    private Introspector detail;
    private String empty;
    private Text label;
    private Class type;

    public TextLabel(Contact contact, Text text) {
        this.detail = new Introspector(contact, this);
        this.type = contact.getType();
        this.empty = text.empty();
        this.contact = contact;
        this.label = text;
    }

    @Override // org.simpleframework.xml.core.Label
    public Annotation getAnnotation() {
        return this.label;
    }

    @Override // org.simpleframework.xml.core.Label
    public Contact getContact() {
        return this.contact;
    }

    @Override // org.simpleframework.xml.core.Label
    public Converter getConverter(Context context) {
        String empty = getEmpty(context);
        Contact contact = getContact();
        if (context.isPrimitive(contact)) {
            return new Primitive(context, contact, empty);
        }
        throw new TextException("Cannot use %s to represent %s", contact, this.label);
    }

    @Override // org.simpleframework.xml.core.Label
    public Decorator getDecorator() {
        return null;
    }

    @Override // org.simpleframework.xml.core.Label
    public String getEmpty(Context context) {
        if (this.detail.isEmpty(this.empty)) {
            return null;
        }
        return this.empty;
    }

    @Override // org.simpleframework.xml.core.Label
    public Expression getExpression() {
        return this.detail.getExpression();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getName() {
        return "";
    }

    @Override // org.simpleframework.xml.core.Label
    public String getName(Context context) {
        return getName();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getOverride() {
        return this.contact.toString();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getPath() {
        return getExpression().getPath();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getPath(Context context) {
        return getPath();
    }

    @Override // org.simpleframework.xml.core.Label
    public Class getType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isData() {
        return this.label.data();
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public boolean isInline() {
        return true;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isRequired() {
        return this.label.required();
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public boolean isText() {
        return true;
    }

    @Override // org.simpleframework.xml.core.Label
    public String toString() {
        return this.detail.toString();
    }
}
