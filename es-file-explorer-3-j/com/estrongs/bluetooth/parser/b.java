package com.estrongs.bluetooth.parser;

import com.estrongs.bluetooth.parser.OBEXElement;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends DefaultHandler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2950a;

    /* renamed from: b, reason: collision with root package name */
    private int f2951b = 0;
    private StringBuffer c = new StringBuffer();

    public b(a aVar) {
        this.f2950a = aVar;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        if (this.f2951b == 2) {
            this.c.append(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        if (this.f2951b == 2) {
            this.c = new StringBuffer();
        }
        this.f2951b--;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        this.f2951b++;
        if (this.f2951b == 2) {
            OBEXElement oBEXElement = new OBEXElement();
            if (str2.equalsIgnoreCase("file")) {
                oBEXElement.a(OBEXElement.OBEXElementType.FILE);
            } else {
                oBEXElement.a(OBEXElement.OBEXElementType.FOLDER);
            }
            for (int i = 0; i < attributes.getLength(); i++) {
                String localName = attributes.getLocalName(i);
                if (localName.equalsIgnoreCase("name")) {
                    oBEXElement.a(attributes.getValue(i));
                } else if (localName.equalsIgnoreCase("size")) {
                    oBEXElement.a(Long.parseLong(attributes.getValue(i)));
                } else if (localName.equalsIgnoreCase("modified")) {
                    oBEXElement.b(attributes.getValue(i));
                } else if (localName.equalsIgnoreCase("user-perm")) {
                    oBEXElement.c(attributes.getValue(i));
                }
            }
            this.f2950a.f2949a.add(oBEXElement);
        }
    }
}
