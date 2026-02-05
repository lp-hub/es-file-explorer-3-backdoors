package org.simpleframework.xml.core;

import java.util.HashMap;
import org.simpleframework.xml.strategy.Type;

/* loaded from: classes.dex */
class ExpressionBuilder {
    private final Cache cache;
    private final Type type;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Cache extends HashMap<String, Expression> {
        public Cache() {
        }
    }

    public ExpressionBuilder(Class cls) {
        this(new ClassType(cls));
    }

    public ExpressionBuilder(Type type) {
        this.cache = new Cache();
        this.type = type;
    }

    private Expression create(String str) {
        PathParser pathParser = new PathParser(this.type, str);
        if (this.cache != null) {
            this.cache.put(str, pathParser);
        }
        return pathParser;
    }

    public Expression build(String str) {
        Expression expression = this.cache.get(str);
        return expression == null ? create(str) : expression;
    }
}
