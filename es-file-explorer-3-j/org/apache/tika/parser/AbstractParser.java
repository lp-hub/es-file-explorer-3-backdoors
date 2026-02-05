package org.apache.tika.parser;

import java.io.InputStream;
import org.apache.tika.metadata.Metadata;

/* loaded from: classes.dex */
public abstract class AbstractParser implements Parser {
    private static final long serialVersionUID = 7186985395903074255L;

    @Override // org.apache.tika.parser.Parser
    public void parse(InputStream inputStream, Metadata metadata) {
    }
}
