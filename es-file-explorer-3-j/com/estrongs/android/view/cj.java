package com.estrongs.android.view;

import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cj implements com.estrongs.a.a.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ch f2813a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cj(ch chVar) {
        this.f2813a = chVar;
    }

    @Override // com.estrongs.a.a.h
    public void a(com.estrongs.a.a aVar, com.estrongs.a.a.i iVar) {
        boolean z;
        if (iVar.i == 4) {
            this.f2813a.a(this.f2813a.ad.getString(C0000R.string.progress_connecting));
            return;
        }
        if (iVar.i == 1) {
            this.f2813a.a(this.f2813a.ad.getString(C0000R.string.cal_file_count_and_size));
            return;
        }
        if (iVar.i == 3) {
            this.f2813a.a("Deleting the source ...");
            if (iVar.e > 0) {
                this.f2813a.a(iVar.e);
            }
            if (iVar.f >= 0) {
                this.f2813a.b(iVar.f);
                return;
            }
            return;
        }
        if (iVar.l) {
            if (iVar.e > 0) {
                this.f2813a.a(iVar.e);
                if (iVar.f >= 0) {
                    this.f2813a.b(iVar.f);
                }
            } else if (iVar.g > 0) {
                if (iVar.g > 0) {
                    this.f2813a.c(iVar.g);
                }
                if (iVar.h > 0) {
                    this.f2813a.d(iVar.h);
                }
            } else {
                this.f2813a.b();
            }
        } else if (iVar.c > 0) {
            this.f2813a.a(iVar.c);
            if (iVar.d >= 0) {
                this.f2813a.b(iVar.d);
            }
        } else {
            this.f2813a.b();
        }
        if (iVar.f197b > 0) {
            this.f2813a.a(iVar.f197b);
        }
        z = this.f2813a.p;
        if (z || com.estrongs.android.util.aw.a((CharSequence) iVar.f196a)) {
            return;
        }
        this.f2813a.a(this.f2813a.a(iVar));
    }
}
