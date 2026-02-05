package com.estrongs.android.pop.view;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.TranslateAnimation;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.drag.DragActionZone;
import com.estrongs.android.ui.drag.DragLayer;

/* loaded from: classes.dex */
class bf implements com.estrongs.android.ui.drag.e {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1339a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ be f1340b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bf(be beVar, String str) {
        this.f1340b = beVar;
        this.f1339a = str;
    }

    @Override // com.estrongs.android.ui.drag.e
    public void a() {
        View view;
        DragLayer dragLayer;
        DragLayer dragLayer2;
        DragLayer dragLayer3;
        DragLayer dragLayer4;
        DragActionZone dragActionZone;
        TranslateAnimation translateAnimation;
        DragActionZone dragActionZone2;
        TranslateAnimation translateAnimation2;
        DragActionZone dragActionZone3;
        TranslateAnimation translateAnimation3;
        DragActionZone dragActionZone4;
        TranslateAnimation translateAnimation4;
        View view2;
        if (this.f1340b.f1338a.i != null) {
            this.f1340b.f1338a.i.b(true);
        }
        view = this.f1340b.f1338a.am;
        if (view != null) {
            view2 = this.f1340b.f1338a.am;
            view2.setVisibility(0);
        }
        dragLayer = this.f1340b.f1338a.ay;
        if (dragLayer != null) {
            dragLayer4 = this.f1340b.f1338a.ay;
            if (dragLayer4.getVisibility() == 0) {
                dragActionZone = this.f1340b.f1338a.aA;
                translateAnimation = this.f1340b.f1338a.aD;
                dragActionZone.startAnimation(translateAnimation);
                dragActionZone2 = this.f1340b.f1338a.aE;
                translateAnimation2 = this.f1340b.f1338a.aH;
                dragActionZone2.startAnimation(translateAnimation2);
                dragActionZone3 = this.f1340b.f1338a.aI;
                translateAnimation3 = this.f1340b.f1338a.aL;
                dragActionZone3.startAnimation(translateAnimation3);
                dragActionZone4 = this.f1340b.f1338a.aM;
                translateAnimation4 = this.f1340b.f1338a.aP;
                dragActionZone4.startAnimation(translateAnimation4);
            }
        }
        dragLayer2 = this.f1340b.f1338a.aQ;
        if (dragLayer2 != null) {
            dragLayer3 = this.f1340b.f1338a.aQ;
            dragLayer3.setVisibility(8);
        }
        com.estrongs.android.view.ar t = this.f1340b.f1338a.t();
        if (t != null) {
            t.e();
        }
    }

    @Override // com.estrongs.android.ui.drag.e
    public void a(com.estrongs.android.ui.drag.j jVar, Object obj, int i) {
        View view;
        DragLayer dragLayer;
        DragActionZone dragActionZone;
        Drawable c;
        DragLayer dragLayer2;
        com.estrongs.android.ui.drag.d dVar;
        DragActionZone dragActionZone2;
        com.estrongs.android.ui.drag.d dVar2;
        DragActionZone dragActionZone3;
        com.estrongs.android.ui.drag.d dVar3;
        DragActionZone dragActionZone4;
        com.estrongs.android.ui.drag.d dVar4;
        DragActionZone dragActionZone5;
        DragActionZone dragActionZone6;
        TranslateAnimation translateAnimation;
        DragActionZone dragActionZone7;
        TranslateAnimation translateAnimation2;
        DragActionZone dragActionZone8;
        TranslateAnimation translateAnimation3;
        DragActionZone dragActionZone9;
        TranslateAnimation translateAnimation4;
        DragActionZone dragActionZone10;
        DragActionZone dragActionZone11;
        DragActionZone dragActionZone12;
        DragActionZone dragActionZone13;
        DragActionZone dragActionZone14;
        DragActionZone dragActionZone15;
        DragActionZone dragActionZone16;
        DragActionZone dragActionZone17;
        Drawable c2;
        this.f1340b.f1338a.i.b(false);
        view = this.f1340b.f1338a.am;
        view.setVisibility(4);
        dragLayer = this.f1340b.f1338a.ay;
        if (dragLayer == null) {
            this.f1340b.f1338a.au();
        }
        if (!com.estrongs.android.util.ak.Q(this.f1339a) || com.estrongs.android.util.ak.X(this.f1339a)) {
            dragActionZone = this.f1340b.f1338a.aE;
            c = this.f1340b.f1338a.c(C0000R.drawable.main_addressbar_window);
            dragActionZone.a(c);
        } else {
            dragActionZone17 = this.f1340b.f1338a.aE;
            c2 = this.f1340b.f1338a.c(C0000R.drawable.toolbar_edit_backup);
            dragActionZone17.a(c2);
        }
        dragLayer2 = this.f1340b.f1338a.ay;
        dragLayer2.setVisibility(0);
        dVar = this.f1340b.f1338a.az;
        dragActionZone2 = this.f1340b.f1338a.aA;
        dVar.b(dragActionZone2);
        dVar2 = this.f1340b.f1338a.az;
        dragActionZone3 = this.f1340b.f1338a.aE;
        dVar2.b(dragActionZone3);
        dVar3 = this.f1340b.f1338a.az;
        dragActionZone4 = this.f1340b.f1338a.aI;
        dVar3.b(dragActionZone4);
        dVar4 = this.f1340b.f1338a.az;
        dragActionZone5 = this.f1340b.f1338a.aM;
        dVar4.b(dragActionZone5);
        dragActionZone6 = this.f1340b.f1338a.aA;
        translateAnimation = this.f1340b.f1338a.aC;
        dragActionZone6.startAnimation(translateAnimation);
        dragActionZone7 = this.f1340b.f1338a.aE;
        translateAnimation2 = this.f1340b.f1338a.aG;
        dragActionZone7.startAnimation(translateAnimation2);
        dragActionZone8 = this.f1340b.f1338a.aI;
        translateAnimation3 = this.f1340b.f1338a.aK;
        dragActionZone8.startAnimation(translateAnimation3);
        dragActionZone9 = this.f1340b.f1338a.aM;
        translateAnimation4 = this.f1340b.f1338a.aO;
        dragActionZone9.startAnimation(translateAnimation4);
        com.estrongs.android.view.ar t = this.f1340b.f1338a.t();
        boolean contains = t.w().contains(com.estrongs.fs.impl.pcs.b.a());
        if ((t == null || !com.estrongs.android.util.ak.aP(this.f1339a) || (t.w().size() == 1 && !t.w().get(0).getFileType().a())) && !contains) {
            dragActionZone10 = this.f1340b.f1338a.aA;
            dragActionZone10.setEnabled(true);
            dragActionZone11 = this.f1340b.f1338a.aE;
            dragActionZone11.setEnabled(true);
            dragActionZone12 = this.f1340b.f1338a.aI;
            dragActionZone12.setEnabled(true);
            return;
        }
        dragActionZone13 = this.f1340b.f1338a.aA;
        dragActionZone13.setEnabled(false);
        dragActionZone14 = this.f1340b.f1338a.aI;
        dragActionZone14.setEnabled(false);
        if (!contains || com.estrongs.android.ui.pcs.aw.a().c()) {
            dragActionZone15 = this.f1340b.f1338a.aE;
            dragActionZone15.setEnabled(true);
        } else {
            dragActionZone16 = this.f1340b.f1338a.aE;
            dragActionZone16.setEnabled(false);
        }
    }
}
