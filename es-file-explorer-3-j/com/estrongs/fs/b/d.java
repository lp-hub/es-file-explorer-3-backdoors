package com.estrongs.fs.b;

import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2998a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2999b;
    final /* synthetic */ b c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(b bVar, String str, String str2) {
        this.c = bVar;
        this.f2998a = str;
        this.f2999b = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.b.aq aqVar = new com.estrongs.android.ui.b.aq(this.c.f2995a);
        aqVar.a(C0000R.string.message_hint);
        aqVar.b(this.c.f2995a.getString(C0000R.string.inconsistent_signature_msg_2));
        aqVar.b(this.c.f2995a.getString(C0000R.string.action_uninstall), new e(this));
        aqVar.c(this.c.f2995a.getString(C0000R.string.confirm_cancel), new f(this));
        aqVar.b();
    }
}
