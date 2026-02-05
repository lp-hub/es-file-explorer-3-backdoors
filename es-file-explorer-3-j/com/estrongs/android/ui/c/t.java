package com.estrongs.android.ui.c;

import android.text.ClipboardManager;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.view.z;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESActivity f1919a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ q f1920b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(q qVar, ESActivity eSActivity) {
        this.f1920b = qVar;
        this.f1919a = eSActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View l;
        l = this.f1920b.l(C0000R.id.property_download_source);
        TextView textView = (TextView) l;
        if (textView != null) {
            String obj = textView.getText().toString();
            ESActivity eSActivity = this.f1919a;
            ESActivity eSActivity2 = this.f1919a;
            ClipboardManager clipboardManager = (ClipboardManager) eSActivity.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setText(obj);
                z.a(this.f1919a, C0000R.string.download_source_to_clipboard, 0).show();
            }
        }
    }
}
