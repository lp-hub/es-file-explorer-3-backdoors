package com.estrongs.android.a;

import com.estrongs.android.ui.b.de;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class v implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        de deVar;
        de deVar2;
        deVar = t.f253b;
        if (deVar != null) {
            try {
                deVar2 = t.f253b;
                deVar2.dismiss();
            } catch (Exception e) {
            } finally {
                de unused = t.f253b = null;
                boolean unused2 = t.c = false;
            }
        }
    }
}
