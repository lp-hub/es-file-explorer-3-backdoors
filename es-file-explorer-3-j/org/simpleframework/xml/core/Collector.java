package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Collector implements Criteria {
    private final Registry alias;
    private final Context context;
    private final Registry registry;

    /* loaded from: classes.dex */
    class Registry extends LinkedHashMap<String, Variable> {
        private Registry() {
        }

        /* synthetic */ Registry(Collector collector, Registry registry) {
            this();
        }

        public Iterator<String> iterator() {
            return keySet().iterator();
        }
    }

    public Collector(Context context) {
        Registry registry = null;
        this.registry = new Registry(this, registry);
        this.alias = new Registry(this, registry);
        this.context = context;
    }

    @Override // org.simpleframework.xml.core.Criteria
    public void commit(Object obj) {
        for (Variable variable : this.registry.values()) {
            variable.getContact().set(obj, variable.getValue());
        }
    }

    @Override // org.simpleframework.xml.core.Criteria
    public Variable get(String str) {
        return this.registry.get(str);
    }

    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        return this.registry.iterator();
    }

    @Override // org.simpleframework.xml.core.Criteria
    public Variable remove(String str) {
        Variable variable = (Variable) this.alias.remove(str);
        if (variable != null) {
            Collection<String> names = variable.getNames(this.context);
            String path = variable.getPath(this.context);
            Iterator<String> it = names.iterator();
            while (it.hasNext()) {
                this.alias.remove(it.next());
            }
            this.registry.remove(path);
        }
        return variable;
    }

    @Override // org.simpleframework.xml.core.Criteria
    public Variable resolve(String str) {
        return this.alias.get(str);
    }

    @Override // org.simpleframework.xml.core.Criteria
    public void set(Label label, Object obj) {
        Variable variable = new Variable(label, obj);
        if (label != null) {
            Collection<String> names = label.getNames(this.context);
            String path = label.getPath(this.context);
            if (!this.registry.containsKey(path)) {
                this.registry.put(path, variable);
            }
            Iterator<String> it = names.iterator();
            while (it.hasNext()) {
                this.alias.put(it.next(), variable);
            }
        }
    }
}
