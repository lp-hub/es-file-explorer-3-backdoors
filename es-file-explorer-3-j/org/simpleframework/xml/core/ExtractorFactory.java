package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;

/* loaded from: classes.dex */
class ExtractorFactory {
    private final Contact contact;
    private final Annotation label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ElementExtractor implements Extractor<Element> {
        private final Contact contact;
        private final ElementUnion union;

        public ElementExtractor(Contact contact, ElementUnion elementUnion) {
            this.contact = contact;
            this.union = elementUnion;
        }

        @Override // org.simpleframework.xml.core.Extractor
        public List<Element> getAnnotations() {
            Element[] value = this.union.value();
            return value.length > 0 ? Arrays.asList(value) : Collections.emptyList();
        }

        @Override // org.simpleframework.xml.core.Extractor
        public Label getLabel(Element element) {
            return new ElementLabel(this.contact, element);
        }

        @Override // org.simpleframework.xml.core.Extractor
        public Class getType(Element element) {
            Class type = element.type();
            return type == Void.TYPE ? this.contact.getType() : type;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ElementListExtractor implements Extractor<ElementList> {
        private final Contact contact;
        private final ElementListUnion union;

        public ElementListExtractor(Contact contact, ElementListUnion elementListUnion) {
            this.contact = contact;
            this.union = elementListUnion;
        }

        @Override // org.simpleframework.xml.core.Extractor
        public List<ElementList> getAnnotations() {
            ElementList[] value = this.union.value();
            return value.length > 0 ? Arrays.asList(value) : Collections.emptyList();
        }

        @Override // org.simpleframework.xml.core.Extractor
        public Label getLabel(ElementList elementList) {
            return new ElementListLabel(this.contact, elementList);
        }

        @Override // org.simpleframework.xml.core.Extractor
        public Class getType(ElementList elementList) {
            return elementList.type();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ElementMapExtractor implements Extractor<ElementMap> {
        private final Contact contact;
        private final ElementMapUnion union;

        public ElementMapExtractor(Contact contact, ElementMapUnion elementMapUnion) {
            this.contact = contact;
            this.union = elementMapUnion;
        }

        @Override // org.simpleframework.xml.core.Extractor
        public List<ElementMap> getAnnotations() {
            ElementMap[] value = this.union.value();
            return value.length > 0 ? Arrays.asList(value) : Collections.emptyList();
        }

        @Override // org.simpleframework.xml.core.Extractor
        public Label getLabel(ElementMap elementMap) {
            return new ElementMapLabel(this.contact, elementMap);
        }

        @Override // org.simpleframework.xml.core.Extractor
        public Class getType(ElementMap elementMap) {
            return elementMap.valueType();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ExtractorBuilder {
        private final Class label;
        private final Class type;

        public ExtractorBuilder(Class cls, Class cls2) {
            this.label = cls;
            this.type = cls2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Constructor getConstructor() {
            return this.type.getConstructor(Contact.class, this.label);
        }
    }

    public ExtractorFactory(Contact contact, Annotation annotation) {
        this.contact = contact;
        this.label = annotation;
    }

    private ExtractorBuilder getBuilder(Annotation annotation) {
        if (annotation instanceof ElementUnion) {
            return new ExtractorBuilder(ElementUnion.class, ElementExtractor.class);
        }
        if (annotation instanceof ElementListUnion) {
            return new ExtractorBuilder(ElementListUnion.class, ElementListExtractor.class);
        }
        if (annotation instanceof ElementMapUnion) {
            return new ExtractorBuilder(ElementMapUnion.class, ElementMapExtractor.class);
        }
        throw new PersistenceException("Annotation %s is not a union", annotation);
    }

    private Object getInstance(Annotation annotation) {
        Constructor constructor = getBuilder(annotation).getConstructor();
        if (!constructor.isAccessible()) {
            constructor.setAccessible(true);
        }
        return constructor.newInstance(this.contact, annotation);
    }

    public Extractor getInstance() {
        return (Extractor) getInstance(this.label);
    }
}
