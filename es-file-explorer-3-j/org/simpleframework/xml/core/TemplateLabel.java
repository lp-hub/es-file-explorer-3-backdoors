package org.simpleframework.xml.core;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import org.simpleframework.xml.strategy.Type;

/* loaded from: classes.dex */
abstract class TemplateLabel implements Label {
    @Override // org.simpleframework.xml.core.Label
    public Type getDependent() {
        return null;
    }

    @Override // org.simpleframework.xml.core.Label
    public String getEntry() {
        return null;
    }

    @Override // org.simpleframework.xml.core.Label
    public Label getLabel(Class cls) {
        return this;
    }

    @Override // org.simpleframework.xml.core.Label
    public Collection<String> getNames() {
        return Arrays.asList(getPath(), getName());
    }

    @Override // org.simpleframework.xml.core.Label
    public Collection<String> getNames(Context context) {
        return Arrays.asList(getPath(context), getName(context));
    }

    @Override // org.simpleframework.xml.core.Label
    public Collection<String> getPaths() {
        return Collections.singleton(getPath());
    }

    @Override // org.simpleframework.xml.core.Label
    public Collection<String> getPaths(Context context) {
        return Collections.singleton(getPath(context));
    }

    @Override // org.simpleframework.xml.core.Label
    public Type getType(Class cls) {
        return getContact();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isAttribute() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isCollection() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isInline() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isText() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isUnion() {
        return false;
    }
}
