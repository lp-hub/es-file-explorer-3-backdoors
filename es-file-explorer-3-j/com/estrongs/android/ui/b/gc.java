package com.estrongs.android.ui.b;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gc implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ga f1848a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gc(ga gaVar) {
        this.f1848a = gaVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        int i3;
        int i4;
        com.estrongs.android.util.x xVar;
        Context context;
        int i5;
        boolean e;
        i2 = this.f1848a.l;
        if (i2 == 2) {
            i5 = this.f1848a.m;
            if (i5 == 1) {
                this.f1848a.l = 3;
                e = this.f1848a.e();
                if (e) {
                    this.f1848a.d();
                    return;
                }
                return;
            }
            return;
        }
        i3 = this.f1848a.l;
        if (i3 == 4) {
            i4 = this.f1848a.n;
            if (i4 == 9) {
                xVar = this.f1848a.p;
                Intent a2 = com.estrongs.android.pop.app.b.a(xVar.e());
                context = this.f1848a.f1845a;
                context.startActivity(a2);
                this.f1848a.b();
            }
        }
    }
}
