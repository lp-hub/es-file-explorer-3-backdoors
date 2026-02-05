package com.estrongs.android.ui.b;

import android.view.View;
import com.estrongs.android.pop.app.PopPreferenceActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bb implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1654a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ba f1655b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(ba baVar, int i) {
        this.f1655b = baVar;
        this.f1654a = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        bc bcVar;
        bc bcVar2;
        bcVar = this.f1655b.c;
        if (bcVar != null) {
            for (com.estrongs.android.util.p<Integer, Integer> pVar : ba.f1652a) {
                if (pVar.f2706a.intValue() == this.f1654a) {
                    PopPreferenceActivity.a(this.f1655b.getContext(), pVar.f2707b.intValue());
                    bcVar2 = this.f1655b.c;
                    bcVar2.a(pVar.f2707b.intValue());
                    return;
                }
            }
        }
    }
}
