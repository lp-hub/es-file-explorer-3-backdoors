package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.Transient;
import org.simpleframework.xml.Version;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MethodScanner extends ContactList {
    private final DefaultType access;
    private final MethodPartFactory factory;
    private final Hierarchy hierarchy;
    private final PartMap read;
    private final Class type;
    private final PartMap write;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class PartMap extends LinkedHashMap<String, MethodPart> implements Iterable<String> {
        private PartMap() {
        }

        /* synthetic */ PartMap(MethodScanner methodScanner, PartMap partMap) {
            this();
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            return keySet().iterator();
        }

        public MethodPart take(String str) {
            return (MethodPart) remove(str);
        }
    }

    public MethodScanner(Class cls) {
        this(cls, null);
    }

    public MethodScanner(Class cls, DefaultType defaultType) {
        this(cls, defaultType, true);
    }

    public MethodScanner(Class cls, DefaultType defaultType, boolean z) {
        PartMap partMap = null;
        this.factory = new MethodPartFactory(z);
        this.hierarchy = new Hierarchy(cls);
        this.write = new PartMap(this, partMap);
        this.read = new PartMap(this, partMap);
        this.access = defaultType;
        this.type = cls;
        scan(cls);
    }

    private void build() {
        Iterator<String> it = this.read.iterator();
        while (it.hasNext()) {
            String next = it.next();
            MethodPart methodPart = this.read.get(next);
            if (methodPart != null) {
                build(methodPart, next);
            }
        }
    }

    private void build(MethodPart methodPart) {
        add(new MethodContact(methodPart));
    }

    private void build(MethodPart methodPart, String str) {
        MethodPart take = this.write.take(str);
        if (take != null) {
            build(methodPart, take);
        } else {
            build(methodPart);
        }
    }

    private void build(MethodPart methodPart, MethodPart methodPart2) {
        Annotation annotation = methodPart.getAnnotation();
        String name = methodPart.getName();
        if (!methodPart2.getAnnotation().equals(annotation)) {
            throw new MethodException("Annotations do not match for '%s' in %s", name, this.type);
        }
        Class type = methodPart.getType();
        if (type != methodPart2.getType()) {
            throw new MethodException("Method types do not match for %s in %s", name, type);
        }
        add(new MethodContact(methodPart, methodPart2));
    }

    private void process(Method method) {
        MethodPart methodPartFactory = this.factory.getInstance(method);
        MethodType methodType = methodPartFactory.getMethodType();
        if (methodType == MethodType.GET) {
            process(methodPartFactory, this.read);
        }
        if (methodType == MethodType.IS) {
            process(methodPartFactory, this.read);
        }
        if (methodType == MethodType.SET) {
            process(methodPartFactory, this.write);
        }
    }

    private void process(Method method, Annotation annotation) {
        MethodPart methodPartFactory = this.factory.getInstance(method, annotation);
        MethodType methodType = methodPartFactory.getMethodType();
        if (methodType == MethodType.GET) {
            process(methodPartFactory, this.read);
        }
        if (methodType == MethodType.IS) {
            process(methodPartFactory, this.read);
        }
        if (methodType == MethodType.SET) {
            process(methodPartFactory, this.write);
        }
    }

    private void process(MethodPart methodPart, PartMap partMap) {
        String name = methodPart.getName();
        if (name != null) {
            partMap.put(name, methodPart);
        }
    }

    private void remove(Method method, Annotation annotation) {
        MethodPart methodPartFactory = this.factory.getInstance(method, annotation);
        MethodType methodType = methodPartFactory.getMethodType();
        if (methodType == MethodType.GET) {
            remove(methodPartFactory, this.read);
        }
        if (methodType == MethodType.IS) {
            remove(methodPartFactory, this.read);
        }
        if (methodType == MethodType.SET) {
            remove(methodPartFactory, this.write);
        }
    }

    private void remove(MethodPart methodPart, PartMap partMap) {
        String name = methodPart.getName();
        if (name != null) {
            partMap.remove(name);
        }
    }

    private void scan(Class cls) {
        Iterator it = this.hierarchy.iterator();
        while (it.hasNext()) {
            scan((Class) it.next(), this.access);
        }
        Iterator it2 = this.hierarchy.iterator();
        while (it2.hasNext()) {
            scan((Class) it2.next(), cls);
        }
        build();
        validate();
    }

    private void scan(Class cls, Class cls2) {
        for (Method method : cls.getDeclaredMethods()) {
            scan(method);
        }
    }

    private void scan(Class cls, DefaultType defaultType) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        if (defaultType == DefaultType.PROPERTY) {
            for (Method method : declaredMethods) {
                if (this.factory.getType(method) != null) {
                    process(method);
                }
            }
        }
    }

    private void scan(Method method) {
        for (Annotation annotation : method.getDeclaredAnnotations()) {
            scan(method, annotation);
        }
    }

    private void scan(Method method, Annotation annotation) {
        if (annotation instanceof Attribute) {
            process(method, annotation);
        }
        if (annotation instanceof ElementUnion) {
            process(method, annotation);
        }
        if (annotation instanceof ElementListUnion) {
            process(method, annotation);
        }
        if (annotation instanceof ElementMapUnion) {
            process(method, annotation);
        }
        if (annotation instanceof ElementList) {
            process(method, annotation);
        }
        if (annotation instanceof ElementArray) {
            process(method, annotation);
        }
        if (annotation instanceof ElementMap) {
            process(method, annotation);
        }
        if (annotation instanceof Element) {
            process(method, annotation);
        }
        if (annotation instanceof Transient) {
            remove(method, annotation);
        }
        if (annotation instanceof Version) {
            process(method, annotation);
        }
        if (annotation instanceof Text) {
            process(method, annotation);
        }
    }

    private void validate() {
        Iterator<String> it = this.write.iterator();
        while (it.hasNext()) {
            String next = it.next();
            MethodPart methodPart = this.write.get(next);
            if (methodPart != null) {
                validate(methodPart, next);
            }
        }
    }

    private void validate(MethodPart methodPart, String str) {
        MethodPart take = this.read.take(str);
        Method method = methodPart.getMethod();
        if (take == null) {
            throw new MethodException("No matching get method for %s in %s", method, this.type);
        }
    }
}
