package com.estrongs.android.ui.b;

import android.app.Activity;
import android.text.ClipboardManager;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bl implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1665a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bk f1666b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bl(bk bkVar, Activity activity) {
        this.f1666b = bkVar;
        this.f1665a = activity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View l;
        l = this.f1666b.l(C0000R.id.property_location_text);
        TextView textView = (TextView) l;
        if (textView != null) {
            String obj = textView.getText().toString();
            Activity activity = this.f1665a;
            Activity activity2 = this.f1665a;
            ClipboardManager clipboardManager = (ClipboardManager) activity.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setText(obj);
                com.estrongs.android.ui.view.z.a(this.f1665a, C0000R.string.copy_path_to_clipboard, 0).show();
            }
        }
    }
}
