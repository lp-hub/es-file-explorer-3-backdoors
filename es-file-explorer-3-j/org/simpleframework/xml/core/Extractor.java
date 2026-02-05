package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.List;

/* loaded from: classes.dex */
interface Extractor<T extends Annotation> {
    List<T> getAnnotations();

    Label getLabel(T t);

    Class getType(T t);
}
