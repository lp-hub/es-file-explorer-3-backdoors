package com.estrongs.android.pop.app;

import android.content.Intent;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class cg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f561a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f562b;
    final /* synthetic */ cf c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cg(cf cfVar, boolean z, String str) {
        this.c = cfVar;
        this.f561a = z;
        this.f562b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        if (this.f561a) {
            z = this.c.f560b.d;
            if (z) {
                this.c.f560b.setResult(-1);
            } else {
                Intent intent = this.c.f560b.getIntent();
                intent.setClass(this.c.f560b, ImageCommentActivity.class);
                this.c.f560b.startActivity(intent);
            }
            this.c.f560b.finish();
        } else {
            this.c.f560b.findViewById(C0000R.id.post_progress).setVisibility(8);
            this.c.f560b.findViewById(C0000R.id.editor_panel).setVisibility(0);
        }
        com.estrongs.android.ui.view.z.a(this.c.f560b, this.f562b, 1).show();
    }
}
