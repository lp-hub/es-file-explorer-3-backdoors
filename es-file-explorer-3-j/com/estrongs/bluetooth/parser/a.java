package com.estrongs.bluetooth.parser;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.SAXException;

/* loaded from: classes.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    private static final String f2948b = System.getProperty("line.separator");
    private static final String c = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" + f2948b + "<!DOCTYPE folder-listing SYSTEM \"obex-folder-listing.dtd\">";

    /* renamed from: a, reason: collision with root package name */
    ArrayList<OBEXElement> f2949a = new ArrayList<>();
    private volatile boolean d = false;

    private static void a(StringBuffer stringBuffer, String str) {
        stringBuffer.append(str);
    }

    public String a(ArrayList<OBEXElement> arrayList) {
        a();
        StringBuffer stringBuffer = new StringBuffer();
        a(stringBuffer, c);
        a(stringBuffer, f2948b);
        a(stringBuffer, "<folder-listing version=\"1.0\">");
        a(stringBuffer, f2948b);
        a(stringBuffer, "  <parent-folder/>");
        a(stringBuffer, f2948b);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= arrayList.size()) {
                a(stringBuffer, "</folder-listing>");
                a(stringBuffer, f2948b);
                b();
                return stringBuffer.toString();
            }
            OBEXElement oBEXElement = arrayList.get(i2);
            a(stringBuffer, "  <" + (oBEXElement.d() ? "folder" : "file") + " name=\"" + oBEXElement.a() + "\" size=\"" + oBEXElement.b() + "\" modified=\"" + oBEXElement.f() + "\" user-perm=\"" + oBEXElement.g() + "\" />");
            a(stringBuffer, f2948b);
            i = i2 + 1;
        }
    }

    public ArrayList<OBEXElement> a(InputStream inputStream) {
        a();
        this.f2949a.clear();
        SAXParser sAXParser = null;
        try {
            sAXParser = SAXParserFactory.newInstance().newSAXParser();
        } catch (ParserConfigurationException e) {
        } catch (SAXException e2) {
        }
        try {
            sAXParser.parse(inputStream, new b(this));
        } catch (IOException e3) {
        } catch (SAXException e4) {
        }
        b();
        return this.f2949a;
    }

    public synchronized void a() {
        while (this.d) {
            try {
                wait();
            } catch (InterruptedException e) {
            }
        }
        this.d = true;
    }

    public synchronized void b() {
        this.d = false;
        notifyAll();
    }
}
