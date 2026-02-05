package org.simpleframework.xml.transform;

/* loaded from: classes.dex */
class ClassTransform implements Transform<Class> {
    private ClassLoader getCallerClassLoader() {
        return getClass().getClassLoader();
    }

    private static ClassLoader getClassLoader() {
        return Thread.currentThread().getContextClassLoader();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public Class read(String str) {
        ClassLoader classLoader = getClassLoader();
        if (classLoader == null) {
            classLoader = getCallerClassLoader();
        }
        return classLoader.loadClass(str);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Class cls) {
        return cls.getName();
    }
}
