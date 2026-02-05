package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
class SetPart implements MethodPart {
    private final Annotation label;
    private final Method method;
    private final String name;
    private final MethodType type;

    public SetPart(MethodName methodName, Annotation annotation) {
        this.method = methodName.getMethod();
        this.name = methodName.getName();
        this.type = methodName.getType();
        this.label = annotation;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Annotation getAnnotation() {
        return this.label;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return (T) this.method.getAnnotation(cls);
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Class getDependent() {
        return Reflector.getParameterDependent(this.method, 0);
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Class[] getDependents() {
        return Reflector.getParameterDependents(this.method, 0);
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Method getMethod() {
        if (!this.method.isAccessible()) {
            this.method.setAccessible(true);
        }
        return this.method;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public MethodType getMethodType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public String getName() {
        return this.name;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Class getType() {
        return this.method.getParameterTypes()[0];
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public String toString() {
        return this.method.toGenericString();
    }
}
