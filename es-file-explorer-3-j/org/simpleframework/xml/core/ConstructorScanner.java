package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.Text;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ConstructorScanner {
    private List<Initializer> list = new ArrayList();
    private Initializer primary;
    private Signature registry;
    private Class type;

    public ConstructorScanner(Class cls) {
        this.registry = new Signature(cls);
        this.type = cls;
        scan(cls);
    }

    private void build(Constructor constructor, Signature signature) {
        Initializer initializer = new Initializer(constructor, signature);
        if (initializer.isDefault()) {
            this.primary = initializer;
        }
        this.list.add(initializer);
    }

    private Parameter create(Constructor constructor, Annotation annotation, int i) {
        Parameter parameterFactory = ParameterFactory.getInstance(constructor, annotation, i);
        String path = parameterFactory.getPath();
        if (this.registry.containsKey(path)) {
            validate(parameterFactory, path);
        }
        return parameterFactory;
    }

    private boolean isInstantiable(Class cls) {
        return Modifier.isStatic(cls.getModifiers()) || !cls.isMemberClass();
    }

    private Parameter process(Constructor constructor, Annotation annotation, int i) {
        if ((annotation instanceof Attribute) || (annotation instanceof ElementList) || (annotation instanceof ElementArray) || (annotation instanceof ElementMap) || (annotation instanceof Element) || (annotation instanceof Text)) {
            return create(constructor, annotation, i);
        }
        return null;
    }

    private void scan(Class cls) {
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        if (!isInstantiable(cls)) {
            throw new ConstructorException("Can not construct inner %s", cls);
        }
        for (Constructor<?> constructor : declaredConstructors) {
            Signature signature = new Signature(cls);
            if (!cls.isPrimitive()) {
                scan(constructor, signature);
            }
        }
    }

    private void scan(Constructor constructor, Signature signature) {
        Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        for (int i = 0; i < parameterTypes.length; i++) {
            for (int i2 = 0; i2 < parameterAnnotations[i].length; i2++) {
                Parameter process = process(constructor, parameterAnnotations[i][i2], i);
                if (process != null) {
                    String path = process.getPath();
                    if (signature.containsKey(path)) {
                        throw new PersistenceException("Parameter '%s' is a duplicate in %s", path, constructor);
                    }
                    this.registry.put(path, process);
                    signature.put(path, process);
                }
            }
        }
        if (parameterTypes.length == signature.size()) {
            build(constructor, signature);
        }
    }

    private void validate(Parameter parameter, String str) {
        Parameter parameter2 = this.registry.get(str);
        if (!parameter.getAnnotation().equals(parameter2.getAnnotation())) {
            throw new MethodException("Annotations do not match for '%s' in %s", str, this.type);
        }
        if (parameter2.getType() != parameter.getType()) {
            throw new MethodException("Method types do not match for '%s' in %s", str, this.type);
        }
    }

    public Creator getCreator() {
        return new ClassCreator(this.list, this.registry, this.primary);
    }
}
