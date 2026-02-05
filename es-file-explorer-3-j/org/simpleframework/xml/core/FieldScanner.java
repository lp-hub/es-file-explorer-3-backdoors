package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Iterator;
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

/* loaded from: classes.dex */
class FieldScanner extends ContactList {
    private final DefaultType access;
    private final ContactMap done;
    private final AnnotationFactory factory;
    private final Hierarchy hierarchy;

    public FieldScanner(Class cls) {
        this(cls, null);
    }

    public FieldScanner(Class cls, DefaultType defaultType) {
        this(cls, defaultType, true);
    }

    public FieldScanner(Class cls, DefaultType defaultType, boolean z) {
        this.factory = new AnnotationFactory(z);
        this.hierarchy = new Hierarchy(cls);
        this.done = new ContactMap();
        this.access = defaultType;
        scan(cls);
    }

    private void build() {
        Iterator<Contact> it = this.done.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    private boolean isStatic(Field field) {
        return Modifier.isStatic(field.getModifiers());
    }

    private void process(Field field, Class cls) {
        Annotation annotationFactory = this.factory.getInstance(cls);
        if (annotationFactory != null) {
            process(field, annotationFactory);
        }
    }

    private void process(Field field, Annotation annotation) {
        FieldContact fieldContact = new FieldContact(field, annotation);
        if (!field.isAccessible()) {
            field.setAccessible(true);
        }
        this.done.put(field, fieldContact);
    }

    private void remove(Field field, Annotation annotation) {
        this.done.remove(field);
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
    }

    private void scan(Class cls, Class cls2) {
        for (Field field : cls.getDeclaredFields()) {
            scan(field);
        }
    }

    private void scan(Class cls, DefaultType defaultType) {
        Field[] declaredFields = cls.getDeclaredFields();
        if (defaultType == DefaultType.FIELD) {
            for (Field field : declaredFields) {
                Class<?> type = field.getType();
                if (!isStatic(field)) {
                    process(field, type);
                }
            }
        }
    }

    private void scan(Field field) {
        for (Annotation annotation : field.getDeclaredAnnotations()) {
            scan(field, annotation);
        }
    }

    private void scan(Field field, Annotation annotation) {
        if (annotation instanceof Attribute) {
            process(field, annotation);
        }
        if (annotation instanceof ElementUnion) {
            process(field, annotation);
        }
        if (annotation instanceof ElementListUnion) {
            process(field, annotation);
        }
        if (annotation instanceof ElementMapUnion) {
            process(field, annotation);
        }
        if (annotation instanceof ElementList) {
            process(field, annotation);
        }
        if (annotation instanceof ElementArray) {
            process(field, annotation);
        }
        if (annotation instanceof ElementMap) {
            process(field, annotation);
        }
        if (annotation instanceof Element) {
            process(field, annotation);
        }
        if (annotation instanceof Transient) {
            remove(field, annotation);
        }
        if (annotation instanceof Version) {
            process(field, annotation);
        }
        if (annotation instanceof Text) {
            process(field, annotation);
        }
    }
}
