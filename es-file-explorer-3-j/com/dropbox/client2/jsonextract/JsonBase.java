package com.dropbox.client2.jsonextract;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class JsonBase<T> {
    public final T internal;
    public final String path;

    public JsonBase(T t) {
        this(t, null);
    }

    public JsonBase(T t, String str) {
        this.internal = t;
        this.path = str;
    }

    public JsonExtractionException error(String str) {
        return new JsonExtractionException(this.path, str, this.internal);
    }
}
