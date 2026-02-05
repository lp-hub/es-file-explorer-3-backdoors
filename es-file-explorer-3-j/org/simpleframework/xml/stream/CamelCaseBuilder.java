package org.simpleframework.xml.stream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CamelCaseBuilder implements Style {
    private final boolean attribute;
    private final boolean element;

    /* loaded from: classes.dex */
    class Attribute extends Splitter {
        private boolean capital;

        private Attribute(String str) {
            super(str);
        }

        /* synthetic */ Attribute(CamelCaseBuilder camelCaseBuilder, String str, Attribute attribute) {
            this(str);
        }

        /* synthetic */ Attribute(CamelCaseBuilder camelCaseBuilder, String str, Attribute attribute, Attribute attribute2) {
            this(str);
        }

        @Override // org.simpleframework.xml.stream.Splitter
        protected void commit(char[] cArr, int i, int i2) {
            this.builder.append(cArr, i, i2);
        }

        @Override // org.simpleframework.xml.stream.Splitter
        protected void parse(char[] cArr, int i, int i2) {
            if (CamelCaseBuilder.this.attribute || this.capital) {
                cArr[i] = toUpper(cArr[i]);
            }
            this.capital = true;
        }
    }

    /* loaded from: classes.dex */
    class Element extends Attribute {
        private boolean capital;

        private Element(String str) {
            super(CamelCaseBuilder.this, str, null);
        }

        /* synthetic */ Element(CamelCaseBuilder camelCaseBuilder, String str, Element element) {
            this(str);
        }

        @Override // org.simpleframework.xml.stream.CamelCaseBuilder.Attribute, org.simpleframework.xml.stream.Splitter
        protected void parse(char[] cArr, int i, int i2) {
            if (CamelCaseBuilder.this.element || this.capital) {
                cArr[i] = toUpper(cArr[i]);
            }
            this.capital = true;
        }
    }

    public CamelCaseBuilder(boolean z, boolean z2) {
        this.attribute = z2;
        this.element = z;
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getAttribute(String str) {
        Attribute attribute = null;
        if (str != null) {
            return new Attribute(this, str, attribute, attribute).process();
        }
        return null;
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getElement(String str) {
        Element element = null;
        if (str != null) {
            return new Element(this, str, element).process();
        }
        return null;
    }
}
