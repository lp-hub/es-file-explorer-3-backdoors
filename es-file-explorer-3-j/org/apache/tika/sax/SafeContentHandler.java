package org.apache.tika.sax;

import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes.dex */
public class SafeContentHandler extends ContentHandlerDecorator {
    private static final char[] REPLACEMENT = {65533};
    private final Output charactersOutput;
    private final Output ignorableWhitespaceOutput;

    /* loaded from: classes.dex */
    public interface Output {
        void write(char[] cArr, int i, int i2);
    }

    /* loaded from: classes.dex */
    class StringOutput implements Output {
        private final StringBuilder builder;

        private StringOutput() {
            this.builder = new StringBuilder();
        }

        public String toString() {
            return this.builder.toString();
        }

        @Override // org.apache.tika.sax.SafeContentHandler.Output
        public void write(char[] cArr, int i, int i2) {
            this.builder.append(cArr, i, i2);
        }
    }

    public SafeContentHandler(ContentHandler contentHandler) {
        super(contentHandler);
        this.charactersOutput = new Output() { // from class: org.apache.tika.sax.SafeContentHandler.1
            @Override // org.apache.tika.sax.SafeContentHandler.Output
            public void write(char[] cArr, int i, int i2) {
                SafeContentHandler.super.characters(cArr, i, i2);
            }
        };
        this.ignorableWhitespaceOutput = new Output() { // from class: org.apache.tika.sax.SafeContentHandler.2
            @Override // org.apache.tika.sax.SafeContentHandler.Output
            public void write(char[] cArr, int i, int i2) {
                SafeContentHandler.super.ignorableWhitespace(cArr, i, i2);
            }
        };
    }

    private void filter(char[] cArr, int i, int i2, Output output) {
        int i3 = i + i2;
        int i4 = i;
        while (i < i3) {
            int codePointAt = Character.codePointAt(cArr, i, i3);
            int charCount = Character.charCount(codePointAt) + i;
            if (isInvalid(codePointAt)) {
                if (i > i4) {
                    output.write(cArr, i4, i - i4);
                }
                writeReplacement(output);
                i4 = charCount;
            }
            i = charCount;
        }
        output.write(cArr, i4, i3 - i4);
    }

    private boolean isInvalid(String str) {
        char[] charArray = str.toCharArray();
        int i = 0;
        while (i < charArray.length) {
            int codePointAt = Character.codePointAt(charArray, i);
            if (isInvalid(codePointAt)) {
                return true;
            }
            i += Character.charCount(codePointAt);
        }
        return false;
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        filter(cArr, i, i2, this.charactersOutput);
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() {
        super.endDocument();
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        super.endElement(str, str2, str3);
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) {
        filter(cArr, i, i2, this.ignorableWhitespaceOutput);
    }

    protected boolean isInvalid(int i) {
        return i < 32 ? (i == 9 || i == 10 || i == 13) ? false : true : i < 57344 ? i > 55295 : i < 65536 ? i > 65533 : i > 1114111;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        AttributesImpl attributesImpl;
        int i = 0;
        while (true) {
            if (i >= attributes.getLength()) {
                attributesImpl = attributes;
                break;
            }
            if (isInvalid(attributes.getValue(i))) {
                attributesImpl = new AttributesImpl();
                for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                    String value = attributes.getValue(i2);
                    if (i2 >= i && isInvalid(value)) {
                        Output stringOutput = new StringOutput();
                        filter(value.toCharArray(), 0, value.length(), stringOutput);
                        value = stringOutput.toString();
                    }
                    attributesImpl.addAttribute(attributes.getURI(i2), attributes.getLocalName(i2), attributes.getQName(i2), attributes.getType(i2), value);
                }
            } else {
                i++;
            }
        }
        super.startElement(str, str2, str3, attributesImpl);
    }

    protected void writeReplacement(Output output) {
        output.write(REPLACEMENT, 0, REPLACEMENT.length);
    }
}
