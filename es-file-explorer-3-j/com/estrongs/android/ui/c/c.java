package com.estrongs.android.ui.c;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.aw;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements com.estrongs.a.a.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1895a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f1895a = aVar;
    }

    @Override // com.estrongs.a.a.h
    public void a(com.estrongs.a.a aVar, com.estrongs.a.a.i iVar) {
        boolean z;
        Activity activity;
        Activity activity2;
        if (iVar.i == 4) {
            a aVar2 = this.f1895a;
            activity2 = this.f1895a.ad;
            aVar2.a(activity2.getString(C0000R.string.progress_connecting));
            return;
        }
        if (iVar.i == 1) {
            a aVar3 = this.f1895a;
            activity = this.f1895a.ad;
            aVar3.a(activity.getString(C0000R.string.cal_file_count_and_size));
            return;
        }
        if (iVar.i == 3) {
            this.f1895a.a("Deleting the source ...");
            if (iVar.e > 0) {
                this.f1895a.a(iVar.e);
            }
            if (iVar.f >= 0) {
                this.f1895a.b(iVar.f);
                return;
            }
            return;
        }
        if (iVar.l) {
            if (iVar.e > 0) {
                this.f1895a.a(iVar.e);
                if (iVar.f >= 0) {
                    this.f1895a.b(iVar.f);
                }
            } else if (iVar.g > 0) {
                if (iVar.g > 0) {
                    this.f1895a.c(iVar.g);
                }
                if (iVar.h > 0) {
                    this.f1895a.d(iVar.h);
                }
            } else {
                this.f1895a.b();
            }
        } else if (iVar.c > 0) {
            this.f1895a.a(iVar.c);
            if (iVar.d >= 0) {
                this.f1895a.b(iVar.d);
            }
        } else {
            this.f1895a.b();
        }
        if (iVar.f197b > 0) {
            this.f1895a.a(iVar.f197b);
        }
        z = this.f1895a.q;
        if (z || aw.a((CharSequence) iVar.f196a)) {
            return;
        }
        this.f1895a.a(this.f1895a.a(iVar));
    }
}
