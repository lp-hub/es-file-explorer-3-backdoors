package com.estrongs.android.pop.app.compress;

import android.widget.EditText;

/* loaded from: classes.dex */
class ae implements com.estrongs.android.a.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ad f580a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(ad adVar) {
        this.f580a = adVar;
    }

    @Override // com.estrongs.android.a.h
    public void a(boolean z, boolean z2) {
        EditText editText;
        if (z) {
            this.f580a.f579a.g();
        } else {
            editText = this.f580a.f579a.h;
            editText.requestFocus();
        }
    }
}
