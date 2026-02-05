package com.estrongs.android.view;

/* loaded from: classes.dex */
public class ae implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.pop.utils.ae f2730a;

    /* renamed from: b, reason: collision with root package name */
    private String f2731b;
    private int c;

    public ae(String str, int i) {
        this.f2731b = str;
        this.c = i;
        this.f2730a = com.estrongs.android.pop.utils.aa.d(str, i);
    }

    public boolean a() {
        com.estrongs.android.pop.utils.ae d = com.estrongs.android.pop.utils.aa.d(this.f2731b, this.c);
        return d == null || !(d.e || d.f1178b);
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        return this.f2730a == null || !com.estrongs.android.pop.utils.aa.a(this.f2730a, gVar, this.c);
    }
}
