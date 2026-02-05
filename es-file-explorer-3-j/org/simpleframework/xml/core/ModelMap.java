package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedHashMap;
import org.simpleframework.xml.stream.Style;

/* loaded from: classes.dex */
class ModelMap extends LinkedHashMap<String, ModelList> implements Iterable<ModelList> {
    private final Class type;

    public ModelMap(Class cls) {
        this.type = cls;
    }

    private ModelMap getModels(Style style) {
        ModelMap modelMap = new ModelMap(this.type);
        for (String str : keySet()) {
            ModelList modelList = get(str);
            String element = style.getElement(str);
            if (modelList != null) {
                modelList = modelList.build();
            }
            if (modelMap.containsKey(element)) {
                throw new PathException("Path with name '%s' is a duplicate of '%s' in %s ", str, element, this.type);
            }
            modelMap.put(element, modelList);
        }
        return modelMap;
    }

    public ModelMap getModels(Context context) {
        Style style = context.getStyle();
        return style != null ? getModels(style) : this;
    }

    @Override // java.lang.Iterable
    public Iterator<ModelList> iterator() {
        return values().iterator();
    }

    public Model lookup(String str, int i) {
        ModelList modelList = get(str);
        if (modelList != null) {
            return modelList.lookup(i);
        }
        return null;
    }

    public void register(String str, Model model) {
        ModelList modelList = (ModelList) get(str);
        if (modelList == null) {
            modelList = new ModelList();
            put(str, modelList);
        }
        modelList.register(model);
    }
}
