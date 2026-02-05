package com.estrongs.android.pop.app;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.estrongs.android.widget.RealViewSwitcher;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dd extends com.estrongs.android.ui.d.b {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LinearLayout f652a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f653b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dd(PopAudioPlayer popAudioPlayer, LinearLayout linearLayout, Context context, LinearLayout linearLayout2) {
        super(linearLayout, context);
        this.f653b = popAudioPlayer;
        this.f652a = linearLayout2;
    }

    @Override // com.estrongs.android.ui.d.b
    protected void a() {
        this.c = new de(this, this.f653b);
        int a2 = com.estrongs.android.pop.m.J ? com.estrongs.android.ui.d.a.a(this.f653b, 26.0f) : com.estrongs.android.ui.d.a.a(this.f653b, 16.0f);
        this.f652a.removeAllViews();
        this.f652a.addView(this.c, new ViewGroup.LayoutParams(-1, a2));
        a(new df(this, null));
        a(new dg(this, null));
        e(0);
    }

    @Override // com.estrongs.android.ui.d.b
    public void a(int i) {
        RealViewSwitcher realViewSwitcher;
        realViewSwitcher = this.f653b.i;
        realViewSwitcher.a(i);
    }

    @Override // com.estrongs.android.ui.d.b
    protected int b() {
        return 2;
    }
}
