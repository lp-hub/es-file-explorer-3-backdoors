package org.apache.tika.sax;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.tika.metadata.Metadata;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes.dex */
public class XHTMLContentHandler extends SafeContentHandler {
    public static final String XHTML = "http://www.w3.org/1999/xhtml";
    private boolean headEnded;
    private boolean headStarted;
    private final Metadata metadata;
    private boolean useFrameset;
    private static final char[] NL = {'\n'};
    private static final char[] TAB = {'\t'};
    private static final Set<String> HEAD = unmodifiableSet("title", "link", "base", "meta");
    private static final Set<String> AUTO = unmodifiableSet("html", "head", "body", "frameset");
    private static final Set<String> INDENT = unmodifiableSet("li", "dd", "dt", "td", "th", "frame");
    public static final Set<String> ENDLINE = unmodifiableSet("p", "h1", "h2", "h3", "h4", "h5", "h6", "div", "ul", "ol", "dl", "pre", "hr", "blockquote", "address", "fieldset", "table", "form", "noscript", "li", "dt", "dd", "noframes", "br", "tr", "select", "option");
    private static final Attributes EMPTY_ATTRIBUTES = new AttributesImpl();

    public XHTMLContentHandler(ContentHandler contentHandler, Metadata metadata) {
        super(contentHandler);
        this.headStarted = false;
        this.headEnded = false;
        this.useFrameset = false;
        this.metadata = metadata;
    }

    private void lazyEndHead(boolean z) {
        lazyStartHead();
        if (this.headEnded) {
            return;
        }
        this.headEnded = true;
        this.useFrameset = z;
        String[] names = this.metadata.names();
        int length = names.length;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                break;
            }
            String str = names[i2];
            if (!str.equals("title")) {
                String[] values = this.metadata.getValues(str);
                int length2 = values.length;
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    if (i4 < length2) {
                        String str2 = values[i4];
                        if (str2 != null) {
                            AttributesImpl attributesImpl = new AttributesImpl();
                            attributesImpl.addAttribute("", "name", "name", "CDATA", str);
                            attributesImpl.addAttribute("", "content", "content", "CDATA", str2);
                            super.startElement(XHTML, "meta", "meta", attributesImpl);
                            super.endElement(XHTML, "meta", "meta");
                            newline();
                        }
                        i3 = i4 + 1;
                    }
                }
            }
            i = i2 + 1;
        }
        super.startElement(XHTML, "title", "title", EMPTY_ATTRIBUTES);
        String str3 = this.metadata.get("title");
        if (str3 == null || str3.length() <= 0) {
            super.characters(new char[0], 0, 0);
        } else {
            char[] charArray = str3.toCharArray();
            super.characters(charArray, 0, charArray.length);
        }
        super.endElement(XHTML, "title", "title");
        newline();
        super.endElement(XHTML, "head", "head");
        newline();
        if (this.useFrameset) {
            super.startElement(XHTML, "frameset", "frameset", EMPTY_ATTRIBUTES);
        } else {
            super.startElement(XHTML, "body", "body", EMPTY_ATTRIBUTES);
        }
    }

    private void lazyStartHead() {
        if (this.headStarted) {
            return;
        }
        this.headStarted = true;
        super.startElement(XHTML, "html", "html", EMPTY_ATTRIBUTES);
        newline();
        super.startElement(XHTML, "head", "head", EMPTY_ATTRIBUTES);
        newline();
    }

    private static Set<String> unmodifiableSet(String... strArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(strArr)));
    }

    public void characters(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        characters(str.toCharArray(), 0, str.length());
    }

    @Override // org.apache.tika.sax.SafeContentHandler, org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        lazyEndHead(this.useFrameset);
        super.characters(cArr, i, i2);
    }

    public void element(String str, String str2) {
        if (str2 == null || str2.length() <= 0) {
            return;
        }
        startElement(str);
        characters(str2);
        endElement(str);
    }

    @Override // org.apache.tika.sax.SafeContentHandler, org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() {
        lazyEndHead(this.useFrameset);
        if (this.useFrameset) {
            super.endElement(XHTML, "frameset", "frameset");
        } else {
            super.endElement(XHTML, "body", "body");
        }
        super.endElement(XHTML, "html", "html");
        endPrefixMapping("");
        super.endDocument();
    }

    public void endElement(String str) {
        endElement(XHTML, str, str);
    }

    @Override // org.apache.tika.sax.SafeContentHandler, org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        if (AUTO.contains(str3)) {
            return;
        }
        super.endElement(str, str2, str3);
        if (XHTML.equals(str) && ENDLINE.contains(str3)) {
            newline();
        }
    }

    public void newline() {
        ignorableWhitespace(NL, 0, NL.length);
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() {
        super.startDocument();
        startPrefixMapping("", XHTML);
    }

    public void startElement(String str) {
        startElement(XHTML, str, str, EMPTY_ATTRIBUTES);
    }

    public void startElement(String str, String str2, String str3) {
        AttributesImpl attributesImpl = new AttributesImpl();
        attributesImpl.addAttribute("", str2, str2, "CDATA", str3);
        startElement(XHTML, str, str, attributesImpl);
    }

    @Override // org.apache.tika.sax.SafeContentHandler, org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        if (str3.equals("frameset")) {
            lazyEndHead(true);
            return;
        }
        if (AUTO.contains(str3)) {
            return;
        }
        if (HEAD.contains(str3)) {
            lazyStartHead();
        } else {
            lazyEndHead(false);
        }
        if (XHTML.equals(str) && INDENT.contains(str3)) {
            ignorableWhitespace(TAB, 0, TAB.length);
        }
        super.startElement(str, str2, str3, attributes);
    }

    public void startElement(String str, AttributesImpl attributesImpl) {
        startElement(XHTML, str, str, attributesImpl);
    }
}
