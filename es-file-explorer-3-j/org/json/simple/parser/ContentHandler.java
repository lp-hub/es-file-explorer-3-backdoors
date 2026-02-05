package org.json.simple.parser;

/* loaded from: classes.dex */
public interface ContentHandler {
    boolean endArray();

    void endJSON();

    boolean endObject();

    boolean endObjectEntry();

    boolean primitive(Object obj);

    boolean startArray();

    void startJSON();

    boolean startObject();

    boolean startObjectEntry(String str);
}
