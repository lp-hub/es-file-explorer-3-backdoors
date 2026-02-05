package com.estrongs.android.pop.app.compress;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q extends com.estrongs.io.a.a.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f621a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(l lVar, com.estrongs.io.archive.d dVar, String str) {
        super(dVar, str);
        this.f621a = lVar;
    }

    @Override // com.estrongs.io.a.a.a, com.estrongs.io.a.b
    public String a() {
        String str;
        String str2;
        as asVar;
        as asVar2;
        String str3;
        str = this.f621a.t;
        if (str != null) {
            asVar = this.f621a.p;
            if (asVar != null) {
                asVar2 = this.f621a.p;
                if (asVar2.b()) {
                    str3 = this.f621a.t;
                    return str3;
                }
            }
        }
        this.e.post(new s(this));
        try {
            synchronized (this) {
                wait();
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        str2 = this.f621a.t;
        return str2;
    }

    @Override // com.estrongs.io.a.a.b, com.estrongs.io.a.d
    public void a(String str, long j, int i) {
        super.a(str, j, i);
        this.e.post(new r(this, str));
    }
}
