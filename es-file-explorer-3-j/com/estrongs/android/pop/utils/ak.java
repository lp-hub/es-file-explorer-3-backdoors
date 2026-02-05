package com.estrongs.android.pop.utils;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.ew;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ak implements com.estrongs.android.ui.b.by {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1187a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f1188b;
    final /* synthetic */ String c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(Activity activity, com.estrongs.fs.g gVar, String str) {
        this.f1187a = activity;
        this.f1188b = gVar;
        this.c = str;
    }

    @Override // com.estrongs.android.ui.b.by
    public void a(String str) {
        com.estrongs.fs.b.ab abVar = new com.estrongs.fs.b.ab(this.f1187a, this.f1188b, str, this.c);
        abVar.setDescription(this.f1187a.getString(C0000R.string.action_rename));
        new ew(this.f1187a, this.f1187a.getString(C0000R.string.progress_renaming), abVar).b(false).show();
        abVar.execute();
    }
}
