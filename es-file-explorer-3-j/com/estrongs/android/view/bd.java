package com.estrongs.android.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bd extends com.estrongs.android.util.n {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ar f2763a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bd(ar arVar, String str) {
        super(str);
        this.f2763a = arVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        com.estrongs.fs.g k;
        com.estrongs.fs.g k2;
        int i = 0;
        int size = this.f2763a.e.a().size();
        int i2 = 0;
        for (int i3 = 1; i3 <= size && !this.f2763a.R && !this.f2763a.P && !this.g; i3++) {
            int i4 = this.f2763a.S - i3;
            int i5 = this.f2763a.T + i3;
            if (i4 > 0 && i4 < this.f2763a.S && (k2 = this.f2763a.k(i4)) != null) {
                if (com.estrongs.android.util.av.G(k2.getName()) && !com.estrongs.android.d.d.a(k2) && !com.estrongs.android.d.d.b(k2)) {
                    com.estrongs.android.d.d.e(k2);
                } else if (i2 < this.f2763a.U && com.estrongs.android.d.d.c(k2) && !com.estrongs.android.d.d.a(k2) && !com.estrongs.android.d.d.b(k2)) {
                    com.estrongs.android.d.d.e(k2);
                    i2++;
                }
            }
            if (i5 > this.f2763a.T && i5 < size && (k = this.f2763a.k(i5)) != null) {
                if (com.estrongs.android.util.av.G(k.getName()) && !com.estrongs.android.d.d.a(k) && !com.estrongs.android.d.d.b(k)) {
                    com.estrongs.android.d.d.e(k);
                } else if (i < this.f2763a.U && com.estrongs.android.d.d.c(k) && !com.estrongs.android.d.d.a(k) && !com.estrongs.android.d.d.b(k)) {
                    com.estrongs.android.d.d.e(k);
                    i++;
                }
            }
        }
    }
}
