package com.estrongs.android.ui.a;

import android.content.Context;
import android.view.View;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class cm implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ci f1564a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cm(ci ciVar) {
        this.f1564a = ciVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        context = this.f1564a.f1557a;
        com.estrongs.android.ui.view.z.a(context, C0000R.string.theme_need_download_first, 0).show();
    }
}
