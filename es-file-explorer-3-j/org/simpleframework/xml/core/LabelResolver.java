package org.simpleframework.xml.core;

/* loaded from: classes.dex */
class LabelResolver {
    private final LabelMap attributes = new LabelMap();
    private final LabelMap elements = new LabelMap();
    private final LabelMap texts = new LabelMap();

    private void register(Label label, LabelMap labelMap) {
        String name = label.getName();
        String path = label.getPath();
        if (labelMap.containsKey(name)) {
            labelMap.put(name, null);
        } else {
            labelMap.put(name, label);
        }
        labelMap.put(path, label);
    }

    private Label resolve(Parameter parameter, LabelMap labelMap) {
        String name = parameter.getName();
        Label label = labelMap.get(parameter.getPath());
        return label == null ? labelMap.get(name) : label;
    }

    public void register(Label label) {
        if (label.isAttribute()) {
            register(label, this.attributes);
        } else if (label.isText()) {
            register(label, this.texts);
        } else {
            register(label, this.elements);
        }
    }

    public Label resolve(Parameter parameter) {
        return parameter.isAttribute() ? resolve(parameter, this.attributes) : parameter.isText() ? resolve(parameter, this.texts) : resolve(parameter, this.elements);
    }
}
