package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.Version;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class LabelFactory {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class LabelBuilder {
        public Class entry;
        public Class label;
        public Class type;

        public LabelBuilder(Class cls, Class cls2) {
            this(cls, cls2, null);
        }

        public LabelBuilder(Class cls, Class cls2, Class cls3) {
            this.entry = cls3;
            this.label = cls2;
            this.type = cls;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Constructor getConstructor(Class cls) {
            return this.type.getConstructor(Contact.class, cls);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Constructor getConstructor(Class cls, Class cls2) {
            return this.type.getConstructor(Contact.class, cls, cls2);
        }

        public Constructor getConstructor() {
            return this.entry != null ? getConstructor(this.label, this.entry) : getConstructor(this.label);
        }
    }

    LabelFactory() {
    }

    private static LabelBuilder getBuilder(Annotation annotation) {
        if (annotation instanceof Element) {
            return new LabelBuilder(ElementLabel.class, Element.class);
        }
        if (annotation instanceof ElementList) {
            return new LabelBuilder(ElementListLabel.class, ElementList.class);
        }
        if (annotation instanceof ElementArray) {
            return new LabelBuilder(ElementArrayLabel.class, ElementArray.class);
        }
        if (annotation instanceof ElementMap) {
            return new LabelBuilder(ElementMapLabel.class, ElementMap.class);
        }
        if (annotation instanceof ElementUnion) {
            return new LabelBuilder(ElementUnionLabel.class, ElementUnion.class, Element.class);
        }
        if (annotation instanceof ElementListUnion) {
            return new LabelBuilder(ElementListUnionLabel.class, ElementListUnion.class, ElementList.class);
        }
        if (annotation instanceof ElementMapUnion) {
            return new LabelBuilder(ElementMapUnionLabel.class, ElementMapUnion.class, ElementMap.class);
        }
        if (annotation instanceof Attribute) {
            return new LabelBuilder(AttributeLabel.class, Attribute.class);
        }
        if (annotation instanceof Version) {
            return new LabelBuilder(VersionLabel.class, Version.class);
        }
        if (annotation instanceof Text) {
            return new LabelBuilder(TextLabel.class, Text.class);
        }
        throw new PersistenceException("Annotation %s not supported", annotation);
    }

    private static Constructor getConstructor(Annotation annotation) {
        Constructor constructor = getBuilder(annotation).getConstructor();
        if (!constructor.isAccessible()) {
            constructor.setAccessible(true);
        }
        return constructor;
    }

    public static Label getInstance(Contact contact, Annotation annotation) {
        return getInstance(contact, annotation, null);
    }

    public static Label getInstance(Contact contact, Annotation annotation, Annotation annotation2) {
        Label label = getLabel(contact, annotation, annotation2);
        return label == null ? label : new CacheLabel(label);
    }

    private static Label getLabel(Contact contact, Annotation annotation, Annotation annotation2) {
        Constructor constructor = getConstructor(annotation);
        return annotation2 != null ? (Label) constructor.newInstance(contact, annotation, annotation2) : (Label) constructor.newInstance(contact, annotation);
    }
}
