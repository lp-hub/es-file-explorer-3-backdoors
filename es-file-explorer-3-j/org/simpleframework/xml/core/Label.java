package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Collection;
import org.simpleframework.xml.strategy.Type;

/* loaded from: classes.dex */
interface Label {
    Annotation getAnnotation();

    Contact getContact();

    Converter getConverter(Context context);

    Decorator getDecorator();

    Type getDependent();

    Object getEmpty(Context context);

    String getEntry();

    Expression getExpression();

    Label getLabel(Class cls);

    String getName();

    String getName(Context context);

    Collection<String> getNames();

    Collection<String> getNames(Context context);

    String getOverride();

    String getPath();

    String getPath(Context context);

    Collection<String> getPaths();

    Collection<String> getPaths(Context context);

    Class getType();

    Type getType(Class cls);

    boolean isAttribute();

    boolean isCollection();

    boolean isData();

    boolean isInline();

    boolean isRequired();

    boolean isText();

    boolean isUnion();

    String toString();
}
