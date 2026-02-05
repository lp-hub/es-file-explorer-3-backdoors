package com.estrongs.android.pop.app;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dq implements com.estrongs.android.widget.av {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f692a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dq(PopAudioPlayer popAudioPlayer) {
        this.f692a = popAudioPlayer;
    }

    @Override // com.estrongs.android.widget.av
    public void a(int i) {
    }

    @Override // com.estrongs.android.widget.av
    public void a(int i, float f) {
        com.estrongs.android.ui.d.b bVar;
        com.estrongs.android.ui.d.b bVar2;
        if (f != 0.0d) {
            float abs = Math.abs(f);
            bVar = this.f692a.n;
            bVar.a(i, 1.0f - abs);
            bVar2 = this.f692a.n;
            bVar2.a((i + 1) % 2, abs);
        }
    }

    @Override // com.estrongs.android.widget.av
    public void b(int i) {
    }

    @Override // com.estrongs.android.widget.av
    public void c(int i) {
        com.estrongs.android.ui.d.b bVar;
        View view;
        View view2;
        com.estrongs.android.ui.view.az azVar;
        View view3;
        View view4;
        com.estrongs.android.ui.view.az azVar2;
        com.estrongs.android.ui.view.v vVar;
        com.estrongs.android.ui.d.b bVar2;
        bVar = this.f692a.n;
        if (bVar != null) {
            bVar2 = this.f692a.n;
            bVar2.d(i);
        }
        if (i != 0) {
            view = this.f692a.u;
            view.setVisibility(8);
            view2 = this.f692a.v;
            view2.setVisibility(0);
            azVar = this.f692a.q;
            azVar.a("playlist", (Boolean) false);
            return;
        }
        view3 = this.f692a.u;
        view3.setVisibility(0);
        view4 = this.f692a.v;
        view4.setVisibility(8);
        azVar2 = this.f692a.q;
        azVar2.a("playing", (Boolean) false);
        vVar = this.f692a.U;
        if (vVar.b()) {
            this.f692a.r();
        }
    }

    @Override // com.estrongs.android.widget.av
    public void d(int i) {
    }
}
