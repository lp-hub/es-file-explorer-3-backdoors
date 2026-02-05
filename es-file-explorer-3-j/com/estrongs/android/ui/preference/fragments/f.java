package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.aw;
import java.io.File;

/* loaded from: classes.dex */
class f implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f2462a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ EditText f2463b;
    final /* synthetic */ d c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar, EditText editText, EditText editText2) {
        this.c = dVar;
        this.f2462a = editText;
        this.f2463b = editText2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String obj = this.f2462a.getText().toString();
        int a2 = new com.estrongs.android.util.ao().a(this.c.f2460a.getActivity(), obj, this.f2463b.getText().toString());
        if (a2 == 0) {
            String absolutePath = new File(obj).getAbsolutePath();
            if (aw.b((CharSequence) absolutePath)) {
                com.estrongs.fs.a.b.a().a(absolutePath.endsWith("/") ? absolutePath + "*" : absolutePath + "/*");
            }
            com.estrongs.android.ui.view.z.a(this.c.f2460a.getActivity(), C0000R.string.preference_setting_backup_succ, 1).show();
        } else if (a2 < 0) {
            com.estrongs.android.ui.view.z.a(this.c.f2460a.getActivity(), C0000R.string.preference_setting_backup_fail, 1).show();
        }
        dialogInterface.dismiss();
    }
}
