package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MethodPartFactory {
    private final AnnotationFactory factory;

    public MethodPartFactory() {
        this(true);
    }

    public MethodPartFactory(boolean z) {
        this.factory = new AnnotationFactory(z);
    }

    private Annotation getAnnotation(Method method) {
        Class type = getType(method);
        if (type != null) {
            return this.factory.getInstance(type);
        }
        return null;
    }

    private MethodType getMethodType(Method method) {
        String name = method.getName();
        return name.startsWith("get") ? MethodType.GET : name.startsWith("is") ? MethodType.IS : name.startsWith("set") ? MethodType.SET : MethodType.NONE;
    }

    private MethodName getName(Method method, Annotation annotation) {
        MethodType methodType = getMethodType(method);
        if (methodType != MethodType.GET && methodType != MethodType.IS) {
            if (methodType == MethodType.SET) {
                return getWrite(method, methodType);
            }
            throw new MethodException("Annotation %s must mark a set or get method", annotation);
        }
        return getRead(method, methodType);
    }

    private Class getParameterType(Method method) {
        if (method.getParameterTypes().length == 1) {
            return method.getParameterTypes()[0];
        }
        return null;
    }

    private MethodName getRead(Method method, MethodType methodType) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        String name = method.getName();
        if (parameterTypes.length != 0) {
            throw new MethodException("Get method %s is not a valid property", method);
        }
        String typeName = getTypeName(name, methodType);
        if (typeName == null) {
            throw new MethodException("Could not get name for %s", method);
        }
        return new MethodName(method, methodType, typeName);
    }

    private Class getReturnType(Method method) {
        if (method.getParameterTypes().length == 0) {
            return method.getReturnType();
        }
        return null;
    }

    private String getTypeName(String str, MethodType methodType) {
        int prefix = methodType.getPrefix();
        int length = str.length();
        if (length > prefix) {
            str = str.substring(prefix, length);
        }
        return Reflector.getName(str);
    }

    private MethodName getWrite(Method method, MethodType methodType) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        String name = method.getName();
        if (parameterTypes.length != 1) {
            throw new MethodException("Set method %s is not a valid property", method);
        }
        String typeName = getTypeName(name, methodType);
        if (typeName == null) {
            throw new MethodException("Could not get name for %s", method);
        }
        return new MethodName(method, methodType, typeName);
    }

    public MethodPart getInstance(Method method) {
        Annotation annotation = getAnnotation(method);
        if (annotation != null) {
            return getInstance(method, annotation);
        }
        return null;
    }

    public MethodPart getInstance(Method method, Annotation annotation) {
        MethodName name = getName(method, annotation);
        return name.getType() == MethodType.SET ? new SetPart(name, annotation) : new GetPart(name, annotation);
    }

    public Class getType(Method method) {
        MethodType methodType = getMethodType(method);
        if (methodType == MethodType.SET) {
            return getParameterType(method);
        }
        if (methodType == MethodType.GET || methodType == MethodType.IS) {
            return getReturnType(method);
        }
        return null;
    }
}
