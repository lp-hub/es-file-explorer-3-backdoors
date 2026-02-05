package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import java.lang.ref.SoftReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bp implements t {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f982a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bu f983b;
    final /* synthetic */ Runnable c;
    final /* synthetic */ ViewImage21 d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(ViewImage21 viewImage21, int i, bu buVar, Runnable runnable) {
        this.d = viewImage21;
        this.f982a = i;
        this.f983b = buVar;
        this.c = runnable;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.t
    public void a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar, Bitmap bitmap) {
        al alVar;
        a aVar;
        if (bitmap == null) {
            alVar = null;
        } else {
            alVar = new al(bitmap, eVar.b());
            aVar = this.d.G;
            aVar.a(eVar, new SoftReference<>(alVar));
        }
        if (this.d.f929a || !eVar.equals(this.d.e.a(this.f982a)) || this.f983b == null) {
            return;
        }
        this.d.f930b.a(new bq(this, eVar, bitmap, alVar));
    }
}
