package com.estrongs.android.pop.app.compress;

import android.content.Context;
import com.estrongs.android.pop.C0000R;
import com.estrongs.io.model.ArchiveEntryFile;

/* loaded from: classes.dex */
class ar implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Exception f594a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ap f595b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(ap apVar, Exception exc) {
        this.f595b = apVar;
        this.f594a = exc;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArchiveEntryFile archiveEntryFile;
        String name = this.f594a.getMessage() == null ? this.f594a.getClass().getName() : this.f594a.getMessage();
        if (name.trim().length() > 0) {
            name = "(" + name + ")";
        }
        Context context = this.f595b.f592a.getContext();
        StringBuilder append = new StringBuilder().append(this.f595b.f592a.getContext().getString(C0000R.string.failed_to_open)).append(": ");
        archiveEntryFile = this.f595b.f592a.e;
        com.estrongs.android.ui.view.z.a(context, append.append(archiveEntryFile).append(name).toString(), 1).show();
    }
}
