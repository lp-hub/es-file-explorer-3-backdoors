package com.estrongs.android.widget;

import android.view.View;
import android.view.animation.TranslateAnimation;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ag implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ab f2888a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(ab abVar) {
        this.f2888a = abVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        RealViewSwitcher realViewSwitcher;
        RealViewSwitcher realViewSwitcher2;
        RealViewSwitcher realViewSwitcher3;
        com.estrongs.android.ui.theme.al alVar;
        com.estrongs.android.ui.theme.al alVar2;
        RealViewSwitcher realViewSwitcher4;
        realViewSwitcher = this.f2888a.r;
        if (realViewSwitcher.h() == 0) {
            if (this.f2888a.g == null) {
                this.f2888a.g = new TranslateAnimation(1, 1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
                this.f2888a.g.setDuration(500L);
                this.f2888a.h = new TranslateAnimation(1, 1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
                this.f2888a.h.setDuration(500L);
            }
            realViewSwitcher2 = this.f2888a.r;
            realViewSwitcher2.setOutAnimation(this.f2888a.g);
            realViewSwitcher3 = this.f2888a.r;
            realViewSwitcher3.setInAnimation(this.f2888a.h);
            View view2 = this.f2888a.c;
            alVar = this.f2888a.themeManager;
            view2.setBackgroundDrawable(alVar.a(C0000R.drawable.background_globle_buttons));
            View view3 = this.f2888a.d;
            alVar2 = this.f2888a.themeManager;
            view3.setBackgroundDrawable(alVar2.a(C0000R.drawable.addressbar_tab_left));
            realViewSwitcher4 = this.f2888a.r;
            realViewSwitcher4.a(1);
        }
    }
}
