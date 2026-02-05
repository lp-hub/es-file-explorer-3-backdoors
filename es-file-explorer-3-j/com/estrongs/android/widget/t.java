package com.estrongs.android.widget;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t implements com.estrongs.android.view.br {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f2936a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(g gVar) {
        this.f2936a = gVar;
    }

    @Override // com.estrongs.android.view.br
    public void a(String str, boolean z) {
        a(str, z, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0092, code lost:
    
        if (r0.M() == null) goto L24;
     */
    @Override // com.estrongs.android.view.br
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(String str, boolean z, boolean z2) {
        com.estrongs.fs.g gVar;
        com.estrongs.fs.g gVar2;
        String str2;
        Activity activity;
        com.estrongs.android.view.ar arVar;
        com.estrongs.fs.c.a.a aVar;
        TextView textView;
        View view;
        View view2;
        View view3;
        View view4;
        View view5;
        com.estrongs.android.view.ar arVar2;
        ImageView imageView;
        com.estrongs.fs.g gVar3;
        com.estrongs.fs.g a2;
        TextView textView2;
        View view6;
        View view7;
        View view8;
        View view9;
        View view10;
        if ("storage://".equals(str)) {
            textView2 = this.f2936a.i;
            textView2.setText("");
            view6 = this.f2936a.k;
            view6.setEnabled(false);
            view7 = this.f2936a.m;
            if (view7 != null) {
                view10 = this.f2936a.m;
                view10.setVisibility(8);
            }
            view8 = this.f2936a.l;
            if (view8 != null) {
                view9 = this.f2936a.l;
                view9.setVisibility(8);
            }
            this.f2936a.o = null;
            return;
        }
        gVar = this.f2936a.o;
        if (gVar == null && (a2 = this.f2936a.a(str)) != null) {
            this.f2936a.o = a2;
        }
        gVar2 = this.f2936a.o;
        if (gVar2 != null) {
            imageView = this.f2936a.h;
            gVar3 = this.f2936a.o;
            imageView.setImageDrawable(com.estrongs.android.d.d.e(gVar3));
        }
        str2 = this.f2936a.u;
        if (com.estrongs.android.util.ak.E(str2) == com.estrongs.android.util.ak.E(str)) {
            arVar2 = this.f2936a.j;
        }
        activity = this.f2936a.r;
        this.f2936a.p = com.estrongs.android.pop.q.a(activity).p(str);
        arVar = this.f2936a.j;
        aVar = this.f2936a.p;
        arVar.a(aVar);
        this.f2936a.u = str;
        textView = this.f2936a.i;
        textView.setText(com.estrongs.android.util.ak.bv(str));
        view = this.f2936a.k;
        view.setEnabled(true);
        view2 = this.f2936a.m;
        if (view2 != null) {
            view5 = this.f2936a.m;
            view5.setVisibility(0);
        }
        view3 = this.f2936a.l;
        if (view3 != null) {
            view4 = this.f2936a.l;
            view4.setVisibility(0);
        }
    }
}
