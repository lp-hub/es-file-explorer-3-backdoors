package com.estrongs.android.pop.app.imageviewer;

/* loaded from: classes.dex */
class ar implements com.estrongs.android.widget.av {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f950a;

    /* renamed from: b, reason: collision with root package name */
    private int f951b = 2;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(ViewImage21 viewImage21) {
        this.f950a = viewImage21;
    }

    @Override // com.estrongs.android.widget.av
    public void a(int i) {
    }

    @Override // com.estrongs.android.widget.av
    public void a(int i, float f) {
    }

    @Override // com.estrongs.android.widget.av
    public void b(int i) {
    }

    @Override // com.estrongs.android.widget.av
    public void c(int i) {
        boolean z;
        ESGallery eSGallery;
        int i2 = this.f950a.c % 3;
        if (i2 <= 0 || i2 != i) {
            int i3 = i - i2;
            int i4 = 0;
            if ((i3 > 0 && i3 != this.f951b) || i3 == (-this.f951b)) {
                i4 = this.f950a.c + 1;
            } else if ((i3 < 0 && i3 != (-this.f951b)) || i3 == this.f951b) {
                i4 = this.f950a.c - 1;
            }
            if (i4 < 0 || i4 >= this.f950a.e.b()) {
                return;
            }
            ViewImage21 viewImage21 = this.f950a;
            z = this.f950a.t;
            viewImage21.a(i4, z);
            eSGallery = this.f950a.y;
            eSGallery.setSelection(i4);
        }
    }

    @Override // com.estrongs.android.widget.av
    public void d(int i) {
    }
}
