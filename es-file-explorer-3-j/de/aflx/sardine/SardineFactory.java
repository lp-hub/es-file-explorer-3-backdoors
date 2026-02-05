package de.aflx.sardine;

import de.aflx.sardine.impl.SardineImpl;
import java.net.ProxySelector;

/* loaded from: classes.dex */
public class SardineFactory {
    public static Sardine begin() {
        return begin(null, null);
    }

    public static Sardine begin(String str, String str2) {
        return begin(str, str2, null);
    }

    public static Sardine begin(String str, String str2, ProxySelector proxySelector) {
        return new SardineImpl(str, str2, proxySelector);
    }
}
