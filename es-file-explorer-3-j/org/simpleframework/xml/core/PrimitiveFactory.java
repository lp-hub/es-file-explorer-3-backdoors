package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class PrimitiveFactory extends Factory {
    public PrimitiveFactory(Context context, Type type) {
        super(context, type);
    }

    public PrimitiveFactory(Context context, Type type, Class cls) {
        super(context, type, cls);
    }

    public Object getInstance(String str, Class cls) {
        return this.support.read(str, cls);
    }

    public Instance getInstance(InputNode inputNode) {
        Value override = getOverride(inputNode);
        return override == null ? this.context.getInstance(getType()) : new ObjectInstance(this.context, override);
    }

    public String getText(Object obj) {
        Class<?> cls = obj.getClass();
        return cls.isEnum() ? this.support.write(obj, cls) : this.support.write(obj, cls);
    }
}
