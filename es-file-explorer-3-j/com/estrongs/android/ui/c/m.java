package com.estrongs.android.ui.c;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.ak;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1905a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ l f1906b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(l lVar, Activity activity) {
        this.f1906b = lVar;
        this.f1905a = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        EditText editText;
        boolean a2;
        editText = this.f1906b.f1904a;
        String trim = editText.getText().toString().trim();
        a2 = this.f1906b.a(trim);
        if (a2) {
            dialogInterface.dismiss();
            String C = com.estrongs.android.pop.q.a(this.f1905a).C();
            String string = this.f1905a.getString(C0000R.string.action_download);
            com.estrongs.fs.b.q qVar = new com.estrongs.fs.b.q(com.estrongs.fs.d.a(this.f1905a), trim, C);
            qVar.setDescription(string.concat(" ").concat(ak.bv(trim)));
            qVar.execute();
        }
    }
}
