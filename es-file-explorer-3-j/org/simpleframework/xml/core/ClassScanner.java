package org.simpleframework.xml.core;

import java.lang.reflect.Method;
import java.util.Map;
import org.simpleframework.xml.Default;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ClassScanner {
    private Default access;
    private Function commit;
    private Function complete;
    private NamespaceDecorator decorator = new NamespaceDecorator();
    private Namespace namespace;
    private Order order;
    private Function persist;
    private Function replace;
    private Function resolve;
    private Root root;
    private ConstructorScanner scanner;
    private Function validate;

    public ClassScanner(Class cls) {
        this.scanner = new ConstructorScanner(cls);
        scan(cls);
    }

    private void access(Class<?> cls) {
        if (cls.isAnnotationPresent(Default.class)) {
            this.access = (Default) cls.getAnnotation(Default.class);
        }
    }

    private void commit(Method method) {
        if (method.getAnnotation(Commit.class) != null) {
            this.commit = getFunction(method);
        }
    }

    private void complete(Method method) {
        if (method.getAnnotation(Complete.class) != null) {
            this.complete = getFunction(method);
        }
    }

    private Function getFunction(Method method) {
        boolean isContextual = isContextual(method);
        if (!method.isAccessible()) {
            method.setAccessible(true);
        }
        return new Function(method, isContextual);
    }

    private void global(Class cls) {
        if (this.namespace == null) {
            namespace(cls);
        }
        if (this.root == null) {
            root(cls);
        }
        if (this.order == null) {
            order(cls);
        }
        if (this.access == null) {
            access(cls);
        }
    }

    private boolean isContextual(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes.length == 1) {
            return Map.class.equals(parameterTypes[0]);
        }
        return false;
    }

    private void namespace(Class<?> cls) {
        if (cls.isAnnotationPresent(Namespace.class)) {
            this.namespace = (Namespace) cls.getAnnotation(Namespace.class);
            if (this.namespace != null) {
                this.decorator.add(this.namespace);
            }
        }
    }

    private void order(Class<?> cls) {
        if (cls.isAnnotationPresent(Order.class)) {
            this.order = (Order) cls.getAnnotation(Order.class);
        }
    }

    private void persist(Method method) {
        if (method.getAnnotation(Persist.class) != null) {
            this.persist = getFunction(method);
        }
    }

    private void process(Class cls) {
        if (this.namespace != null) {
            this.decorator.set(this.namespace);
        }
    }

    private void replace(Method method) {
        if (method.getAnnotation(Replace.class) != null) {
            this.replace = getFunction(method);
        }
    }

    private void resolve(Method method) {
        if (method.getAnnotation(Resolve.class) != null) {
            this.resolve = getFunction(method);
        }
    }

    private void root(Class<?> cls) {
        if (cls.isAnnotationPresent(Root.class)) {
            this.root = (Root) cls.getAnnotation(Root.class);
        }
    }

    private void scan(Class cls) {
        for (Class cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            global(cls2);
            scope(cls2);
            scan(cls, cls2);
        }
        process(cls);
    }

    private void scan(Class cls, Class cls2) {
        for (Method method : cls2.getDeclaredMethods()) {
            scan(method);
        }
    }

    private void scan(Method method) {
        if (this.commit == null) {
            commit(method);
        }
        if (this.validate == null) {
            validate(method);
        }
        if (this.persist == null) {
            persist(method);
        }
        if (this.complete == null) {
            complete(method);
        }
        if (this.replace == null) {
            replace(method);
        }
        if (this.resolve == null) {
            resolve(method);
        }
    }

    private void scope(Class<?> cls) {
        if (cls.isAnnotationPresent(NamespaceList.class)) {
            for (Namespace namespace : ((NamespaceList) cls.getAnnotation(NamespaceList.class)).value()) {
                this.decorator.add(namespace);
            }
        }
    }

    private void validate(Method method) {
        if (method.getAnnotation(Validate.class) != null) {
            this.validate = getFunction(method);
        }
    }

    public Function getCommit() {
        return this.commit;
    }

    public Function getComplete() {
        return this.complete;
    }

    public Creator getCreator() {
        return this.scanner.getCreator();
    }

    public Decorator getDecorator() {
        return this.decorator;
    }

    public Default getDefault() {
        return this.access;
    }

    public Order getOrder() {
        return this.order;
    }

    public Function getPersist() {
        return this.persist;
    }

    public Function getReplace() {
        return this.replace;
    }

    public Function getResolve() {
        return this.resolve;
    }

    public Root getRoot() {
        return this.root;
    }

    public Function getValidate() {
        return this.validate;
    }

    public boolean isStrict() {
        if (this.root != null) {
            return this.root.strict();
        }
        return true;
    }
}
