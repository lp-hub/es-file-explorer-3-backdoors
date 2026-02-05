package com.estrongs.android.ui.c;

import android.app.Activity;
import android.view.ViewGroup;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g extends a {
    final /* synthetic */ f i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(f fVar, Activity activity, ViewGroup viewGroup) {
        super(activity, viewGroup);
        this.i = fVar;
    }

    @Override // com.estrongs.android.ui.c.a, com.estrongs.android.view.cq
    protected int a() {
        return C0000R.id.progress_panel;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.c.a
    public String a(com.estrongs.a.a.i iVar) {
        Object obj;
        com.estrongs.a.a aVar;
        com.estrongs.a.a aVar2;
        obj = this.i.l;
        synchronized (obj) {
            aVar = this.i.j;
            if (aVar != null) {
                try {
                    aVar2 = this.i.j;
                    return aVar2.summary().optString("title");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return null;
        }
    }
}
