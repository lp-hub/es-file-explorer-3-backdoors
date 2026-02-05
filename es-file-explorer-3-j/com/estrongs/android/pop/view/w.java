package com.estrongs.android.pop.view;

import com.estrongs.android.pop.C0000R;
import com.estrongs.fs.FileSystemException;

/* loaded from: classes.dex */
class w implements dm {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.g.a f1482a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ v f1483b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(v vVar, com.estrongs.android.ui.g.a aVar) {
        this.f1483b = vVar;
        this.f1482a = aVar;
    }

    @Override // com.estrongs.android.pop.view.dm
    public void a(String str, boolean z) {
        this.f1482a.g();
        if (z) {
            return;
        }
        try {
            if (com.estrongs.android.util.ak.aP(str) || com.estrongs.android.util.ak.O(str) || com.estrongs.android.util.ak.Q(str) || com.estrongs.android.util.ak.au(str) || com.estrongs.android.util.ak.L(str) || com.estrongs.android.util.ak.aC(str) || com.estrongs.android.util.ak.s(str)) {
                this.f1483b.f1481a.d(str);
            } else if (!com.estrongs.fs.d.a(this.f1483b.f1481a).b(str)) {
                this.f1483b.f1481a.a(C0000R.string.message_invalid_path);
            } else if (com.estrongs.fs.d.a(this.f1483b.f1481a).h(str) || com.estrongs.android.util.ak.K(str) || com.estrongs.android.util.ak.M(str)) {
                this.f1483b.f1481a.d(str);
            } else {
                this.f1483b.f1481a.a((String) null, str);
            }
        } catch (FileSystemException e) {
            e.printStackTrace();
        }
    }
}
