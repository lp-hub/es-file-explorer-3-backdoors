package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Initializer {
    private final Constructor factory;
    private final List<Parameter> list;
    private final Signature signature;

    public Initializer(Constructor constructor, Signature signature) {
        this.list = signature.getParameters();
        this.signature = signature;
        this.factory = constructor;
    }

    private double getAdjustment(Context context, double d) {
        return d > 0.0d ? (this.list.size() / 1000.0d) + (d / this.list.size()) : d / this.list.size();
    }

    private Object getInstance(Object[] objArr) {
        if (!this.factory.isAccessible()) {
            this.factory.setAccessible(true);
        }
        return this.factory.newInstance(objArr);
    }

    private double getPercentage(Context context, Criteria criteria) {
        double d = 0.0d;
        for (Parameter parameter : this.list) {
            if (criteria.resolve(parameter.getPath(context)) == null) {
                if (!parameter.isRequired() && !parameter.isPrimitive()) {
                }
                return -1.0d;
            }
            d += 1.0d;
        }
        return getAdjustment(context, d);
    }

    private Object getVariable(Context context, Criteria criteria, int i) {
        Variable remove = criteria.remove(this.list.get(i).getPath(context));
        if (remove != null) {
            return remove.getValue();
        }
        return null;
    }

    public Object getInstance(Context context) {
        if (!this.factory.isAccessible()) {
            this.factory.setAccessible(true);
        }
        return this.factory.newInstance(new Object[0]);
    }

    public Object getInstance(Context context, Criteria criteria) {
        Object[] array = this.list.toArray();
        for (int i = 0; i < this.list.size(); i++) {
            array[i] = getVariable(context, criteria, i);
        }
        return getInstance(array);
    }

    public Parameter getParameter(String str) {
        return this.signature.get(str);
    }

    public double getScore(Context context, Criteria criteria) {
        Signature signature = this.signature.getSignature(context);
        for (String str : criteria) {
            Variable resolve = criteria.resolve(str);
            if (resolve != null) {
                Parameter parameter = signature.getParameter(str);
                Contact contact = resolve.getContact();
                if (parameter == null) {
                    Iterator<String> it = resolve.getNames(context).iterator();
                    while (it.hasNext() && (parameter = signature.getParameter(it.next())) == null) {
                    }
                }
                if (contact.isReadOnly() && parameter == null) {
                    return -1.0d;
                }
            }
        }
        return getPercentage(context, criteria);
    }

    public boolean isDefault() {
        return this.signature.size() == 0;
    }

    public String toString() {
        return this.factory.toString();
    }
}
