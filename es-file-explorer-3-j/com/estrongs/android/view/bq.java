package com.estrongs.android.view;

import android.widget.AbsListView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bq implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ar f2786a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bq(ar arVar) {
        this.f2786a = arVar;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        this.f2786a.S = i;
        this.f2786a.T = this.f2786a.S + i2;
        this.f2786a.U = i2;
        this.f2786a.G.put(this.f2786a.w, absListView.onSaveInstanceState());
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        com.estrongs.android.util.n o;
        switch (i) {
            case 0:
                this.f2786a.R = false;
                this.f2786a.G.put(this.f2786a.w, absListView.onSaveInstanceState());
                System.gc();
                this.f2786a.n();
                ar arVar = this.f2786a;
                o = this.f2786a.o();
                arVar.V = o;
                this.f2786a.V.start();
                break;
            case 1:
                this.f2786a.n();
                this.f2786a.R = true;
                break;
            case 2:
                this.f2786a.n();
                this.f2786a.R = true;
                break;
        }
        this.f2786a.Z();
    }
}
