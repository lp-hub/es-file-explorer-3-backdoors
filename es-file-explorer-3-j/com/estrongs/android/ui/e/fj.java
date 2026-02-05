package com.estrongs.android.ui.e;

import android.view.View;
import com.estrongs.android.pop.esclasses.ESScrollView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fj implements com.estrongs.android.pop.esclasses.m {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ fi f2133a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fj(fi fiVar) {
        this.f2133a = fiVar;
    }

    @Override // com.estrongs.android.pop.esclasses.m
    public void a() {
        View view;
        View view2;
        if (this.f2133a.f2131a) {
            view = this.f2133a.j;
            view.setVisibility(0);
            view2 = this.f2133a.k;
            view2.setVisibility(4);
        }
    }

    @Override // com.estrongs.android.pop.esclasses.m
    public void b() {
        View view;
        View view2;
        ESScrollView eSScrollView;
        if (this.f2133a.f2131a) {
            view = this.f2133a.j;
            view.setVisibility(4);
            view2 = this.f2133a.k;
            view2.setVisibility(0);
            eSScrollView = this.f2133a.h;
            eSScrollView.scrollTo(0, 1);
        }
    }

    @Override // com.estrongs.android.pop.esclasses.m
    public void c() {
        View view;
        View view2;
        if (this.f2133a.f2131a) {
            view = this.f2133a.j;
            view.setVisibility(0);
            view2 = this.f2133a.k;
            view2.setVisibility(0);
        }
    }
}
