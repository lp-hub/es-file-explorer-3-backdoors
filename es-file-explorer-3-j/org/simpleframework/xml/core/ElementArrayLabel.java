package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.strategy.Type;

/* loaded from: classes.dex */
class ElementArrayLabel extends TemplateLabel {
    private Decorator decorator;
    private Introspector detail;
    private String entry;
    private ElementArray label;
    private String name;
    private Class type;

    public ElementArrayLabel(Contact contact, ElementArray elementArray) {
        this.detail = new Introspector(contact, this);
        this.decorator = new Qualifier(contact);
        this.type = contact.getType();
        this.entry = elementArray.entry();
        this.name = elementArray.name();
        this.label = elementArray;
    }

    private Converter getConverter(Context context, String str) {
        Type dependent = getDependent();
        Contact contact = getContact();
        return !context.isPrimitive(dependent) ? new CompositeArray(context, contact, dependent, str) : new PrimitiveArray(context, contact, dependent, str);
    }

    private String getEntry(Context context) {
        return context.getStyle().getElement(getEntry());
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
        String entry = getEntry(context);
        Contact contact = getContact();
        if (this.type.isArray()) {
            return getConverter(context, entry);
        }
        throw new InstantiationException("Type is not an array %s for %s", this.type, contact);
    }

    @Override // org.simpleframework.xml.core.Label
    public Decorator getDecorator() {
        return this.decorator;
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public Type getDependent() {
        Class<?> componentType = this.type.getComponentType();
        return componentType == null ? new ClassType(this.type) : new ClassType(componentType);
    }

    @Override // org.simpleframework.xml.core.Label
    public Object getEmpty(Context context) {
        ArrayFactory arrayFactory = new ArrayFactory(context, new ClassType(this.type));
        if (this.label.empty()) {
            return null;
        }
        return arrayFactory.getInstance();
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public String getEntry() {
        if (this.detail.isEmpty(this.entry)) {
            this.entry = this.detail.getEntry();
        }
        return this.entry;
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
        return this.type;
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
