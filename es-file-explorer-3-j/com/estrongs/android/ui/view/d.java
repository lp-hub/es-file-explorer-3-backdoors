package com.estrongs.android.ui.view;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2631a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(b bVar) {
        this.f2631a = bVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        CheckBox checkBox;
        EditText editText;
        EditText editText2;
        EditText editText3;
        EditText editText4;
        checkBox = this.f2631a.k;
        if (checkBox.isChecked()) {
            editText3 = this.f2631a.h;
            editText3.setEnabled(false);
            editText4 = this.f2631a.i;
            editText4.setEnabled(false);
            return;
        }
        editText = this.f2631a.h;
        editText.setEnabled(true);
        editText2 = this.f2631a.i;
        editText2.setEnabled(true);
    }
}
