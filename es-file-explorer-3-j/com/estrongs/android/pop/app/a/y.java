package com.estrongs.android.pop.app.a;

import android.view.View;
import android.widget.CheckBox;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class y implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f434a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ CheckBox f435b;
    final /* synthetic */ x c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(x xVar, a aVar, CheckBox checkBox) {
        this.c = xVar;
        this.f434a = aVar;
        this.f435b = checkBox;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f435b.setChecked(!this.f435b.isChecked());
    }
}
