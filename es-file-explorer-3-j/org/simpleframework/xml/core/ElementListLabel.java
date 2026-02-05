package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.strategy.Type;

/* loaded from: classes.dex */
class ElementListLabel extends TemplateLabel {
    private Decorator decorator;
    private Introspector detail;
    private String entry;
    private Class item;
    private ElementList label;
    private String name;
    private Class type;

    public ElementListLabel(Contact contact, ElementList elementList) {
        this.detail = new Introspector(contact, this);
        this.decorator = new Qualifier(contact);
        this.type = contact.getType();
        this.entry = elementList.entry();
        this.item = elementList.type();
        this.name = elementList.name();
        this.label = elementList;
    }

    private Converter getConverter(Context context, String str) {
        Type dependent = getDependent();
        Contact contact = getContact();
        return !context.isPrimitive(dependent) ? new CompositeList(context, contact, dependent, str) : new PrimitiveList(context, contact, dependent, str);
    }

    private String getEntry(Context context) {
        return context.getStyle().getElement(getEntry());
    }

    private Converter getInlineConverter(Context context, String str) {
        Type dependent = getDependent();
        Contact contact = getContact();
        return !context.isPrimitive(dependent) ? new CompositeInlineList(context, contact, dependent, str) : new PrimitiveInlineList(context, contact, dependent, str);
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
        return !this.label.inline() ? getConverter(context, entry) : getInlineConverter(context, entry);
    }

    @Override // org.simpleframework.xml.core.Label
    public Decorator getDecorator() {
        return this.decorator;
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public Type getDependent() {
        Contact contact = getContact();
        if (this.item == Void.TYPE) {
            this.item = contact.getDependent();
        }
        if (this.item == null) {
            throw new ElementException("Unable to determine generic type for %s", contact);
        }
        return new ClassType(this.item);
    }

    @Override // org.simpleframework.xml.core.Label
    public Object getEmpty(Context context) {
        CollectionFactory collectionFactory = new CollectionFactory(context, new ClassType(this.type));
        if (this.label.empty()) {
            return null;
        }
        return collectionFactory.getInstance();
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

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public boolean isCollection() {
        return true;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isData() {
        return this.label.data();
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public boolean isInline() {
        return this.label.inline();
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
