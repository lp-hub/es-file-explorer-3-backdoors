package com.estrongs.android.a;

import android.content.DialogInterface;
import android.widget.CheckBox;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.view.z;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f236a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f236a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        EditText editText;
        EditText editText2;
        EditText editText3;
        CheckBox checkBox;
        CheckBox checkBox2;
        editText = this.f236a.f;
        if (aw.a((CharSequence) editText.getText().toString())) {
            checkBox2 = this.f236a.h;
            if (!checkBox2.isChecked()) {
                z.a(this.f236a.c, this.f236a.c.getText(C0000R.string.username_empty), 1).show();
                return;
            }
        }
        editText2 = this.f236a.f;
        String trim = editText2.getText().toString().trim();
        editText3 = this.f236a.g;
        String obj = editText3.getText().toString();
        String aW = trim != null ? ak.aW(trim) : trim;
        if (obj != null) {
            obj = ak.aW(obj);
        }
        String str = this.f236a.f234b;
        String B = ak.B(str);
        if (aW != null && aW.length() != 0) {
            B = ak.a(B, aW, obj);
        }
        checkBox = this.f236a.i;
        if (checkBox.isChecked() || ak.F(B)) {
            com.estrongs.android.pop.q a2 = com.estrongs.android.pop.q.a(this.f236a.c);
            String c = a2.c(str);
            if (c == null) {
                c = ak.a(B);
            }
            a2.a(str);
            a2.a(B, c);
        }
        if (this.f236a.e != null) {
            this.f236a.e.a(aW, obj, str);
        }
        this.f236a.dismiss();
    }
}
