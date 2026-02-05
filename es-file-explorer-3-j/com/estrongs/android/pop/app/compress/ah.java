package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.view.View;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ah implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f584a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(z zVar) {
        this.f584a = zVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        String[] strArr;
        int i;
        context = this.f584a.d;
        com.estrongs.android.ui.b.aq a2 = new com.estrongs.android.ui.b.aq(context).a(C0000R.string.compress_level);
        strArr = this.f584a.B;
        i = this.f584a.C;
        a2.a(strArr, i, new ak(this)).b(C0000R.string.confirm_ok, new aj(this)).c(C0000R.string.confirm_cancel, new ai(this)).b();
    }
}
