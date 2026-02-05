package com.estrongs.android.ui.b;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.CheckBox;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bf implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bd f1659a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bf(bd bdVar) {
        this.f1659a = bdVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        EditText editText;
        bg bgVar;
        bg bgVar2;
        CheckBox checkBox;
        CheckBox checkBox2;
        Context context;
        editText = this.f1659a.d;
        String obj = editText.getEditableText().toString();
        if (obj.equals("")) {
            checkBox2 = this.f1659a.e;
            if (checkBox2.getVisibility() != 8) {
                context = this.f1659a.f1657b;
                com.estrongs.android.ui.view.z.a(context, C0000R.string.pcs_bckup_path_empty, 0).show();
                return;
            }
        }
        dialogInterface.dismiss();
        bgVar = this.f1659a.c;
        if (bgVar != null) {
            bgVar2 = this.f1659a.c;
            checkBox = this.f1659a.e;
            bgVar2.a(obj, checkBox.isChecked());
        }
    }
}
