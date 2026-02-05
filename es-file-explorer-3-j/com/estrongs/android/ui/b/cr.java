package com.estrongs.android.ui.b;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cr implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cq f1711a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cr(cq cqVar) {
        this.f1711a = cqVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        CheckBox checkBox;
        EditText editText;
        EditText editText2;
        EditText editText3;
        EditText editText4;
        EditText editText5;
        EditText editText6;
        checkBox = this.f1711a.i;
        if (checkBox.isChecked()) {
            editText4 = this.f1711a.f;
            editText4.setEnabled(false);
            editText5 = this.f1711a.g;
            editText5.setEnabled(false);
            editText6 = this.f1711a.d;
            editText6.setEnabled(false);
            return;
        }
        editText = this.f1711a.f;
        editText.setEnabled(true);
        editText2 = this.f1711a.g;
        editText2.setEnabled(true);
        editText3 = this.f1711a.d;
        editText3.setEnabled(true);
    }
}
