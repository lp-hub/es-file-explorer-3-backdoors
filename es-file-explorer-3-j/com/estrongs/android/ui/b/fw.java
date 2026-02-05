package com.estrongs.android.ui.b;

import android.os.Handler;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fw implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ fr f1837a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fw(fr frVar) {
        this.f1837a = frVar;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        boolean z;
        Handler handler;
        boolean z2;
        Handler handler2;
        if (i2 == 4) {
            try {
                String a2 = this.f1837a.a();
                if (!com.estrongs.android.util.aw.a((CharSequence) a2)) {
                    handler = this.f1837a.k;
                    handler.post(new fx(this, a2));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            z = this.f1837a.f1829b;
            if (!z) {
                this.f1837a.dismiss();
            }
            this.f1837a.a(aVar);
            return;
        }
        if (i2 == 5) {
            String a3 = this.f1837a.a(aVar.getTaskResult());
            if (a3 != null) {
                this.f1837a.b(aVar);
            } else {
                a3 = this.f1837a.b();
            }
            if (!com.estrongs.android.util.aw.a((CharSequence) a3)) {
                if (aVar.getTaskResult().f229a == 9) {
                    handler2 = this.f1837a.k;
                    handler2.post(new fy(this, aVar));
                } else {
                    if (aVar.getTaskResult().f229a == 10) {
                        a3 = this.f1837a.getContext().getString(C0000R.string.copy_subdirectory);
                    } else if (aVar.getTaskResult().f229a == 11) {
                        a3 = this.f1837a.getContext().getString(C0000R.string.move_subdirectory);
                    }
                    this.f1837a.a(a3);
                }
            }
            z2 = this.f1837a.f1829b;
            if (z2) {
                return;
            }
            this.f1837a.dismiss();
        }
    }
}
