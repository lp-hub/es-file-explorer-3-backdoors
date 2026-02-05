package com.estrongs.android.pop.esclasses;

import com.estrongs.android.ui.view.z;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1128a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f1129b;
    final /* synthetic */ ESActivity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(ESActivity eSActivity, String str, int i) {
        this.c = eSActivity;
        this.f1128a = str;
        this.f1129b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        z.a(this.c, this.f1128a, this.f1129b).show();
    }
}
