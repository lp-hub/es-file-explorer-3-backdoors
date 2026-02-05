package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class fv implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f823a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ EditText f824b;
    final /* synthetic */ ft c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fv(ft ftVar, EditText editText, EditText editText2) {
        this.c = ftVar;
        this.f823a = editText;
        this.f824b = editText2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (new com.estrongs.android.util.ao().b(this.c.f821a, this.f823a.getText().toString(), this.f824b.getText().toString())) {
            com.estrongs.fs.a.b.a().a("net://*");
            com.estrongs.android.ui.view.z.a(this.c.f821a, C0000R.string.preference_setting_restore_succ, 1).show();
        } else {
            com.estrongs.android.ui.view.z.a(this.c.f821a, C0000R.string.preference_setting_restore_fail, 1).show();
        }
        dialogInterface.dismiss();
    }
}
