package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes.dex */
class Signature extends LinkedHashMap<String, Parameter> {
    private final Class type;

    public Signature(Class cls) {
        this.type = cls;
    }

    public Parameter getParameter(int i) {
        return getParameters().get(i);
    }

    public Parameter getParameter(String str) {
        return get(str);
    }

    public List<Parameter> getParameters() {
        return new ArrayList(values());
    }

    public Signature getSignature(Context context) {
        Signature signature = new Signature(this.type);
        for (Parameter parameter : values()) {
            signature.put(parameter.getPath(context), parameter);
        }
        return signature;
    }

    public Class getType() {
        return this.type;
    }
}
