package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.Style;

/* loaded from: classes.dex */
class DefaultStyle implements Style {
    @Override // org.simpleframework.xml.stream.Style
    public String getAttribute(String str) {
        return str;
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getElement(String str) {
        return str;
    }
}
