package com.estrongs.android.pop.utils;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.utils.AppRunner;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.impl.b.f f1261a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1262b;
    final /* synthetic */ String c;
    final /* synthetic */ c d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(c cVar, com.estrongs.fs.impl.b.f fVar, String str, String str2) {
        this.d = cVar;
        this.f1261a = fVar;
        this.f1262b = str;
        this.c = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Map map;
        Map map2;
        dialogInterface.dismiss();
        if (i == 0) {
            AppRunner.r(this.d.f1251a, this.f1261a.getAbsolutePath());
            return;
        }
        if (1 == i) {
            this.d.a(this.d.f1251a, this.f1262b, this.c);
            return;
        }
        map = this.d.c;
        if (map == null) {
            this.d.c = new HashMap();
        }
        map2 = this.d.c;
        map2.put(this.f1262b, this.c);
        dialogInterface.dismiss();
        AppRunner.r(this.d.f1251a, this.f1261a.getAbsolutePath());
    }
}
