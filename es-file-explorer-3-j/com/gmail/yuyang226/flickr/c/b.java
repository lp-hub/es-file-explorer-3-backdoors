package com.gmail.yuyang226.flickr.c;

import com.gmail.yuyang226.flickr.c;
import org.json.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Text;

/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: a, reason: collision with root package name */
    private String f3264a;

    /* renamed from: b, reason: collision with root package name */
    private String f3265b;
    private String c;
    private String d;
    private String e;
    private Element f;

    @Override // com.gmail.yuyang226.flickr.c
    public JSONObject a() {
        throw new UnsupportedOperationException();
    }

    public void a(Document document) {
        this.f = document.getDocumentElement();
        this.f3264a = this.f.getAttribute("stat");
        if (!"ok".equals(this.f3264a)) {
            Element element = (Element) this.f.getElementsByTagName("err").item(0);
            this.d = element.getAttribute("code");
            this.e = element.getAttribute("msg");
            return;
        }
        Element element2 = (Element) this.f.getElementsByTagName("photoid").item(0);
        if (element2 != null) {
            this.f3265b = ((Text) element2.getFirstChild()).getData();
        } else {
            this.f3265b = null;
        }
        Element element3 = (Element) this.f.getElementsByTagName("ticketid").item(0);
        if (element3 != null) {
            this.c = ((Text) element3.getFirstChild()).getData();
        } else {
            this.c = null;
        }
    }

    @Override // com.gmail.yuyang226.flickr.c
    public boolean b() {
        return this.e != null;
    }

    @Override // com.gmail.yuyang226.flickr.c
    public String c() {
        return this.d;
    }

    @Override // com.gmail.yuyang226.flickr.c
    public String d() {
        return this.e;
    }

    public String e() {
        return this.f3265b;
    }
}
