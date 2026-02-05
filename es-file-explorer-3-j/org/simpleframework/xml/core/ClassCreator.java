package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ClassCreator implements Creator {
    private final List<Initializer> list;
    private final Initializer primary;
    private final Signature registry;
    private final Class type;

    public ClassCreator(List<Initializer> list, Signature signature, Initializer initializer) {
        this.type = signature.getType();
        this.registry = signature;
        this.primary = initializer;
        this.list = list;
    }

    private Initializer getInitializer(Context context, Criteria criteria) {
        Initializer initializer = this.primary;
        Initializer initializer2 = initializer;
        double d = 0.0d;
        for (Initializer initializer3 : this.list) {
            double score = initializer3.getScore(context, criteria);
            if (score > d) {
                d = score;
                initializer2 = initializer3;
            }
        }
        return initializer2;
    }

    @Override // org.simpleframework.xml.core.Creator
    public List<Initializer> getInitializers() {
        return new ArrayList(this.list);
    }

    @Override // org.simpleframework.xml.core.Creator
    public Object getInstance(Context context) {
        return this.primary.getInstance(context);
    }

    @Override // org.simpleframework.xml.core.Creator
    public Object getInstance(Context context, Criteria criteria) {
        Initializer initializer = getInitializer(context, criteria);
        if (initializer == null) {
            throw new PersistenceException("Constructor not matched for %s", this.type);
        }
        return initializer.getInstance(context, criteria);
    }

    @Override // org.simpleframework.xml.core.Creator
    public Parameter getParameter(String str) {
        return this.registry.get(str);
    }

    @Override // org.simpleframework.xml.core.Creator
    public List<Parameter> getParameters() {
        return this.registry.getParameters();
    }

    @Override // org.simpleframework.xml.core.Creator
    public boolean isDefault() {
        return this.primary != null;
    }

    public String toString() {
        return String.format("creator for %s", this.type);
    }
}
