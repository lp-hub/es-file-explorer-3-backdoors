package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Style;

/* loaded from: classes.dex */
class ElementMapLabel extends TemplateLabel {
    private Decorator decorator;
    private Introspector detail;
    private Entry entry;
    private Class[] items;
    private ElementMap label;
    private String name;
    private String parent;
    private Class type;

    public ElementMapLabel(Contact contact, ElementMap elementMap) {
        this.detail = new Introspector(contact, this);
        this.decorator = new Qualifier(contact);
        this.entry = new Entry(contact, elementMap);
        this.type = contact.getType();
        this.name = elementMap.name();
        this.label = elementMap;
    }

    private Type getMap() {
        return new ClassType(this.type);
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
        Type map = getMap();
        return !this.label.inline() ? new CompositeMap(context, this.entry, map) : new CompositeInlineMap(context, this.entry, map);
    }

    @Override // org.simpleframework.xml.core.Label
    public Decorator getDecorator() {
        return this.decorator;
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public Type getDependent() {
        Contact contact = getContact();
        if (this.items == null) {
            this.items = contact.getDependents();
        }
        if (this.items == null) {
            throw new ElementException("Unable to determine type for %s", contact);
        }
        return this.items.length == 0 ? new ClassType(Object.class) : new ClassType(this.items[0]);
    }

    @Override // org.simpleframework.xml.core.Label
    public Object getEmpty(Context context) {
        MapFactory mapFactory = new MapFactory(context, new ClassType(this.type));
        if (this.label.empty()) {
            return null;
        }
        return mapFactory.getInstance();
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public String getEntry() {
        if (this.detail.isEmpty(this.parent)) {
            this.parent = this.detail.getEntry();
        }
        return this.parent;
    }

    @Override // org.simpleframework.xml.core.Label
    public Expression getExpression() {
        return this.detail.getExpression();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getName() {
        return this.label.inline() ? this.entry.getEntry() : this.detail.getName();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getName(Context context) {
        Style style = context.getStyle();
        String entry = this.entry.getEntry();
        if (!this.label.inline()) {
            entry = this.detail.getName();
        }
        return style.getElement(entry);
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
