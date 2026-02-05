package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Collection;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.strategy.Type;

/* loaded from: classes.dex */
class ElementMapUnionLabel implements Label {
    private Contact contact;
    private Expression expression;
    private GroupExtractor extractor;
    private Label label;

    public ElementMapUnionLabel(Contact contact, ElementMapUnion elementMapUnion, ElementMap elementMap) {
        this.extractor = new GroupExtractor(contact, elementMapUnion);
        this.label = new ElementMapLabel(contact, elementMap);
        this.contact = contact;
    }

    @Override // org.simpleframework.xml.core.Label
    public Annotation getAnnotation() {
        return this.label.getAnnotation();
    }

    @Override // org.simpleframework.xml.core.Label
    public Contact getContact() {
        return this.contact;
    }

    @Override // org.simpleframework.xml.core.Label
    public Converter getConverter(Context context) {
        Expression expression = getExpression();
        Contact contact = getContact();
        if (contact == null) {
            throw new UnionException("Union %s was not declared on a field or method", this.label);
        }
        return new CompositeMapUnion(context, this.extractor, expression, contact);
    }

    @Override // org.simpleframework.xml.core.Label
    public Decorator getDecorator() {
        return this.label.getDecorator();
    }

    @Override // org.simpleframework.xml.core.Label
    public Type getDependent() {
        return this.label.getDependent();
    }

    @Override // org.simpleframework.xml.core.Label
    public Object getEmpty(Context context) {
        return this.label.getEmpty(context);
    }

    @Override // org.simpleframework.xml.core.Label
    public String getEntry() {
        return this.label.getEntry();
    }

    @Override // org.simpleframework.xml.core.Label
    public Expression getExpression() {
        if (this.expression == null) {
            this.expression = this.label.getExpression();
        }
        return this.expression;
    }

    @Override // org.simpleframework.xml.core.Label
    public Label getLabel(Class cls) {
        return this;
    }

    @Override // org.simpleframework.xml.core.Label
    public String getName() {
        return this.label.getName();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getName(Context context) {
        return this.label.getName(context);
    }

    @Override // org.simpleframework.xml.core.Label
    public Collection<String> getNames() {
        return this.extractor.getNames();
    }

    @Override // org.simpleframework.xml.core.Label
    public Collection<String> getNames(Context context) {
        return this.extractor.getNames(context);
    }

    @Override // org.simpleframework.xml.core.Label
    public String getOverride() {
        return this.label.getOverride();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getPath() {
        return this.label.getPath();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getPath(Context context) {
        return this.label.getPath(context);
    }

    @Override // org.simpleframework.xml.core.Label
    public Collection<String> getPaths() {
        return this.extractor.getPaths();
    }

    @Override // org.simpleframework.xml.core.Label
    public Collection<String> getPaths(Context context) {
        return this.extractor.getPaths(context);
    }

    @Override // org.simpleframework.xml.core.Label
    public Class getType() {
        return this.label.getType();
    }

    @Override // org.simpleframework.xml.core.Label
    public Type getType(Class cls) {
        return getContact();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isAttribute() {
        return this.label.isAttribute();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isCollection() {
        return this.label.isCollection();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isData() {
        return this.label.isData();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isInline() {
        return this.label.isInline();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isRequired() {
        return this.label.isRequired();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isText() {
        return this.label.isText();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isUnion() {
        return true;
    }

    @Override // org.simpleframework.xml.core.Label
    public String toString() {
        return this.label.toString();
    }
}
