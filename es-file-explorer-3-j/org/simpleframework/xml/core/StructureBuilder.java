package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.Version;

/* loaded from: classes.dex */
class StructureBuilder {
    private ModelAssembler assembler;
    private LabelMap attributes;
    private ExpressionBuilder builder;
    private LabelMap elements;
    private boolean primitive;
    private Model root;
    private Scanner scanner;
    private Label text;
    private LabelMap texts;
    private Class type;
    private Label version;
    private LabelResolver resolver = new LabelResolver();
    private Comparer comparer = new Comparer();

    public StructureBuilder(Scanner scanner, Class cls) {
        this.builder = new ExpressionBuilder(cls);
        this.assembler = new ModelAssembler(this.builder, cls);
        this.root = new TreeModel(scanner, cls);
        this.attributes = new LabelMap(scanner);
        this.elements = new LabelMap(scanner);
        this.texts = new LabelMap(scanner);
        this.scanner = scanner;
        this.type = cls;
    }

    private Model create(Expression expression) {
        Model model = this.root;
        while (model != null) {
            String prefix = expression.getPrefix();
            String first = expression.getFirst();
            int index = expression.getIndex();
            if (first != null) {
                model = model.register(first, prefix, index);
            }
            if (!expression.isPath()) {
                break;
            }
            expression = expression.getPath(1);
        }
        return model;
    }

    private Annotation[] extract(Annotation annotation) {
        Method[] declaredMethods = annotation.annotationType().getDeclaredMethods();
        if (declaredMethods.length != 1) {
            throw new UnionException("Annotation '%s' is not a valid union for %s", annotation, this.type);
        }
        return (Annotation[]) declaredMethods[0].invoke(annotation, new Object[0]);
    }

    private boolean isAttribute(String str) {
        Expression build = this.builder.build(str);
        Model lookup = lookup(build);
        if (lookup != null) {
            return lookup.isAttribute(build.getLast());
        }
        return false;
    }

    private boolean isElement(String str) {
        Expression build = this.builder.build(str);
        Model lookup = lookup(build);
        if (lookup != null) {
            String last = build.getLast();
            int index = build.getIndex();
            if (lookup.isElement(last)) {
                return true;
            }
            if (lookup.isModel(last)) {
                return !lookup.lookup(last, index).isEmpty();
            }
        }
        return false;
    }

    private boolean isEmpty() {
        if (this.text != null) {
            return false;
        }
        return this.root.isEmpty();
    }

    private Model lookup(Expression expression) {
        return expression.isPath() ? this.root.lookup(expression.getPath(0, 1)) : this.root;
    }

    private void process(Contact contact, Annotation annotation, LabelMap labelMap) {
        Label labelFactory = LabelFactory.getInstance(contact, annotation);
        String path = labelFactory.getPath();
        String name = labelFactory.getName();
        if (labelMap.get(path) != null) {
            throw new PersistenceException("Duplicate annotation of name '%s' on %s", name, contact);
        }
        process(contact, labelFactory, labelMap);
        validate(labelFactory, path);
    }

    private void process(Contact contact, Label label, LabelMap labelMap) {
        Expression expression = label.getExpression();
        String path = label.getPath();
        Model model = this.root;
        if (!expression.isEmpty()) {
            model = register(expression);
        }
        this.resolver.register(label);
        model.register(label);
        labelMap.put(path, label);
    }

    private Model register(Expression expression) {
        Model lookup = this.root.lookup(expression);
        return lookup != null ? lookup : create(expression);
    }

    private void text(Contact contact, Annotation annotation) {
        Label labelFactory = LabelFactory.getInstance(contact, annotation);
        Expression expression = labelFactory.getExpression();
        String path = labelFactory.getPath();
        Model model = this.root;
        if (!expression.isEmpty()) {
            model = register(expression);
        }
        if (this.texts.get(path) != null) {
            throw new TextException("Multiple text annotations in %s", annotation);
        }
        this.resolver.register(labelFactory);
        model.register(labelFactory);
        this.texts.put(path, labelFactory);
    }

