package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Proxy;
import java.util.Collection;
import java.util.Map;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementMap;

/* loaded from: classes.dex */
class AnnotationFactory {
    private final boolean required;

    public AnnotationFactory() {
        this(true);
    }

    public AnnotationFactory(boolean z) {
        this.required = z;
    }

    private ClassLoader getClassLoader() {
        return AnnotationFactory.class.getClassLoader();
    }

    private Annotation getInstance(ClassLoader classLoader, Class cls) {
        return (Annotation) Proxy.newProxyInstance(classLoader, new Class[]{cls}, new AnnotationHandler(cls, this.required));
    }

    public Annotation getInstance(Class cls) {
        ClassLoader classLoader = getClassLoader();
        return Map.class.isAssignableFrom(cls) ? getInstance(classLoader, ElementMap.class) : Collection.class.isAssignableFrom(cls) ? getInstance(classLoader, ElementList.class) : cls.isArray() ? getInstance(classLoader, ElementArray.class) : getInstance(classLoader, Element.class);
    }
}
