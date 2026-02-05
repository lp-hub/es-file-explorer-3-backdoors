package com.estrongs.android.ui.view;

import android.app.Activity;
import android.text.ClipboardManager;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import java.text.MessageFormat;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ac implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ClipboardManager f2594a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ aa f2595b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(aa aaVar, ClipboardManager clipboardManager) {
        this.f2595b = aaVar;
        this.f2594a = clipboardManager;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Activity activity;
        Activity activity2;
        this.f2594a.setText(this.f2595b.k);
        activity = this.f2595b.ad;
        String string = activity.getString(C0000R.string.msg_checksum_pasted);
        activity2 = this.f2595b.ad;
        z.a(activity2, MessageFormat.format(string, "SHA-1"), 1).show();
    }
}
