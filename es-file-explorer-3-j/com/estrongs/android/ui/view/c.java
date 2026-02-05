package com.estrongs.android.ui.view;

import android.widget.CompoundButton;
import android.widget.EditText;
import jcifs.https.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2630a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.f2630a = bVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        EditText editText;
        EditText editText2;
        EditText editText3;
        editText = this.f2630a.g;
        String obj = editText.getText().toString();
        if (z) {
            if (obj.equals("80")) {
                editText3 = this.f2630a.g;
                editText3.setText(String.valueOf(Handler.DEFAULT_HTTPS_PORT));
                return;
            }
            return;
        }
        if (obj.equals("443")) {
            editText2 = this.f2630a.g;
            editText2.setText(String.valueOf(80));
        }
    }
}
