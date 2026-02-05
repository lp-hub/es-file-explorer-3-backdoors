package org.simpleframework.xml.core;

import org.simpleframework.xml.Order;

/* loaded from: classes.dex */
class ModelAssembler {
    private final ExpressionBuilder builder;
    private final Class type;

    public ModelAssembler(ExpressionBuilder expressionBuilder, Class cls) {
        this.builder = expressionBuilder;
        this.type = cls;
    }

    private void assembleAttributes(Model model, Order order) {
        for (String str : order.attributes()) {
            Expression build = this.builder.build(str);
            if (!build.isAttribute() && build.isPath()) {
                throw new PathException("Ordered attribute '%s' references an element in %s", build, this.type);
            }
            registerAttributes(model, build);
        }
    }

    private void assembleElements(Model model, Order order) {
        for (String str : order.elements()) {
            Expression build = this.builder.build(str);
            if (build.isAttribute()) {
                throw new PathException("Ordered element '%s' references an attribute in %s", build, this.type);
            }
            registerElements(model, build);
        }
    }

    private void registerAttribute(Model model, Expression expression) {
        String first = expression.getFirst();
        if (first != null) {
            model.registerAttribute(first);
        }
    }

    private void registerAttributes(Model model, Expression expression) {
        String prefix = expression.getPrefix();
        String first = expression.getFirst();
        int index = expression.getIndex();
        if (!expression.isPath()) {
            registerAttribute(model, expression);
            return;
        }
        Model register = model.register(first, prefix, index);
        Expression path = expression.getPath(1);
        if (register == null) {
            throw new PathException("Element '%s' does not exist in %s", first, this.type);
        }
        registerAttributes(register, path);
    }

    private void registerElement(Model model, Expression expression) {
        String prefix = expression.getPrefix();
        String first = expression.getFirst();
        int index = expression.getIndex();
        if (index > 1 && model.lookup(first, index - 1) == null) {
            throw new PathException("Ordered element '%s' in path '%s' is out of sequence for %s", first, expression, this.type);
        }
        model.register(first, prefix, index);
    }

    private void registerElements(Model model, Expression expression) {
        String prefix = expression.getPrefix();
        String first = expression.getFirst();
        int index = expression.getIndex();
        if (first != null) {
            Model register = model.register(first, prefix, index);
            Expression path = expression.getPath(1);
            if (expression.isPath()) {
                registerElements(register, path);
            }
        }
        registerElement(model, expression);
    }

    public void assemble(Model model, Order order) {
        assembleElements(model, order);
        assembleAttributes(model, order);
    }
}
