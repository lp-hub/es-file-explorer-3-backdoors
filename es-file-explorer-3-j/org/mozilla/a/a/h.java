package org.mozilla.a.a;

/* loaded from: classes.dex */
public class h extends u {

    /* renamed from: a, reason: collision with root package name */
    q f3482a;

    public h() {
        this.f3482a = null;
    }

    public h(int i) {
        super(i);
        this.f3482a = null;
    }

    @Override // org.mozilla.a.a.u
    public void a(String str) {
        if (this.f3482a != null) {
            this.f3482a.a(str);
        }
    }

    public void a(q qVar) {
        this.f3482a = qVar;
    }

    public boolean a(byte[] bArr, int i, boolean z) {
        if (bArr == null || z) {
            return false;
        }
        a(bArr, i);
        return this.i;
    }
}
