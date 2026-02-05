package com.estrongs.android.ui.preference.fragments;

import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f2476a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ k f2477b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(k kVar, EditText editText) {
        this.f2477b = kVar;
        this.f2476a = editText;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.widget.g gVar = new com.estrongs.android.widget.g(this.f2477b.f2472a.getActivity(), com.estrongs.android.pop.b.b(), (com.estrongs.fs.h) new o(this, com.estrongs.android.pop.q.a(this.f2477b.f2472a.getActivity()).p()), true);
        gVar.a(this.f2477b.f2472a.getText(C0000R.string.action_select));
        gVar.a(new p(this, gVar));
        gVar.a(this.f2477b.f2472a.getString(C0000R.string.confirm_cancel), new q(this, gVar));
        gVar.h();
    }
}
