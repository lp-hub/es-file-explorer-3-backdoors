package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import java.io.Writer;

/* loaded from: classes.dex */
public final class NodeBuilder {
    private static Provider provider = ProviderFactory.getInstance();

    public static InputNode read(InputStream inputStream) {
        return read(provider.provide(inputStream));
    }

    public static InputNode read(Reader reader) {
        return read(provider.provide(reader));
    }

    private static InputNode read(EventReader eventReader) {
        return new NodeReader(eventReader).readRoot();
    }

    public static OutputNode write(Writer writer) {
        return write(writer, new Format());
    }

    public static OutputNode write(Writer writer, Format format) {
        return new NodeWriter(writer, format).writeRoot();
    }
}
