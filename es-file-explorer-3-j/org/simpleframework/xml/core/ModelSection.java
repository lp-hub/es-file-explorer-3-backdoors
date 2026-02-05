package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import org.simpleframework.xml.stream.Style;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ModelSection implements Section {
    private LabelMap attributes;
    private Context context;
    private LabelMap elements;
    private Model model;
    private ModelMap models;
    private Style style;

    public ModelSection(Context context, Model model) {
        this.style = context.getStyle();
        this.context = context;
        this.model = model;
    }

    @Override // org.simpleframework.xml.core.Section
    public String getAttribute(String str) {
        Expression expression = this.model.getExpression();
        return expression == null ? str : expression.getAttribute(str);
    }

    @Override // org.simpleframework.xml.core.Section
    public LabelMap getAttributes() {
        if (this.attributes == null) {
            this.attributes = this.model.buildAttributes(this.context);
        }
        return this.attributes;
    }

    @Override // org.simpleframework.xml.core.Section
    public Label getElement(String str) {
        return getElements().getLabel(str);
    }

    @Override // org.simpleframework.xml.core.Section
    public LabelMap getElements() {
        if (this.elements == null) {
            this.elements = this.model.buildElements(this.context);
        }
        return this.elements;
    }

    public ModelMap getModels() {
        if (this.models == null) {
            this.models = this.model.buildModels(this.context);
        }
        return this.models;
    }

    @Override // org.simpleframework.xml.core.Section
    public String getName() {
        return this.model.getName();
    }

    @Override // org.simpleframework.xml.core.Section
    public String getPath(String str) {
        Expression expression = this.model.getExpression();
        return expression == null ? str : expression.getElement(str);
    }

    @Override // org.simpleframework.xml.core.Section
    public String getPrefix() {
        return this.model.getPrefix();
    }

    @Override // org.simpleframework.xml.core.Section
    public Section getSection(String str) {
        Model take;
        ModelList modelList = getModels().get(str);
        if (modelList == null || (take = modelList.take()) == null) {
            return null;
        }
        return new ModelSection(this.context, take);
    }

    @Override // org.simpleframework.xml.core.Section
    public Label getText() {
        return this.model.getText();
    }

    @Override // org.simpleframework.xml.core.Section
    public boolean isSection(String str) {
        return getModels().get(str) != null;
    }

    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.model.iterator();
        while (it.hasNext()) {
            String element = this.style.getElement(it.next());
            if (element != null) {
                arrayList.add(element);
            }
        }
        return arrayList.iterator();
    }
}
