package org.simpleframework.xml.stream;

/* loaded from: classes.dex */
final class ProviderFactory {
    ProviderFactory() {
    }

    public static Provider getInstance() {
        try {
            return new PullProvider();
        } catch (Throwable th) {
            return new DocumentProvider();
        }
    }
}
