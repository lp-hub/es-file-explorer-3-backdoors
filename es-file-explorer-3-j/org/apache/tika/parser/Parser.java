package org.apache.tika.parser;

import java.io.InputStream;
import java.io.Serializable;
import org.apache.tika.metadata.Metadata;

/* loaded from: classes.dex */
public interface Parser extends Serializable {
    void parse(InputStream inputStream, Metadata metadata);
}
