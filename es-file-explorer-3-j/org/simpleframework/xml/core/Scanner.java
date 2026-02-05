package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import org.simpleframework.xml.Default;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.Version;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Scanner implements Policy {
    private DefaultType access;
    private StructureBuilder builder;
    private String name;
    private boolean required;
    private ClassScanner scanner;
    private Structure structure;
    private Class type;

    public Scanner(Class cls) {
        this.scanner = new ClassScanner(cls);
        this.builder = new StructureBuilder(this, cls);
        this.type = cls;
        scan(cls);
    }

    private void access(Class<?> cls) {
        Default r0 = this.scanner.getDefault();
        if (r0 != null) {
            this.required = r0.required();
            this.access = r0.value();
        }
    }

    private void commit(Class cls) {
        if (this.structure == null) {
            this.structure = this.builder.build(cls);
        }
        this.builder = null;
    }

    private void field(Class cls) {
        Iterator<Contact> it = new FieldScanner(cls, this.access, this.required).iterator();
        while (it.hasNext()) {
            Contact next = it.next();
            Annotation annotation = next.getAnnotation();
            if (annotation != null) {
                this.builder.process(next, annotation);
            }
        }
    }

    private boolean isEmpty(String str) {
        return str.length() == 0;
    }

    private void order(Class<?> cls) {
        this.builder.assemble(cls);
    }

    private void root(Class<?> cls) {
        String simpleName = cls.getSimpleName();
        Root root = this.scanner.getRoot();
        if (root != null) {
            String name = root.name();
            if (isEmpty(name)) {
                name = Reflector.getName(simpleName);
            }
            this.name = name.intern();
        }
    }

    private void scan(Class cls) {
        root(cls);
        order(cls);
        access(cls);
        field(cls);
        method(cls);
        validate(cls);
        commit(cls);
    }

    private void validate(Class cls) {
        this.builder.validate(cls);
    }

    public Caller getCaller(Context context) {
        return new Caller(this, context);
    }

    public Function getCommit() {
        return this.scanner.getCommit();
    }

    public Function getComplete() {
        return this.scanner.getComplete();
    }

    public Creator getCreator() {
        return this.scanner.getCreator();
    }

    public Decorator getDecorator() {
        return this.scanner.getDecorator();
    }

    public String getName() {
        return this.name;
    }

    public Order getOrder() {
        return this.scanner.getOrder();
    }

    public Function getPersist() {
        return this.scanner.getPersist();
    }

    public Function getReplace() {
        return this.scanner.getReplace();
    }

    public Function getResolve() {
        return this.scanner.getResolve();
    }

    public Version getRevision() {
        return this.structure.getRevision();
    }

    public Section getSection(Context context) {
        return this.structure.getSection(context);
    }

    public Label getText() {
        return this.structure.getText();
    }

    public Class getType() {
        return this.type;
    }

    public Function getValidate() {
        return this.scanner.getValidate();
    }

    public Label getVersion() {
        return this.structure.getVersion();
    }

    public boolean isEmpty() {
        return this.scanner.getRoot() == null;
    }

    public boolean isPrimitive() {
        return this.structure.isPrimitive();
    }

    @Override // org.simpleframework.xml.core.Policy
    public boolean isStrict() {
        return this.scanner.isStrict();
    }

    public void method(Class cls) {
        Iterator<Contact> it = new MethodScanner(cls, this.access, this.required).iterator();
        while (it.hasNext()) {
            Contact next = it.next();
            Annotation annotation = next.getAnnotation();
            if (annotation != null) {
                this.builder.process(next, annotation);
            }
        }
    }
}
