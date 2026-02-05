package com.estrongs.android.a;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f235a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f235a = aVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        CheckBox checkBox;
        EditText editText;
        EditText editText2;
        EditText editText3;
        EditText editText4;
        checkBox = this.f235a.h;
        if (checkBox.isChecked()) {
            editText3 = this.f235a.f;
            editText3.setEnabled(false);
            editText4 = this.f235a.g;
            editText4.setEnabled(false);
            return;
        }
        editText = this.f235a.f;
        editText.setEnabled(true);
        editText2 = this.f235a.g;
        editText2.setEnabled(true);
    }
}
