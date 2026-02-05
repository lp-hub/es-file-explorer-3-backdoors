package com.estrongs.android.pop.app.compress;

import android.widget.CompoundButton;
import android.widget.EditText;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class au implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f599a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ as f600b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(as asVar, int i) {
        this.f600b = asVar;
        this.f599a = i;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        EditText editText;
        EditText editText2;
        EditText editText3;
        EditText editText4;
        if (z) {
            editText4 = this.f600b.f596a;
            editText4.setInputType(144);
        } else {
            editText = this.f600b.f596a;
            editText.setInputType(this.f599a);
        }
        editText2 = this.f600b.f596a;
        editText3 = this.f600b.f596a;
        editText2.setSelection(editText3.getText().length());
    }
}
