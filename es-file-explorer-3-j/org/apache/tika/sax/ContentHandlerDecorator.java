package org.apache.tika.sax;

import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes.dex */
public class ContentHandlerDecorator extends DefaultHandler {
    static final /* synthetic */ boolean $assertionsDisabled;
    private ContentHandler handler;

    static {
        $assertionsDisabled = !ContentHandlerDecorator.class.desiredAssertionStatus();
    }

    protected ContentHandlerDecorator() {
        this(new DefaultHandler());
    }

    public ContentHandlerDecorator(ContentHandler contentHandler) {
        if (!$assertionsDisabled && contentHandler == null) {
            throw new AssertionError();
        }
        this.handler = contentHandler;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        try {
            this.handler.characters(cArr, i, i2);
        } catch (SAXException e) {
            handleException(e);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() {
        try {
            this.handler.endDocument();
        } catch (SAXException e) {
            handleException(e);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        try {
            this.handler.endElement(str, str2, str3);
        } catch (SAXException e) {
            handleException(e);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) {
        try {
            this.handler.endPrefixMapping(str);
        } catch (SAXException e) {
            handleException(e);
        }
    }

    protected void handleException(SAXException sAXException) {
        throw sAXException;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) {
        try {
            this.handler.ignorableWhitespace(cArr, i, i2);
        } catch (SAXException e) {
            handleException(e);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) {
        try {
            this.handler.processingInstruction(str, str2);
        } catch (SAXException e) {
            handleException(e);
        }
    }

    protected void setContentHandler(ContentHandler contentHandler) {
        if (!$assertionsDisabled && contentHandler == null) {
            throw new AssertionError();
        }
        this.handler = contentHandler;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this.handler.setDocumentLocator(locator);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void skippedEntity(String str) {
        try {
            this.handler.skippedEntity(str);
        } catch (SAXException e) {
            handleException(e);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() {
        try {
            this.handler.startDocument();
        } catch (SAXException e) {
            handleException(e);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        try {
            this.handler.startElement(str, str2, str3, attributes);
        } catch (SAXException e) {
            handleException(e);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) {
        try {
            this.handler.startPrefixMapping(str, str2);
        } catch (SAXException e) {
            handleException(e);
        }
    }

    public String toString() {
        return this.handler.toString();
    }
}
