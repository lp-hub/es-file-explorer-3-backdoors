package org.simpleframework.xml.stream;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
class Builder implements Style {
    private final Cache attributes = new Cache();
    private final Cache elements = new Cache();
    private final Style style;

    /* loaded from: classes.dex */
    class Cache extends ConcurrentHashMap<String, String> {
        public Cache() {
        }
    }

    public Builder(Style style) {
        this.style = style;
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getAttribute(String str) {
        String str2 = this.attributes.get(str);
        if (str2 == null && (str2 = this.style.getAttribute(str)) != null) {
            this.attributes.put(str, str2);
        }
        return str2;
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getElement(String str) {
        String str2 = this.elements.get(str);
        if (str2 == null && (str2 = this.style.getElement(str)) != null) {
            this.elements.put(str, str2);
        }
        return str2;
    }

    public void setAttribute(String str, String str2) {
        this.attributes.put(str, str2);
    }

    public void setElement(String str, String str2) {
        this.elements.put(str, str2);
    }
}
