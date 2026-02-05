package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.Text;

/* loaded from: classes.dex */
final class ParameterFactory {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class PameterBuilder {
        public Class create;
        public Class type;

        public PameterBuilder(Class cls, Class cls2) {
            this.create = cls;
            this.type = cls2;
        }

        private Constructor getConstructor(Class... clsArr) {
            return this.create.getConstructor(clsArr);
        }

        public Constructor getConstructor() {
            return getConstructor(Constructor.class, this.type, Integer.TYPE);
        }
    }

    ParameterFactory() {
    }

    private static PameterBuilder getBuilder(Annotation annotation) {
        if (annotation instanceof Element) {
            return new PameterBuilder(ElementParameter.class, Element.class);
        }
        if (annotation instanceof ElementList) {
            return new PameterBuilder(ElementListParameter.class, ElementList.class);
        }
        if (annotation instanceof ElementArray) {
            return new PameterBuilder(ElementArrayParameter.class, ElementArray.class);
        }
        if (annotation instanceof ElementMap) {
            return new PameterBuilder(ElementMapParameter.class, ElementMap.class);
        }
        if (annotation instanceof Attribute) {
            return new PameterBuilder(AttributeParameter.class, Attribute.class);
        }
        if (annotation instanceof Text) {
            return new PameterBuilder(TextParameter.class, Text.class);
        }
        throw new PersistenceException("Annotation %s not supported", annotation);
    }

    private static Constructor getConstructor(Annotation annotation) {
        return getBuilder(annotation).getConstructor();
    }

    public static Parameter getInstance(Constructor constructor, Annotation annotation, int i) {
        Constructor constructor2 = getConstructor(annotation);
        if (!constructor2.isAccessible()) {
            constructor2.setAccessible(true);
        }
        return (Parameter) constructor2.newInstance(constructor, annotation, Integer.valueOf(i));
    }
}
