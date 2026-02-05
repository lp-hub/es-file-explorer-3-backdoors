package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.Text;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class TextParameter extends TemplateParameter {
    private final Contact contact;
    private final Expression expression;
    private final Constructor factory;
    private final int index;
    private final Label label;
    private final String name;
    private final String path;
    private final Class type;

    /* loaded from: classes.dex */
    class Contact extends ParameterContact<Text> {
        public Contact(Text text, Constructor constructor, int i) {
            super(text, constructor, i);
        }

        @Override // org.simpleframework.xml.core.ParameterContact, org.simpleframework.xml.core.Contact
        public String getName() {
            return "";
        }
    }

    public TextParameter(Constructor constructor, Text text, int i) {
        this.contact = new Contact(text, constructor, i);
        this.label = new TextLabel(this.contact, text);
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
        return getName();
    }

    @Override // org.simpleframework.xml.core.Parameter
    public String getPath() {
        return this.path;
    }

    @Override // org.simpleframework.xml.core.TemplateParameter, org.simpleframework.xml.core.Parameter
    public String getPath(Context context) {
        return getPath();
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

    @Override // org.simpleframework.xml.core.TemplateParameter, org.simpleframework.xml.core.Parameter
    public boolean isText() {
        return true;
    }

    @Override // org.simpleframework.xml.core.Parameter
    public String toString() {
        return this.contact.toString();
    }
}
