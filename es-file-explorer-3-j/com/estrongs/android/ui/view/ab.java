package com.estrongs.android.ui.view;

import android.app.Activity;
import android.text.ClipboardManager;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import java.text.MessageFormat;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ab implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ClipboardManager f2592a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ aa f2593b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(aa aaVar, ClipboardManager clipboardManager) {
        this.f2593b = aaVar;
        this.f2592a = clipboardManager;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Activity activity;
        Activity activity2;
        this.f2592a.setText(this.f2593b.j);
        activity = this.f2593b.ad;
        String string = activity.getString(C0000R.string.msg_checksum_pasted);
        activity2 = this.f2593b.ad;
        z.a(activity2, MessageFormat.format(string, "MD5"), 1).show();
    }
}
