package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import java.io.File;

/* loaded from: classes.dex */
class fo implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f811a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ EditText f812b;
    final /* synthetic */ fm c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fo(fm fmVar, EditText editText, EditText editText2) {
        this.c = fmVar;
        this.f811a = editText;
        this.f812b = editText2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String obj = this.f811a.getText().toString();
        int a2 = new com.estrongs.android.util.ao().a(this.c.f809a, obj, this.f812b.getText().toString());
        if (a2 == 0) {
            String absolutePath = new File(obj).getAbsolutePath();
            if (com.estrongs.android.util.aw.b((CharSequence) absolutePath)) {
                com.estrongs.fs.a.b.a().a(absolutePath.endsWith("/") ? absolutePath + "*" : absolutePath + "/*");
            }
            com.estrongs.android.ui.view.z.a(this.c.f809a, C0000R.string.preference_setting_backup_succ, 1).show();
        } else if (a2 < 0) {
            com.estrongs.android.ui.view.z.a(this.c.f809a, C0000R.string.preference_setting_backup_fail, 1).show();
        }
        dialogInterface.dismiss();
    }
}
