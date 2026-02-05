package com.estrongs.android.ui.a;

import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aq extends a {
    final /* synthetic */ s h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aq(s sVar, Drawable drawable, String str, View.OnClickListener onClickListener) {
        super(drawable, str, onClickListener);
        this.h = sVar;
    }

    @Override // com.estrongs.android.ui.a.a
    public boolean a() {
        com.estrongs.android.pop.q qVar;
        qVar = this.h.e;
        return qVar.aD();
    }
}
