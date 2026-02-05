package com.estrongs.android.widget;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bl implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ TranslateImageView f2909a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bl(TranslateImageView translateImageView) {
        this.f2909a = translateImageView;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        bn bnVar;
        int i2;
        bm bmVar;
        bm bmVar2;
        bn bnVar2;
        int i3;
        int i4;
        if (this.f2909a.isShown()) {
            i3 = this.f2909a.d;
            i4 = this.f2909a.e;
            if (i3 != i4) {
                this.f2909a.postInvalidate();
                return;
            }
        }
        TranslateImageView translateImageView = this.f2909a;
        i = this.f2909a.d;
        translateImageView.c = i;
        this.f2909a.k = false;
        bnVar = this.f2909a.h;
        if (bnVar != null) {
            bnVar2 = this.f2909a.h;
            bnVar2.a();
            this.f2909a.h = null;
        }
        i2 = this.f2909a.e;
        if (i2 == 0) {
            bmVar = this.f2909a.i;
            if (bmVar != null) {
                bmVar2 = this.f2909a.i;
                bmVar2.a();
            }
        }
    }
}
