package com.estrongs.android.ui.preference.fragments;

import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class g implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2464a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ EditText f2465b;
    final /* synthetic */ d c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(d dVar, String str, EditText editText) {
        this.c = dVar;
        this.f2464a = str;
        this.f2465b = editText;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.widget.g gVar = new com.estrongs.android.widget.g(this.c.f2460a.getActivity(), this.f2464a == null ? com.estrongs.android.pop.b.b() : this.f2464a, (com.estrongs.fs.h) new h(this, com.estrongs.android.pop.q.a(this.c.f2460a.getActivity()).p()), true);
        gVar.a(this.c.f2460a.getText(C0000R.string.action_select));
        gVar.b(this.c.f2460a.getString(C0000R.string.confirm_ok), new i(this, gVar));
        gVar.c(this.c.f2460a.getString(C0000R.string.confirm_cancel), new j(this, gVar));
        gVar.h();
    }
}
