package com.estrongs.a;

import android.app.Activity;

/* loaded from: classes.dex */
final class d implements com.estrongs.a.a.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f216a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Activity activity) {
        this.f216a = activity;
    }

    @Override // com.estrongs.a.a.a
    public void a(a aVar, com.estrongs.a.a.c cVar) {
        this.f216a.runOnUiThread(new e(this, cVar, aVar));
    }
}
