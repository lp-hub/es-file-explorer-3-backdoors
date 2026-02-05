package com.estrongs.android.ui.a;

import com.baidu.sapi2.callback.LoginCallBack;
import java.util.List;

/* loaded from: classes.dex */
public class cg extends com.estrongs.android.util.ay {
    private com.estrongs.android.ui.h.c g;
    private int h = LoginCallBack.REQUEST_LOGINPROTECT;

    public cg(com.estrongs.android.ui.h.a aVar) {
        a(aVar);
    }

    public com.estrongs.android.ui.h.c a(com.estrongs.android.ui.h.a aVar) {
        try {
            if (this.g != null) {
                return this.g;
            }
            if (this.h == 1000) {
                List<String> a2 = com.estrongs.android.util.ak.a();
                String b2 = com.estrongs.android.pop.b.b();
                if (a2.remove(b2)) {
                    a2.add(0, b2);
                }
                long[] k = com.estrongs.fs.c.d.k(a2.get(0));
                if (k[1] == -1 || k[0] == -1) {
                    throw new IllegalStateException("illegal storage size!");
                }
                this.h = (int) ((k[1] * 100) / k[0]);
            }
            this.g = aVar.a(this.h);
            return this.g;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void b(com.estrongs.android.ui.h.a aVar) {
        this.g = null;
        this.g = a(aVar);
    }
}
