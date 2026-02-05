package org.simpleframework.xml.core;

/* loaded from: classes.dex */
abstract class TemplateParameter implements Parameter {
    @Override // org.simpleframework.xml.core.Parameter
    public String getName(Context context) {
        return context.getStyle().getElement(getName());
    }

    @Override // org.simpleframework.xml.core.Parameter
    public String getPath(Context context) {
        return getExpression().getElement(getName(context));
    }

    @Override // org.simpleframework.xml.core.Parameter
    public boolean isAttribute() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Parameter
    public boolean isText() {
        return false;
    }
}
