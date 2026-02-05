package com.estrongs.fs.b;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ao implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2980a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(ah ahVar) {
        this.f2980a = ahVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.a.a.e eVar;
        if (ESActivity.x() == null) {
            new Thread(new ap(this)).start();
            return;
        }
        com.estrongs.android.a.e eVar2 = new com.estrongs.android.a.e(ESActivity.x(), new aq(this), true);
        eVar2.setTitle(this.f2980a.f.getString(C0000R.string.message_overwrite));
        StringBuilder append = new StringBuilder().append(this.f2980a.f.getString(C0000R.string.dialog_file_overwrite)).append("\n");
        eVar = this.f2980a.h;
        eVar2.setMessage(append.append(eVar.f191a).toString());
        eVar2.show();
    }
}
