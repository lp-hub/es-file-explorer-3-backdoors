package com.estrongs.android.view;

import android.view.View;
import com.estrongs.android.pop.C0000R;
import java.util.List;

/* loaded from: classes.dex */
class cc implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f2800a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bu f2801b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc(bu buVar, List list) {
        this.f2801b = buVar;
        this.f2800a = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        z = this.f2801b.ah;
        if (!z && this.f2800a.size() == 0) {
            this.f2801b.f(C0000R.string.folder_empty);
        }
        View l = this.f2801b.l(C0000R.id.grid_footer);
        if (l != null) {
            l.setVisibility(8);
        }
    }
}
