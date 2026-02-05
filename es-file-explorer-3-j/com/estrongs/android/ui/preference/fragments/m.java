package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class m implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f2474a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ EditText f2475b;
    final /* synthetic */ k c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(k kVar, EditText editText, EditText editText2) {
        this.c = kVar;
        this.f2474a = editText;
        this.f2475b = editText2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (new com.estrongs.android.util.ao().b(this.c.f2472a.getActivity(), this.f2474a.getText().toString(), this.f2475b.getText().toString())) {
            com.estrongs.fs.a.b.a().a("net://*");
            com.estrongs.android.ui.view.z.a(this.c.f2472a.getActivity(), C0000R.string.preference_setting_restore_succ, 1).show();
        } else {
            com.estrongs.android.ui.view.z.a(this.c.f2472a.getActivity(), C0000R.string.preference_setting_restore_fail, 1).show();
        }
        dialogInterface.dismiss();
    }
}
