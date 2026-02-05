package com.estrongs.android.ui.e;

import android.view.View;

/* loaded from: classes.dex */
class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f2120a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(c cVar) {
        this.f2120a = cVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            this.f2120a.a(((Integer) view.getTag()).intValue()).f();
        } catch (Exception e) {
        }
    }
}
