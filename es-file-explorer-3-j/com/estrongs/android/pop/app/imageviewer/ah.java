package com.estrongs.android.pop.app.imageviewer;

import android.view.View;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
final class ah implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.b.aq f940a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ View f941b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(com.estrongs.android.ui.b.aq aqVar, View view) {
        this.f940a = aqVar;
        this.f941b = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f940a.a(C0000R.string.property_title).a(this.f941b).b();
    }
}
