package com.estrongs.android.pop;

import android.app.Activity;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.util.ak;

/* loaded from: classes.dex */
public class g implements com.estrongs.a.a.a {

    /* renamed from: a, reason: collision with root package name */
    private Activity f1149a;

    public g(Activity activity) {
        a(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ag a(com.estrongs.a.a aVar, com.estrongs.a.a.e eVar) {
        if (eVar.c.getFileType().a() || ak.aP(eVar.d.getPath())) {
            return new com.estrongs.android.a.e(this.f1149a, new k(this, eVar, aVar), true);
        }
        return new com.estrongs.android.a.i(this.f1149a, eVar.c, eVar.d, new l(this, eVar, aVar), true, aVar instanceof com.estrongs.fs.b.i ? ((com.estrongs.fs.b.i) aVar).e() : true);
    }

    public void a(Activity activity) {
        this.f1149a = activity;
    }

    @Override // com.estrongs.a.a.a
    public void a(com.estrongs.a.a aVar, com.estrongs.a.a.c cVar) {
        this.f1149a.runOnUiThread(new h(this, cVar, aVar));
    }
}
