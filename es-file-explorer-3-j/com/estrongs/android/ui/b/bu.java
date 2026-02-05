package com.estrongs.android.ui.b;

import android.text.Editable;
import android.text.TextWatcher;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bu implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ br f1679a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bu(br brVar) {
        this.f1679a = brVar;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (((bv) this.f1679a.f1675b).c) {
            boolean z = !this.f1679a.c.getText().toString().equals(this.f1679a.h);
            ((bv) this.f1679a.f1675b).f1681b.setEnabled(z);
            ((bv) this.f1679a.f1675b).f1681b.setTextColor(com.estrongs.android.ui.theme.al.a(this.f1679a.f1674a).d(z ? C0000R.color.popupbox_button_text : C0000R.color.popupbox_button_text_disabled));
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
