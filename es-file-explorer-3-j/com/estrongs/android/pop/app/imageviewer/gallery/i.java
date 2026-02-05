package com.estrongs.android.pop.app.imageviewer.gallery;

import android.content.ContentResolver;
import android.net.Uri;

/* loaded from: classes.dex */
public class i implements f {

    /* renamed from: a, reason: collision with root package name */
    private e f1009a;

    /* renamed from: b, reason: collision with root package name */
    private Uri f1010b;

    public i(ContentResolver contentResolver, Uri uri) {
        this.f1010b = uri;
        this.f1009a = new j(this, contentResolver, uri);
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public int a(e eVar) {
        return eVar == this.f1009a ? 0 : -1;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public e a(int i) {
        if (i == 0) {
            return this.f1009a;
        }
        return null;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public e a(Uri uri) {
        if (uri.equals(this.f1010b)) {
            return this.f1009a;
        }
        return null;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public void a() {
        this.f1009a = null;
        this.f1010b = null;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public int b() {
        return 1;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public boolean b(int i) {
        return false;
    }
}
