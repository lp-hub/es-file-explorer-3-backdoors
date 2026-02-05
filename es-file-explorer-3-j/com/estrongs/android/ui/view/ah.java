package com.estrongs.android.ui.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ah implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ IndicatorView f2601a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(IndicatorView indicatorView) {
        this.f2601a = indicatorView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        if (this.f2601a.isFocused()) {
            IndicatorView indicatorView = this.f2601a;
            i = this.f2601a.f;
            indicatorView.a(i);
        }
    }
}
