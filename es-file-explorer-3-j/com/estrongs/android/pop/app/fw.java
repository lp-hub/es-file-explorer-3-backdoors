package com.estrongs.android.pop.app;

import android.app.Activity;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class fw implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f825a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ft f826b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fw(ft ftVar, EditText editText) {
        this.f826b = ftVar;
        this.f825a = editText;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.widget.g gVar = new com.estrongs.android.widget.g((Activity) this.f826b.f821a, com.estrongs.android.pop.b.b(), (com.estrongs.fs.h) new fx(this, com.estrongs.android.pop.q.a(this.f826b.f821a).p()), true);
        gVar.a(this.f826b.f821a.getText(C0000R.string.action_select));
        gVar.a(new fy(this, gVar));
        gVar.a(this.f826b.f821a.getString(C0000R.string.confirm_cancel), new fz(this, gVar));
        gVar.h();
    }
}
