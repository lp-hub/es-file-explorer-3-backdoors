package com.estrongs.android.ui.view;

import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class x implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.pop.app.a.ad f2654a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ w f2655b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(w wVar, com.estrongs.android.pop.app.a.ad adVar) {
        this.f2655b = wVar;
        this.f2654a = adVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String a2;
        if (this.f2655b.f2653b.a(this.f2654a)) {
            y yVar = (y) this.f2654a.c.getTag(C0000R.layout.audio_playlist_item);
            yVar.f2656a.setText((this.f2654a.f394b.e == null || "".equals(this.f2654a.f394b.e)) ? com.estrongs.android.util.ak.d(this.f2654a.f394b.f397b) : this.f2654a.f394b.e);
            TextView textView = yVar.f2657b;
            a2 = this.f2655b.f2653b.a(this.f2654a.f394b);
            textView.setText(a2);
            yVar.c.setText(this.f2654a.f394b.a());
        }
    }
}
