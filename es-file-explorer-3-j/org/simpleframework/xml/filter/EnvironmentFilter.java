package org.simpleframework.xml.filter;

/* loaded from: classes.dex */
public class EnvironmentFilter implements Filter {
    private Filter filter;

    public EnvironmentFilter() {
        this(null);
    }

    public EnvironmentFilter(Filter filter) {
        this.filter = filter;
    }

    @Override // org.simpleframework.xml.filter.Filter
    public String replace(String str) {
        String str2 = System.getenv(str);
        if (str2 != null) {
            return str2;
        }
        if (this.filter != null) {
            return this.filter.replace(str);
        }
        return null;
    }
}
