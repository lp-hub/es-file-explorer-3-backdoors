package com.estrongs.android.pop.app.imageviewer.gallery;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.estrongs.android.pop.app.imageviewer.BitmapManager;
import com.estrongs.android.pop.app.imageviewer.am;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class j implements e {

    /* renamed from: a, reason: collision with root package name */
    private final Uri f1011a;

    /* renamed from: b, reason: collision with root package name */
    private final f f1012b;
    private final ContentResolver c;
    private long d;
    private int e;

    public j(f fVar, ContentResolver contentResolver, Uri uri) {
        this(fVar, contentResolver, uri, 0L);
    }

    public j(f fVar, ContentResolver contentResolver, Uri uri, long j) {
        this.e = 0;
        this.f1012b = fVar;
        this.c = contentResolver;
        this.f1011a = uri;
        this.d = j;
    }

    private InputStream a() {
        try {
            return this.f1011a.getScheme().equals("file") ? new FileInputStream(this.f1011a.getPath()) : this.c.openInputStream(this.f1011a);
        } catch (FileNotFoundException e) {
            return null;
        }
    }

    private ParcelFileDescriptor c() {
        try {
            return this.f1011a.getScheme().equals("file") ? ParcelFileDescriptor.open(new File(this.f1011a.getPath()), 268435456) : this.c.openFileDescriptor(this.f1011a, "r");
        } catch (FileNotFoundException e) {
            return null;
        }
    }

    private BitmapFactory.Options i() {
        ParcelFileDescriptor c = c();
        if (c == null) {
            return null;
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapManager.a().a(c.getFileDescriptor(), options);
            return options;
        } finally {
            am.a(c);
        }
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public Bitmap a(int i, int i2) {
        return a(i, i2, true, false);
    }

    public Bitmap a(int i, int i2, boolean z) {
        return a(i, i2, z, false);
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public Bitmap a(int i, int i2, boolean z, boolean z2) {
        try {
            return am.a(i, i2, c(), z2);
        } catch (Exception e) {
            Log.e("UriImage", "got exception decoding bitmap ", e);
            return null;
        }
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public Bitmap a(boolean z) {
        return a(320, 96000, z);
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public int b() {
        return this.e;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public String d() {
        return this.f1011a.getPath();
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public Uri e() {
        return this.f1011a;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public InputStream f() {
        return a();
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public Bitmap g() {
        return a(96, 9604, true);
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public String h() {
        return this.f1011a.getLastPathSegment();
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public String j() {
        BitmapFactory.Options i = i();
        return (i == null || i.outMimeType == null) ? "" : i.outMimeType;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public int k() {
        BitmapFactory.Options i = i();
        if (i != null) {
            return i.outHeight;
        }
        return 0;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public int l() {
        BitmapFactory.Options i = i();
        if (i != null) {
            return i.outWidth;
        }
        return 0;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public long n() {
        return this.d;
    }
}
