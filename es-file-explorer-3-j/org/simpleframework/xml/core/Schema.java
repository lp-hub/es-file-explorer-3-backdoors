package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;

/* loaded from: classes.dex */
interface Schema {
    Caller getCaller();

    Creator getCreator();

    Decorator getDecorator();

    Version getRevision();

    Section getSection();

    Label getText();

    Label getVersion();

    boolean isPrimitive();
}
