package com.estrongs.android.pop.view;

import com.estrongs.android.pop.C0000R;
import com.estrongs.fs.FileSystemException;

/* loaded from: classes.dex */
class ab implements dm {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.g.c f1292a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ aa f1293b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(aa aaVar, com.estrongs.android.ui.g.c cVar) {
        this.f1293b = aaVar;
        this.f1292a = cVar;
    }

    @Override // com.estrongs.android.pop.view.dm
    public void a(String str, boolean z) {
        this.f1292a.g();
        if (z) {
            return;
        }
        try {
            if (com.estrongs.android.util.ak.aP(str) || com.estrongs.android.util.ak.O(str) || com.estrongs.android.util.ak.Q(str) || com.estrongs.android.util.ak.au(str) || com.estrongs.android.util.ak.L(str) || com.estrongs.android.util.ak.aC(str) || com.estrongs.android.util.ak.s(str)) {
                this.f1293b.f1291a.d(str);
            } else if (!com.estrongs.fs.d.a(this.f1293b.f1291a).b(str)) {
                this.f1293b.f1291a.a(C0000R.string.message_invalid_path);
            } else if (com.estrongs.fs.d.a(this.f1293b.f1291a).h(str) || com.estrongs.android.util.ak.K(str) || com.estrongs.android.util.ak.M(str)) {
                this.f1293b.f1291a.d(str);
            } else {
                this.f1293b.f1291a.a((String) null, str);
            }
        } catch (FileSystemException e) {
            e.printStackTrace();
        }
    }
}
