package com.estrongs.android.pop.app.compress;

import android.widget.CompoundButton;
import android.widget.EditText;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ag implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f582a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ z f583b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(z zVar, int i) {
        this.f583b = zVar;
        this.f582a = i;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        EditText editText;
        EditText editText2;
        EditText editText3;
        EditText editText4;
        if (z) {
            editText4 = this.f583b.w;
            editText4.setInputType(144);
        } else {
            editText = this.f583b.w;
            editText.setInputType(this.f582a);
        }
        editText2 = this.f583b.w;
        editText3 = this.f583b.w;
        editText2.setSelection(editText3.getText().length());
    }
}
