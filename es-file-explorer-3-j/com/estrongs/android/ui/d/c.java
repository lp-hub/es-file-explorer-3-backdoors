package com.estrongs.android.ui.d;

import android.content.Context;
import com.estrongs.android.ui.view.IndicatorView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c extends IndicatorView {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f1929a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(b bVar, Context context) {
        super(context);
        this.f1929a = bVar;
    }

    @Override // com.estrongs.android.ui.view.IndicatorView
    public void a(int i) {
        int i2;
        i2 = this.f1929a.d;
        if (i != i2) {
            this.f1929a.a(i);
        }
    }
}
