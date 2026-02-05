package com.estrongs.android.pop.app.editor;

import android.widget.SeekBar;

/* loaded from: classes.dex */
class k implements com.estrongs.android.util.f {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f755a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(j jVar) {
        this.f755a = jVar;
    }

    @Override // com.estrongs.android.util.f
    public void a(String str, String str2, int i) {
        String str3;
        String str4;
        String str5;
        String str6;
        SeekBar seekBar;
        SeekBar seekBar2;
        str3 = this.f755a.f754a.d;
        if (str3 == null) {
            this.f755a.f754a.d = com.estrongs.android.util.g.a();
        }
        if (com.estrongs.android.util.g.f2695a[0].equalsIgnoreCase(str)) {
            new af(this.f755a.f754a, 0, true).start();
            seekBar2 = this.f755a.f754a.u;
            seekBar2.setProgress(0);
            return;
        }
        str4 = this.f755a.f754a.d;
        if (str4.equals(str)) {
            str = null;
        }
        if (str != null) {
            str5 = this.f755a.f754a.d;
            if (str5.equals(str)) {
                return;
            }
            this.f755a.f754a.d = str;
            com.estrongs.android.pop.q a2 = com.estrongs.android.pop.q.a(this.f755a.f754a);
            str6 = this.f755a.f754a.d;
            a2.l(str6);
            new af(this.f755a.f754a, 0, false).start();
            seekBar = this.f755a.f754a.u;
            seekBar.setProgress(0);
        }
    }
}
