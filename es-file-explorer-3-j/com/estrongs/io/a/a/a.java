package com.estrongs.io.a.a;

import com.estrongs.io.archive.d;

/* loaded from: classes.dex */
public class a extends b implements com.estrongs.io.a.b {

    /* renamed from: a, reason: collision with root package name */
    private boolean f3185a;
    private boolean k;
    private String l;

    public a(d dVar, String str) {
        super(dVar);
        this.f3185a = false;
        this.k = false;
        this.l = str;
    }

    public String a() {
        return null;
    }

    public void a(boolean z) {
        this.f3185a = z;
    }

    @Override // com.estrongs.io.a.b
    public boolean a(String str) {
        if (!this.f3185a) {
            this.e.sendMessage(this.e.obtainMessage(3, str));
            try {
                synchronized (this) {
                    wait();
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return this.k;
    }

    public void b(boolean z) {
        this.k = z;
    }

    @Override // com.estrongs.io.a.b
    public String c() {
        if (!this.l.endsWith("/")) {
            this.l += "/";
        }
        return this.l;
    }
}
