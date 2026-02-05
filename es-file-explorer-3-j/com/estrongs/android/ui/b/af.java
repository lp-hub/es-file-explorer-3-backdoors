package com.estrongs.android.ui.b;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class af implements com.estrongs.a.a.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ y f1624a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(y yVar) {
        this.f1624a = yVar;
    }

    @Override // com.estrongs.a.a.h
    public void a(com.estrongs.a.a aVar, com.estrongs.a.a.i iVar) {
        Activity activity;
        double a2;
        if (iVar.e <= 0 || iVar.g <= 0) {
            return;
        }
        y yVar = this.f1624a;
        StringBuilder sb = new StringBuilder();
        activity = this.f1624a.c;
        StringBuilder append = sb.append(activity.getString(C0000R.string.pcs_share_uploading));
        a2 = this.f1624a.a(iVar.h, iVar.e);
        yVar.a(append.append(String.valueOf((int) a2)).append("%").toString(), false);
    }
}
