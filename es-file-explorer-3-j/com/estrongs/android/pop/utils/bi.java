package com.estrongs.android.pop.utils;

import com.estrongs.android.pop.esclasses.ESActivity;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bi implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.ar f1227a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ESActivity f1228b;
    final /* synthetic */ List c;
    final /* synthetic */ String d;
    final /* synthetic */ bg e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(bg bgVar, com.estrongs.android.view.ar arVar, ESActivity eSActivity, List list, String str) {
        this.e = bgVar;
        this.f1227a = arVar;
        this.f1228b = eSActivity;
        this.c = list;
        this.d = str;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        if (i2 != 4 || this.f1227a == null) {
            return;
        }
        this.f1228b.a(new bj(this));
    }
}
