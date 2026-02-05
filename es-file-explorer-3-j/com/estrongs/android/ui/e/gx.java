package com.estrongs.android.ui.e;

import android.view.View;
import com.estrongs.android.pop.esclasses.ESScrollView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gx implements com.estrongs.android.pop.esclasses.m {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ gu f2178a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gx(gu guVar) {
        this.f2178a = guVar;
    }

    @Override // com.estrongs.android.pop.esclasses.m
    public void a() {
        View view;
        View view2;
        if (this.f2178a.c) {
            view = this.f2178a.k;
            view.setVisibility(0);
            view2 = this.f2178a.l;
            view2.setVisibility(4);
        }
    }

    @Override // com.estrongs.android.pop.esclasses.m
    public void b() {
        View view;
        View view2;
        ESScrollView eSScrollView;
        if (this.f2178a.c) {
            view = this.f2178a.k;
            view.setVisibility(4);
            view2 = this.f2178a.l;
            view2.setVisibility(0);
            eSScrollView = this.f2178a.j;
            eSScrollView.scrollTo(0, 1);
        }
    }

    @Override // com.estrongs.android.pop.esclasses.m
    public void c() {
        View view;
        View view2;
        if (this.f2178a.c) {
            view = this.f2178a.k;
            view.setVisibility(0);
            view2 = this.f2178a.l;
            view2.setVisibility(0);
        }
    }
}
