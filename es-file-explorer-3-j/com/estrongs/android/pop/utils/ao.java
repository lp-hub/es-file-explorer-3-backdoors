package com.estrongs.android.pop.utils;

import android.app.Activity;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ao implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1193a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f1194b;
    final /* synthetic */ com.estrongs.fs.g c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(Activity activity, com.estrongs.fs.g gVar, com.estrongs.fs.g gVar2) {
        this.f1193a = activity;
        this.f1194b = gVar;
        this.c = gVar2;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        if (i2 == 4) {
            aj.a(this.f1193a, new File(this.f1194b.getAbsolutePath(), (String) this.c.getExtra("item_paste_name")).getAbsolutePath());
        } else {
            if (i2 == 5) {
            }
        }
    }
}
