package com.estrongs.android.ui.view;

import android.widget.Button;

/* loaded from: classes.dex */
class f implements com.estrongs.android.util.f {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f2633a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar) {
        this.f2633a = eVar;
    }

    @Override // com.estrongs.android.util.f
    public void a(String str, String str2, int i) {
        Button button;
        int i2;
        this.f2633a.f2632a.D = i;
        button = this.f2633a.f2632a.p;
        String[] strArr = com.estrongs.android.util.g.f2695a;
        i2 = this.f2633a.f2632a.D;
        button.setText(strArr[i2]);
    }
}
