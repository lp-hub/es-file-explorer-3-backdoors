package org.simpleframework.xml.filter;

/* loaded from: classes.dex */
public class SystemFilter implements Filter {
    private Filter filter;

    public SystemFilter() {
        this(null);
    }

    public SystemFilter(Filter filter) {
        this.filter = filter;
    }

    @Override // org.simpleframework.xml.filter.Filter
    public String replace(String str) {
        String property = System.getProperty(str);
        if (property != null) {
            return property;
        }
        if (this.filter != null) {
            return this.filter.replace(str);
        }
        return null;
    }
}
