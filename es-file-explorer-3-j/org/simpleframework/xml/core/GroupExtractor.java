package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

/* loaded from: classes.dex */
class GroupExtractor implements Group {
    private final ExtractorFactory factory;
    private final Annotation label;
    private final LabelMap elements = new LabelMap();
    private final Registry registry = new Registry(this.elements);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Registry extends LinkedHashMap<Class, Label> implements Iterable<Label> {
        private final LabelMap elements;

        public Registry(LabelMap labelMap) {
            this.elements = labelMap;
        }

        @Override // java.lang.Iterable
        public Iterator<Label> iterator() {
            return values().iterator();
        }

        public void register(Class cls, Label label) {
            CacheLabel cacheLabel = new CacheLabel(label);
            if (containsKey(cls)) {
                return;
            }
            put(cls, cacheLabel);
        }

        public void register(String str, Label label) {
            CacheLabel cacheLabel = new CacheLabel(label);
            if (this.elements.containsKey(str)) {
                return;
            }
            this.elements.put(str, cacheLabel);
        }
    }

    public GroupExtractor(Contact contact, Annotation annotation) {
        this.factory = new ExtractorFactory(contact, annotation);
        this.label = annotation;
        extract();
    }

    private void extract() {
        Extractor extractorFactory = this.factory.getInstance();
        if (extractorFactory != null) {
            extract(extractorFactory);
        }
    }

    private void extract(Extractor extractor) {
        Iterator it = extractor.getAnnotations().iterator();
        while (it.hasNext()) {
            extract(extractor, (Annotation) it.next());
        }
    }

    private void extract(Extractor extractor, Annotation annotation) {
        Label label = extractor.getLabel(annotation);
        Class type = extractor.getType(annotation);
        String name = label.getName();
        if (this.registry != null) {
            this.registry.register(name, label);
            this.registry.register(type, label);
        }
    }

    @Override // org.simpleframework.xml.core.Group
    public LabelMap getElements(Context context) {
        return this.elements.getLabels(context);
    }

    @Override // org.simpleframework.xml.core.Group
    public Label getLabel(Class cls) {
        return this.registry.get(cls);
    }

    public Set<String> getNames() {
        return this.elements.getKeys();
    }

    public Set<String> getNames(Context context) {
        return this.elements.getKeys(context);
    }

    public Set<String> getPaths() {
        return this.elements.getPaths();
    }

    public Set<String> getPaths(Context context) {
        return this.elements.getPaths(context);
    }

    @Override // org.simpleframework.xml.core.Group
    public boolean isInline() {
        Iterator<Label> it = this.registry.iterator();
        while (it.hasNext()) {
            if (!it.next().isInline()) {
                return false;
            }
        }
        return !this.registry.isEmpty();
    }

    public boolean isValid(Class cls) {
        return this.registry.containsKey(cls);
    }

    @Override // org.simpleframework.xml.core.Group
    public String toString() {
        return this.label.toString();
    }
}
