package com.estrongs.android.pop.app;

import android.content.Context;
import com.estrongs.android.ui.view.IndicatorView;

/* loaded from: classes.dex */
class de extends IndicatorView {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ dd f654a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public de(dd ddVar, Context context) {
        super(context);
        this.f654a = ddVar;
    }

    @Override // com.estrongs.android.ui.view.IndicatorView
    public void a(int i) {
        com.estrongs.android.ui.view.az azVar;
        azVar = this.f654a.f653b.q;
        int i2 = "playlist".equals(azVar.b()) ? 1 : 0;
        if (i2 != i) {
            a(i2, i);
            this.f654a.a(i);
        }
    }
}
