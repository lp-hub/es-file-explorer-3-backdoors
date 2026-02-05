package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bo extends com.estrongs.android.b.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bu f980a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f981b;
    final /* synthetic */ ViewImage21 c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bo(ViewImage21 viewImage21, String str, bu buVar, int i) {
        super(str);
        this.c = viewImage21;
        this.f980a = buVar;
        this.f981b = i;
    }

    @Override // com.estrongs.android.b.a
    public void a(com.estrongs.android.b.a aVar, Bitmap bitmap) {
        try {
            this.f980a.a(this.c.e.a(this.f981b), new al(bitmap, this.c.g.h.a()));
        } catch (Exception e) {
            e.printStackTrace();
            aVar.stop();
        }
    }
}
