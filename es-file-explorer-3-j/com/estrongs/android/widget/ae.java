package com.estrongs.android.widget;

import android.view.View;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class ae implements av {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ab f2886a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(ab abVar) {
        this.f2886a = abVar;
    }

    @Override // com.estrongs.android.widget.av
    public void a(int i) {
    }

    @Override // com.estrongs.android.widget.av
    public void a(int i, float f) {
    }

    @Override // com.estrongs.android.widget.av
    public void b(int i) {
    }

    @Override // com.estrongs.android.widget.av
    public void c(int i) {
        com.estrongs.android.ui.theme.al alVar;
        com.estrongs.android.ui.theme.al alVar2;
        com.estrongs.android.ui.theme.al alVar3;
        com.estrongs.android.ui.theme.al alVar4;
        if (i == 0) {
            View view = this.f2886a.d;
            alVar3 = this.f2886a.themeManager;
            view.setBackgroundDrawable(alVar3.a(C0000R.drawable.background_globle_buttons));
            View view2 = this.f2886a.c;
            alVar4 = this.f2886a.themeManager;
            view2.setBackgroundDrawable(alVar4.a(C0000R.drawable.addressbar_tab_left));
            return;
        }
        View view3 = this.f2886a.c;
        alVar = this.f2886a.themeManager;
        view3.setBackgroundDrawable(alVar.a(C0000R.drawable.background_globle_buttons));
        View view4 = this.f2886a.d;
        alVar2 = this.f2886a.themeManager;
        view4.setBackgroundDrawable(alVar2.a(C0000R.drawable.addressbar_tab_left));
    }

    @Override // com.estrongs.android.widget.av
    public void d(int i) {
    }
}
