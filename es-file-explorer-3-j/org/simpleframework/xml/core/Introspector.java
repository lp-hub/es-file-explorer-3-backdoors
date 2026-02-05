package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Path;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.strategy.Type;

/* loaded from: classes.dex */
class Introspector {
    private Contact contact;
    private Label label;
    private Annotation marker;

    public Introspector(Contact contact, Label label) {
        this.marker = contact.getAnnotation();
        this.contact = contact;
        this.label = label;
    }

    private String getDefault() {
        String override = this.label.getOverride();
        return !isEmpty(override) ? override : this.contact.getName();
    }

    private String getName(Class cls) {
        String root = getRoot(cls);
        return root != null ? root : Reflector.getName(cls.getSimpleName());
    }

    private String getRoot(Class cls) {
        for (Class cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            String root = getRoot(cls, cls2);
            if (root != null) {
                return root;
            }
        }
        return null;
    }

    private String getRoot(Class<?> cls, Class<?> cls2) {
        String simpleName = cls2.getSimpleName();
        if (!cls2.isAnnotationPresent(Root.class)) {
            return null;
        }
        String name = ((Root) cls2.getAnnotation(Root.class)).name();
        return !isEmpty(name) ? name : Reflector.getName(simpleName);
    }

    public Contact getContact() {
        return this.contact;
    }

    public Type getDependent() {
        return this.label.getDependent();
    }

    public String getEntry() {
        Class<?> type = getDependent().getType();
        if (type.isArray()) {
            type = type.getComponentType();
        }
        String name = getName(type);
        if (name == null) {
            return null;
        }
        return name.intern();
    }

    public Expression getExpression() {
        String path = getPath();
        return path != null ? new PathParser(this.contact, path) : new PathParser(this.contact, ".");
    }

    public String getName() {
        String entry = this.label.getEntry();
        if (!this.label.isInline()) {
            entry = getDefault();
        }
        return entry.intern();
    }

    public String getPath() {
        Path path = (Path) this.contact.getAnnotation(Path.class);
        if (path == null) {
            return null;
        }
        return path.value();
    }

    public boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public String toString() {
        return String.format("%s on %s", this.marker, this.contact);
    }
}
