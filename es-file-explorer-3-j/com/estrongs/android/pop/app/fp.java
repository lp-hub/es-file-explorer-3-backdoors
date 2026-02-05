package com.estrongs.android.pop.app;

import android.app.Activity;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class fp implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f813a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ EditText f814b;
    final /* synthetic */ fm c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fp(fm fmVar, String str, EditText editText) {
        this.c = fmVar;
        this.f813a = str;
        this.f814b = editText;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.widget.g gVar = new com.estrongs.android.widget.g((Activity) this.c.f809a, this.f813a == null ? com.estrongs.android.pop.b.b() : this.f813a, (com.estrongs.fs.h) new fq(this, com.estrongs.android.pop.q.a(this.c.f809a).p()), true);
        gVar.a(this.c.f809a.getText(C0000R.string.action_select));
        gVar.b(this.c.f809a.getString(C0000R.string.confirm_ok), new fr(this, gVar));
        gVar.c(this.c.f809a.getString(C0000R.string.confirm_cancel), new fs(this, gVar));
        gVar.h();
    }
}