    private void union(Contact contact, Annotation annotation, LabelMap labelMap) {
        for (Annotation annotation2 : extract(annotation)) {
            Label labelFactory = LabelFactory.getInstance(contact, annotation, annotation2);
            String path = labelFactory.getPath();
            String name = labelFactory.getName();
            if (labelMap.get(path) != null) {
                throw new PersistenceException("Duplicate annotation of name '%s' on %s", name, labelFactory);
            }
            process(contact, labelFactory, labelMap);
            validate(labelFactory, path);
        }
    }

    private void validate(Label label, String str) {
        Parameter parameter = this.scanner.getCreator().getParameter(str);
        if (parameter != null) {
            validate(label, parameter);
        }
    }

    private void validate(Label label, Parameter parameter) {
        String name;
        Collection<String> names = label.getNames();
        Contact contact = label.getContact();
        String name2 = parameter.getName();
        if (contact.getType() != parameter.getType()) {
            throw new ConstructorException("Type does not match %s for '%s' in %s", label, name2, parameter);
        }
        if (!names.contains(name2) && name2 != (name = label.getName())) {
            if (name2 == null || name == null) {
                throw new ConstructorException("Annotation does not match %s for '%s' in %s", label, name2, parameter);
            }
            if (!name2.equals(name)) {
                throw new ConstructorException("Annotation does not match %s for '%s' in %s", label, name2, parameter);
            }
        }
        validateAnnotations(label, parameter);
    }

    private void validateAnnotations(Label label, Parameter parameter) {
        Annotation annotation = label.getAnnotation();
        Annotation annotation2 = parameter.getAnnotation();
        String name = parameter.getName();
        if (this.comparer.equals(annotation, annotation2)) {
            return;
        }
        Class<? extends Annotation> annotationType = annotation.annotationType();
        Class<? extends Annotation> annotationType2 = annotation2.annotationType();
        if (!annotationType.equals(annotationType2)) {
            throw new ConstructorException("Annotation %s does not match %s for '%s' in %s", annotationType2, annotationType, name, parameter);
        }
    }

    private void validateAttributes(Class cls, Order order) {
        if (order != null) {
            for (String str : order.attributes()) {
                if (!isAttribute(str)) {
                    throw new AttributeException("Ordered attribute '%s' missing in %s", str, cls);
                }
            }
        }
    }

    private void validateConstructor(Label label, List<Initializer> list) {
        Iterator<Initializer> it = list.iterator();
        while (it.hasNext()) {
            Initializer next = it.next();
            Contact contact = label.getContact();
            String path = label.getPath();
            if (contact.isReadOnly()) {
                Parameter parameter = next.getParameter(path);
                Collection<String> names = label.getNames();
                if (parameter == null) {
                    Iterator<String> it2 = names.iterator();
                    while (it2.hasNext() && (parameter = next.getParameter(it2.next())) == null) {
                    }
                }
                if (parameter == null) {
                    it.remove();
                }
            }
        }
    }

    private void validateConstructors(Class cls) {
        Creator creator = this.scanner.getCreator();
        List<Initializer> initializers = creator.getInitializers();
        if (creator.isDefault()) {
            validateConstructors(this.elements);
            validateConstructors(this.attributes);
        }
        if (initializers.isEmpty()) {
            return;
        }
        validateConstructors(this.elements, initializers);
        validateConstructors(this.attributes, initializers);
    }

    private void validateConstructors(LabelMap labelMap) {
        Iterator<Label> it = labelMap.iterator();
        while (it.hasNext()) {
            Label next = it.next();
            if (next != null && next.getContact().isReadOnly()) {
                throw new ConstructorException("Default constructor can not accept read only %s in %s", next, this.type);
            }
        }
    }

