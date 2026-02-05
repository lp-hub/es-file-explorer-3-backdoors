package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
class at extends r {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f953a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public at(ViewImage21 viewImage21, String str) {
        super(str);
        this.f953a = viewImage21;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.r
    public Bitmap a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        return eVar.a(800, 3145728, false, true);
    }
}
