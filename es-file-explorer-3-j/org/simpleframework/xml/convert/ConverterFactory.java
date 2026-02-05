package org.simpleframework.xml.convert;

import java.lang.reflect.Constructor;

/* loaded from: classes.dex */
class ConverterFactory {
    private final ConverterCache cache = new ConverterCache();

    private Constructor getConstructor(Class cls) {
        Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
        if (!declaredConstructor.isAccessible()) {
            declaredConstructor.setAccessible(true);
        }
        return declaredConstructor;
    }

    private Converter getConverter(Class cls) {
        Constructor constructor = getConstructor(cls);
        if (constructor == null) {
            throw new ConvertException("No default constructor for %s", cls);
        }
        return getConverter(cls, constructor);
    }

    private Converter getConverter(Class cls, Constructor constructor) {
        Converter converter = (Converter) constructor.newInstance(new Object[0]);
        if (converter != null) {
            this.cache.cache(cls, converter);
        }
        return converter;
    }

    public Converter getInstance(Class cls) {
        Converter fetch = this.cache.fetch(cls);
        return fetch == null ? getConverter(cls) : fetch;
    }

    public Converter getInstance(Convert convert) {
        Class<? extends Converter> value = convert.value();
        if (value.isInterface()) {
            throw new ConvertException("Can not instantiate %s", value);
        }
        return getInstance(value);
    }
}
