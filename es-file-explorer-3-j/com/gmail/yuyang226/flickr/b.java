package com.gmail.yuyang226.flickr;

import org.json.JSONObject;

/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: a, reason: collision with root package name */
    private String f3258a;

    /* renamed from: b, reason: collision with root package name */
    private JSONObject f3259b;
    private String c;
    private String d;
    private String e;

    public b(String str) {
        this.c = str;
        a(this.c);
    }

    @Override // com.gmail.yuyang226.flickr.c
    public JSONObject a() {
        return this.f3259b;
    }

    public void a(String str) {
        this.c = str;
        this.f3259b = new JSONObject(str);
        this.f3258a = this.f3259b.getString("stat");
        if ("ok".equals(this.f3258a) || !"fail".equals(this.f3258a)) {
            return;
        }
        this.d = this.f3259b.getString("code");
        this.e = this.f3259b.getString("message");
    }

    @Override // com.gmail.yuyang226.flickr.c
    public boolean b() {
        return this.d != null;
    }

    @Override // com.gmail.yuyang226.flickr.c
    public String c() {
        return this.d;
    }

    @Override // com.gmail.yuyang226.flickr.c
    public String d() {
        return this.e;
    }
}
