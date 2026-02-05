package com.estrongs.android.ui.b;

import android.text.ClipboardManager;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.estrongs.android.ui.b.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESActivity f1745a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dn f1746b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cdo(dn dnVar, ESActivity eSActivity) {
        this.f1746b = dnVar;
        this.f1745a = eSActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View l;
        l = this.f1746b.l(C0000R.id.property_location_text);
        TextView textView = (TextView) l;
        if (textView != null) {
            String obj = textView.getText().toString();
            ESActivity eSActivity = this.f1745a;
            ESActivity eSActivity2 = this.f1745a;
            ClipboardManager clipboardManager = (ClipboardManager) eSActivity.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setText(obj);
                com.estrongs.android.ui.view.z.a(this.f1745a, C0000R.string.copy_path_to_clipboard, 0).show();
            }
        }
    }
}
