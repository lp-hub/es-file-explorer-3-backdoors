package com.estrongs.android.pop.view;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1364a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(FileExplorerActivity fileExplorerActivity) {
        this.f1364a = fileExplorerActivity;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        EditText editText;
        EditText editText2;
        String str;
        editText = this.f1364a.aw;
        if (editText == null) {
            return;
        }
        if (this.f1364a.e(this.f1364a.u()) && this.f1364a.ab != null) {
            editText2 = this.f1364a.aw;
            String obj = editText2.getText().toString();
            str = this.f1364a.ab.f1407b;
            if (obj.equals(str)) {
                return;
            }
        }
        if (this.f1364a.v() == null || this.f1364a.t() == null) {
            return;
        }
        this.f1364a.b(this.f1364a.v().getAbsolutePath(), this.f1364a.t().ab());
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
