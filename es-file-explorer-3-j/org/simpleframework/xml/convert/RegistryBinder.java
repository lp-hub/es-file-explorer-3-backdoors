package org.simpleframework.xml.convert;

/* loaded from: classes.dex */
class RegistryBinder {
    private final ConverterFactory factory = new ConverterFactory();
    private final ClassCache cache = new ClassCache();

    private Converter create(Class cls) {
        return this.factory.getInstance(cls);
    }

    public void bind(Class cls, Class cls2) {
        this.cache.cache(cls, cls2);
    }

    public Converter lookup(Class cls) {
        Class fetch = this.cache.fetch(cls);
        if (fetch != null) {
            return create(fetch);
        }
        return null;
    }
}
