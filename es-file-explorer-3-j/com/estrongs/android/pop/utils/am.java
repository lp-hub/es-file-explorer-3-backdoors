package com.estrongs.android.pop.utils;

import android.app.Activity;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class am implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1189a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ List f1190b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(Activity activity, List list) {
        this.f1189a = activity;
        this.f1190b = list;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        if (i2 == 4) {
            aj.a(this.f1189a, (List<String>) this.f1190b);
        } else {
            if (i2 == 5) {
            }
        }
    }
}
