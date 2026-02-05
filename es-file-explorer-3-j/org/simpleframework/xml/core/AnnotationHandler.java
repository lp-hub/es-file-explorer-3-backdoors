package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
class AnnotationHandler implements InvocationHandler {
    private static final String CLASS = "annotationType";
    private static final String EQUAL = "equals";
    private static final String REQUIRED = "required";
    private static final String STRING = "toString";
    private final Comparer comparer;
    private final boolean required;
    private final Class type;

    public AnnotationHandler(Class cls) {
        this(cls, true);
    }

    public AnnotationHandler(Class cls, boolean z) {
        this.comparer = new Comparer();
        this.required = z;
        this.type = cls;
    }

    private void attributes(StringBuilder sb) {
        Method[] declaredMethods = this.type.getDeclaredMethods();
        for (int i = 0; i < declaredMethods.length; i++) {
            String name = declaredMethods[i].getName();
            Object value = value(declaredMethods[i]);
            if (i > 0) {
                sb.append(',');
                sb.append(' ');
            }
            sb.append(name);
            sb.append('=');
            sb.append(value);
        }
        sb.append(')');
    }

    private boolean equals(Object obj, Object[] objArr) {
        Annotation annotation = (Annotation) obj;
        Annotation annotation2 = (Annotation) objArr[0];
        if (annotation.annotationType() != annotation2.annotationType()) {
            throw new PersistenceException("Annotation %s is not the same as %s", annotation, annotation2);
        }
        return this.comparer.equals(annotation, annotation2);
    }

    private void name(StringBuilder sb) {
        String name = this.type.getName();
        if (name != null) {
            sb.append('@');
            sb.append(name);
            sb.append('(');
        }
    }

    private Object value(Method method) {
        return method.getName().equals(REQUIRED) ? Boolean.valueOf(this.required) : method.getDefaultValue();
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        return name.equals(STRING) ? toString() : name.equals(EQUAL) ? Boolean.valueOf(equals(obj, objArr)) : name.equals(CLASS) ? this.type : name.equals(REQUIRED) ? Boolean.valueOf(this.required) : method.getDefaultValue();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.type != null) {
            name(sb);
            attributes(sb);
        }
        return sb.toString();
    }
}
