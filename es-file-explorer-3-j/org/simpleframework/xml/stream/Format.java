package org.simpleframework.xml.stream;

/* loaded from: classes.dex */
public class Format {
    private int indent;
    private String prolog;
    private Style style;

    public Format() {
        this(3);
    }

    public Format(int i) {
        this(i, null, null);
    }

    public Format(int i, String str) {
        this(i, str, null);
    }

    public Format(int i, String str, Style style) {
        this.prolog = str;
        this.indent = i;
        this.style = style;
    }

    public Format(int i, Style style) {
        this(i, null, style);
    }

    public Format(String str) {
        this(3, str);
    }

    public Format(Style style) {
        this(3, null, style);
    }

    public int getIndent() {
        return this.indent;
    }

    public String getProlog() {
        return this.prolog;
    }

    public Style getStyle() {
        return this.style;
    }
}
