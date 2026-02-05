package com.estrongs.android.ui.f;

import android.content.Context;
import com.estrongs.android.ui.e.gq;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m extends gq {
    final /* synthetic */ f g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(f fVar, Context context, boolean z) {
        super(context, z);
        this.g = fVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.e.a
    public boolean b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.e.a
    public void c() {
        if (this.g.a()) {
            this.g.a(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.e.a
    public void d() {
        super.d();
    }
}
