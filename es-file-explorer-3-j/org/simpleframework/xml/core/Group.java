package org.simpleframework.xml.core;

/* loaded from: classes.dex */
interface Group {
    LabelMap getElements(Context context);

    Label getLabel(Class cls);

    boolean isInline();

    String toString();
}
