package com.estrongs.android.pop.app;

import com.estrongs.android.pop.esclasses.ESActivity;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ck implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ArrayList f566a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f567b;
    final /* synthetic */ ESActivity c;
    final /* synthetic */ boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ck(ArrayList arrayList, String str, ESActivity eSActivity, boolean z) {
        this.f566a = arrayList;
        this.f567b = str;
        this.c = eSActivity;
        this.d = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f566a.clear();
        this.f566a.add(this.f567b);
        LocalFileSharingActivity.a(this.c, (ArrayList<String>) this.f566a, this.d);
    }
}
