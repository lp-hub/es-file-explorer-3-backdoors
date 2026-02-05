package org.simpleframework.xml.core;

import org.simpleframework.xml.filter.Filter;
import org.simpleframework.xml.filter.PlatformFilter;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.transform.Matcher;
import org.simpleframework.xml.transform.Transform;
import org.simpleframework.xml.transform.Transformer;

/* loaded from: classes.dex */
class Support implements Filter {
    private final Instantiator creator;
    private final ScannerFactory factory;
    private final Filter filter;
    private final Matcher matcher;
    private final Transformer transform;

    public Support() {
        this(new PlatformFilter());
    }

    public Support(Filter filter) {
        this(filter, new EmptyMatcher());
    }

    public Support(Filter filter, Matcher matcher) {
        this.transform = new Transformer(matcher);
        this.factory = new ScannerFactory();
        this.creator = new Instantiator();
        this.matcher = matcher;
        this.filter = filter;
    }

    private String getClassName(Class cls) {
        if (cls.isArray()) {
            cls = cls.getComponentType();
        }
        String simpleName = cls.getSimpleName();
        return cls.isPrimitive() ? simpleName : Reflector.getName(simpleName);
    }

    public Instance getInstance(Class cls) {
        return this.creator.getInstance(cls);
    }

    public Instance getInstance(Value value) {
        return this.creator.getInstance(value);
    }

    public String getName(Class cls) {
        String name = getScanner(cls).getName();
        return name != null ? name : getClassName(cls);
    }

    public Class getPrimitive(Class cls) {
        return cls == Double.TYPE ? Double.class : cls == Float.TYPE ? Float.class : cls == Integer.TYPE ? Integer.class : cls == Long.TYPE ? Long.class : cls == Boolean.TYPE ? Boolean.class : cls == Character.TYPE ? Character.class : cls == Short.TYPE ? Short.class : cls == Byte.TYPE ? Byte.class : cls;
    }

    public Scanner getScanner(Class cls) {
        return this.factory.getInstance(cls);
    }

    public Transform getTransform(Class cls) {
        return this.matcher.match(cls);
    }

    public boolean isFloat(Class cls) {
        return cls == Double.class || cls == Float.class || cls == Float.TYPE || cls == Double.TYPE;
    }

    public boolean isPrimitive(Class cls) {
        if (cls == String.class || cls.isEnum() || cls.isPrimitive()) {
            return true;
        }
        return this.transform.valid(cls);
    }

    public Object read(String str, Class cls) {
        return this.transform.read(str, cls);
    }

    @Override // org.simpleframework.xml.filter.Filter
    public String replace(String str) {
        return this.filter.replace(str);
    }

    public boolean valid(Class cls) {
        return this.transform.valid(cls);
    }

    public String write(Object obj, Class cls) {
        return this.transform.write(obj, cls);
    }
}
