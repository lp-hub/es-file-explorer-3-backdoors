package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class TreeModel implements Model {
    private LabelMap attributes;
    private LabelMap elements;
    private Expression expression;
    private int index;
    private ModelMap models;
    private String name;
    private OrderList order;
    private Policy policy;
    private String prefix;
    private Label text;
    private Class type;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class OrderList extends ArrayList<String> {
    }

    public TreeModel(Policy policy, Class cls) {
        this(policy, cls, null, null, 1);
    }

    public TreeModel(Policy policy, Class cls, String str, String str2, int i) {
        this.attributes = new LabelMap(policy);
        this.elements = new LabelMap(policy);
        this.models = new ModelMap(cls);
        this.order = new OrderList();
        this.policy = policy;
        this.prefix = str2;
        this.index = i;
        this.name = str;
        this.type = cls;
    }

    private Model create(String str, String str2, int i) {
        TreeModel treeModel = new TreeModel(this.policy, this.type, str, str2, i);
        if (str != null) {
            this.models.register(str, treeModel);
            this.order.add(str);
        }
        return treeModel;
    }

    private void validateAttributes(Class cls) {
        for (String str : this.attributes.keySet()) {
            if (this.attributes.get(str) == null) {
                throw new AttributeException("Ordered attribute '%s' does not exist in %s", str, cls);
            }
        }
    }

    private void validateElements(Class cls) {
        for (String str : this.elements.keySet()) {
            ModelList modelList = this.models.get(str);
            Label label = this.elements.get(str);
            if (modelList == null && label == null) {
                throw new ElementException("Ordered element '%s' does not exist in %s", str, cls);
            }
            if (modelList != null && label != null && !modelList.isEmpty()) {
                throw new ElementException("Element '%s' is also a path name in %s", str, cls);
            }
        }
    }

    private void validateExpression(Label label) {
        Expression expression = label.getExpression();
        if (this.expression == null) {
            this.expression = expression;
            return;
        }
        String path = this.expression.getPath();
        String path2 = expression.getPath();
        if (!path.equals(path2)) {
            throw new PathException("Path '%s' does not match '%s' in %s", path, path2, this.type);
        }
    }

    private void validateExpressions(Class cls) {
        Iterator<Label> it = this.elements.iterator();
        while (it.hasNext()) {
            Label next = it.next();
            if (next != null) {
                validateExpression(next);
            }
        }
        Iterator<Label> it2 = this.attributes.iterator();
        while (it2.hasNext()) {
            Label next2 = it2.next();
            if (next2 != null) {
                validateExpression(next2);
            }
        }
        if (this.text != null) {
            validateExpression(this.text);
        }
    }

    private void validateModels(Class cls) {
        Iterator<ModelList> it = this.models.iterator();
        while (it.hasNext()) {
            Iterator<Model> it2 = it.next().iterator();
            int i = 1;
            while (it2.hasNext()) {
                Model next = it2.next();
                if (next != null) {
                    String name = next.getName();
                    int index = next.getIndex();
                    int i2 = i + 1;
                    if (index != i) {
                        throw new ElementException("Path section '%s[%s]' is out of sequence in %s", name, Integer.valueOf(index), cls);
                    }
                    next.validate(cls);
                    i = i2;
                }
            }
        }
    }

    private void validateText(Class cls) {
        if (this.text != null) {
            if (!this.elements.isEmpty()) {
                throw new TextException("Text annotation %s used with elements in %s", this.text, cls);
            }
            if (isComposite()) {
                throw new TextException("Text annotation %s can not be used with paths in %s", this.text, cls);
            }
        }
    }

    @Override // org.simpleframework.xml.core.Model
    public LabelMap buildAttributes(Context context) {
        return this.attributes.getLabels(context);
    }

    @Override // org.simpleframework.xml.core.Model
    public LabelMap buildElements(Context context) {
        return this.elements.getLabels(context);
    }

    @Override // org.simpleframework.xml.core.Model
    public ModelMap buildModels(Context context) {
        return this.models.getModels(context);
    }

    @Override // org.simpleframework.xml.core.Model
    public Expression getExpression() {
        return this.expression;
    }

    @Override // org.simpleframework.xml.core.Model
    public int getIndex() {
        return this.index;
    }

    @Override // org.simpleframework.xml.core.Model
    public String getName() {
        return this.name;
    }

    @Override // org.simpleframework.xml.core.Model
    public String getPrefix() {
        return this.prefix;
    }

    @Override // org.simpleframework.xml.core.Model
    public Label getText() {
        return this.text;
    }

    @Override // org.simpleframework.xml.core.Model
    public boolean isAttribute(String str) {
        return this.attributes.containsKey(str);
    }

    @Override // org.simpleframework.xml.core.Model
    public boolean isComposite() {
        Iterator<ModelList> it = this.models.iterator();
        while (it.hasNext()) {
            Iterator<Model> it2 = it.next().iterator();
            while (it2.hasNext()) {
                Model next = it2.next();
                if (next != null && !next.isEmpty()) {
                    return true;
                }
            }
        }
        return !this.models.isEmpty();
    }

    @Override // org.simpleframework.xml.core.Model
    public boolean isElement(String str) {
        return this.elements.containsKey(str);
    }

    @Override // org.simpleframework.xml.core.Model
    public boolean isEmpty() {
        return this.text == null && this.elements.isEmpty() && this.attributes.isEmpty() && !isComposite();
    }

    @Override // org.simpleframework.xml.core.Model
    public boolean isModel(String str) {
        return this.models.containsKey(str);
    }

    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.order.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList.iterator();
    }

    @Override // org.simpleframework.xml.core.Model
    public Model lookup(String str, int i) {
        return this.models.lookup(str, i);
    }

    @Override // org.simpleframework.xml.core.Model
    public Model lookup(Expression expression) {
        Model lookup = lookup(expression.getFirst(), expression.getIndex());
        if (expression.isPath()) {
            return lookup != null ? lookup.lookup(expression.getPath(1, 0)) : lookup;
        }
        return lookup;
    }

    @Override // org.simpleframework.xml.core.Model
    public Model register(String str, String str2, int i) {
        Model lookup = this.models.lookup(str, i);
        return lookup == null ? create(str, str2, i) : lookup;
    }

    @Override // org.simpleframework.xml.core.Model
    public void register(Label label) {
        if (label.isAttribute()) {
            registerAttribute(label);
        } else if (label.isText()) {
            registerText(label);
        } else {
            registerElement(label);
        }
    }

    @Override // org.simpleframework.xml.core.Model
    public void registerAttribute(String str) {
        this.attributes.put(str, null);
    }

    @Override // org.simpleframework.xml.core.Model
    public void registerAttribute(Label label) {
        String name = label.getName();
        if (this.attributes.get(name) != null) {
            throw new AttributeException("Duplicate annotation of name '%s' on %s", name, label);
        }
        this.attributes.put(name, label);
    }

    @Override // org.simpleframework.xml.core.Model
    public void registerElement(String str) {
        if (!this.order.contains(str)) {
            this.order.add(str);
        }
        this.elements.put(str, null);
    }

    @Override // org.simpleframework.xml.core.Model
    public void registerElement(Label label) {
        String name = label.getName();
        if (this.elements.get(name) != null) {
            throw new ElementException("Duplicate annotation of name '%s' on %s", name, label);
        }
        if (!this.order.contains(name)) {
            this.order.add(name);
        }
        this.elements.put(name, label);
    }

    @Override // org.simpleframework.xml.core.Model
    public void registerText(Label label) {
        if (this.text != null) {
            throw new TextException("Duplicate text annotation on %s", label);
        }
        this.text = label;
    }

    public String toString() {
        return String.format("model '%s[%s]'", this.name, Integer.valueOf(this.index));
    }

    @Override // org.simpleframework.xml.core.Model
    public void validate(Class cls) {
        validateExpressions(cls);
        validateAttributes(cls);
        validateElements(cls);
        validateModels(cls);
        validateText(cls);
    }
}
