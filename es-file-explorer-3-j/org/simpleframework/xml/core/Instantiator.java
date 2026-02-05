package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.strategy.Value;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Instantiator {
    private final ConstructorCache cache = new ConstructorCache();

    public Instance getInstance(Class cls) {
        return new ClassInstance(this, cls);
    }

    public Instance getInstance(Value value) {
        return new ValueInstance(this, value);
    }

    public Object getObject(Class cls) {
        Constructor constructor = this.cache.get(cls);
        if (constructor == null) {
            constructor = cls.getDeclaredConstructor(new Class[0]);
            if (!constructor.isAccessible()) {
                constructor.setAccessible(true);
            }
            this.cache.put(cls, constructor);
        }
        return constructor.newInstance(new Object[0]);
    }
}