    private void validateConstructors(LabelMap labelMap, List<Initializer> list) {
        Iterator<Label> it = labelMap.iterator();
        while (it.hasNext()) {
            Label next = it.next();
            if (next != null) {
                validateConstructor(next, list);
            }
        }
        if (list.isEmpty()) {
            throw new ConstructorException("No constructor accepts all read only values in %s", this.type);
        }
    }

    private void validateElements(Class cls, Order order) {
        if (order != null) {
            for (String str : order.elements()) {
                if (!isElement(str)) {
                    throw new ElementException("Ordered element '%s' missing for %s", str, cls);
                }
            }
        }
    }

    private void validateModel(Class cls) {
        if (this.root.isEmpty()) {
            return;
        }
        this.root.validate(cls);
    }

    private void validateParameters(Creator creator) {
        for (Parameter parameter : creator.getParameters()) {
            Label resolve = this.resolver.resolve(parameter);
            String path = parameter.getPath();
            if (resolve == null) {
                throw new ConstructorException("Parameter '%s' does not have a match in %s", path, this.type);
            }
        }
    }

    private void validateText(Class cls) {
        if (this.root.getText() == null) {
            if (this.scanner.isEmpty()) {
                this.primitive = isEmpty();
            }
        } else {
            if (!this.elements.isEmpty()) {
                throw new TextException("Elements used with %s in %s", this.text, cls);
            }
            if (this.root.isComposite()) {
                throw new TextException("Paths used with %s in %s", this.text, cls);
            }
        }
    }

    private void validateUnions(Class cls) {
        Iterator<Label> it = this.elements.iterator();
        while (it.hasNext()) {
            Label next = it.next();
            Collection<String> paths = next.getPaths();
            Contact contact = next.getContact();
            for (String str : paths) {
                Annotation annotation = contact.getAnnotation();
                Label label = this.elements.get(str);
                if (next.isInline() != label.isInline()) {
                    throw new UnionException("Inline must be consistent in %s for %s", annotation, contact);
                }
                if (next.isRequired() != label.isRequired()) {
                    throw new UnionException("Required must be consistent in %s for %s", annotation, contact);
                }
            }
        }
    }

    private void version(Contact contact, Annotation annotation) {
        Label labelFactory = LabelFactory.getInstance(contact, annotation);
        if (this.version != null) {
            throw new AttributeException("Multiple version annotations in %s", annotation);
        }
        this.version = labelFactory;
    }

    public void assemble(Class cls) {
        Order order = this.scanner.getOrder();
        if (order != null) {
            this.assembler.assemble(this.root, order);
        }
    }

    public Structure build(Class cls) {
        return new Structure(this.root, this.version, this.text, this.primitive);
    }

    public void process(Contact contact, Annotation annotation) {
        if (annotation instanceof Attribute) {
            process(contact, annotation, this.attributes);
        }
        if (annotation instanceof ElementUnion) {
            union(contact, annotation, this.elements);
        }
        if (annotation instanceof ElementListUnion) {
            union(contact, annotation, this.elements);
        }
        if (annotation instanceof ElementMapUnion) {
            union(contact, annotation, this.elements);
        }
        if (annotation instanceof ElementList) {
            process(contact, annotation, this.elements);
        }
        if (annotation instanceof ElementArray) {
            process(contact, annotation, this.elements);
        }
        if (annotation instanceof ElementMap) {
            process(contact, annotation, this.elements);
        }
        if (annotation instanceof Element) {
            process(contact, annotation, this.elements);
        }
        if (annotation instanceof Version) {
            version(contact, annotation);
        }
        if (annotation instanceof Text) {
            text(contact, annotation);
        }
    }

    public void validate(Class cls) {
        Creator creator = this.scanner.getCreator();
        Order order = this.scanner.getOrder();
        validateUnions(cls);
        validateElements(cls, order);
        validateAttributes(cls, order);
        validateParameters(creator);
        validateConstructors(cls);
        validateModel(cls);
        validateText(cls);
    }
}
