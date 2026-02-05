package com.estrongs.android.c;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

/* loaded from: classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public String f272a;

    /* renamed from: b, reason: collision with root package name */
    public String f273b;
    public InputStream c;
    public Properties d = new Properties();
    final /* synthetic */ g e;

    public j(g gVar, String str, String str2, InputStream inputStream) {
        this.e = gVar;
        this.f272a = str;
        this.f273b = str2;
        this.c = inputStream;
    }

    public j(g gVar, String str, String str2, String str3) {
        this.e = gVar;
        this.f272a = str;
        this.f273b = str2;
        try {
            this.c = new ByteArrayInputStream(str3.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public void a(String str, String str2) {
        this.d.put(str, str2);
    }
}
