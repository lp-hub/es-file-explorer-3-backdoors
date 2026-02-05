package org.simpleframework.xml.core;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

/* loaded from: classes.dex */
class LabelMap extends LinkedHashMap<String, Label> implements Iterable<Label> {
    private final Policy policy;

    public LabelMap() {
        this(null);
    }

    public LabelMap(Policy policy) {
        this.policy = policy;
    }

    public Set<String> getKeys() {
        HashSet hashSet = new HashSet();
        Iterator<Label> it = iterator();
        while (it.hasNext()) {
            Label next = it.next();
            if (next != null) {
                String path = next.getPath();
                String name = next.getName();
                hashSet.add(path);
                hashSet.add(name);
            }
        }
        return hashSet;
    }

    public Set<String> getKeys(Context context) {
        HashSet hashSet = new HashSet();
        Iterator<Label> it = iterator();
        while (it.hasNext()) {
            Label next = it.next();
            if (next != null) {
                String path = next.getPath(context);
                String name = next.getName(context);
                hashSet.add(path);
                hashSet.add(name);
            }
        }
        return hashSet;
    }

    public Label getLabel(String str) {
        return (Label) remove(str);
    }

    public LabelMap getLabels(Context context) {
        LabelMap labelMap = new LabelMap(this.policy);
        Iterator<Label> it = iterator();
        while (it.hasNext()) {
            Label next = it.next();
            if (next != null) {
                labelMap.put(next.getPath(context), next);
            }
        }
        return labelMap;
    }

    public Set<String> getPaths() {
        HashSet hashSet = new HashSet();
        Iterator<Label> it = iterator();
        while (it.hasNext()) {
            Label next = it.next();
            if (next != null) {
                hashSet.add(next.getPath());
            }
        }
        return hashSet;
    }

    public Set<String> getPaths(Context context) {
        HashSet hashSet = new HashSet();
        Iterator<Label> it = iterator();
        while (it.hasNext()) {
            Label next = it.next();
            if (next != null) {
                hashSet.add(next.getPath(context));
            }
        }
        return hashSet;
    }

    public boolean isStrict(Context context) {
        return this.policy == null ? context.isStrict() : context.isStrict() && this.policy.isStrict();
    }

    @Override // java.lang.Iterable
    public Iterator<Label> iterator() {
        return values().iterator();
    }
}
