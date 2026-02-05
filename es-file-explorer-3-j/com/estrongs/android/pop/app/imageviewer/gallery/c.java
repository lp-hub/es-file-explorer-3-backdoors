package com.estrongs.android.pop.app.imageviewer.gallery;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.estrongs.android.pop.app.imageviewer.am;
import com.estrongs.android.pop.m;
import com.estrongs.android.util.ak;
import com.estrongs.fs.FileSystemException;
import java.io.File;
import java.io.InputStream;

/* loaded from: classes.dex */
public class c implements e {

    /* renamed from: a, reason: collision with root package name */
    private final Uri f1002a;

    /* renamed from: b, reason: collision with root package name */
    private final f f1003b;
    private com.estrongs.fs.d c;
    private com.estrongs.fs.c d;
    private BitmapFactory.Options e;
    private int f;
    private com.estrongs.fs.g g;

    public c(f fVar, com.estrongs.fs.d dVar, com.estrongs.fs.g gVar) {
        this(fVar, dVar, gVar.getAbsolutePath());
        this.g = gVar;
    }

    public c(f fVar, com.estrongs.fs.d dVar, String str) {
        this.f = 0;
        this.g = null;
        this.f1003b = fVar;
        this.c = dVar;
        if (!ak.aO(str) || str.startsWith("file://")) {
            this.f1002a = Uri.parse(str);
        } else {
            this.f1002a = Uri.fromFile(new File(str));
        }
    }

    private static int a(BitmapFactory.Options options, int i) {
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        int max = Math.max(i2 / i, i3 / i);
        if (max <= 1) {
            return 1;
        }
        if (max > 1 && i2 > i && i2 / max < i) {
            max--;
        }
        if (max > 1 && i3 > i && i3 / max < i) {
            max--;
        }
        if (max > 1) {
            return max;
        }
        return 1;
    }

    private BitmapFactory.Options a(InputStream inputStream) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        return options;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0038 -> B:5:0x001d). Please report as a decompilation issue!!! */
    private ParcelFileDescriptor p() {
        ParcelFileDescriptor parcelFileDescriptor;
        File q;
        if (ak.aO(this.f1002a.toString())) {
            parcelFileDescriptor = ParcelFileDescriptor.open(new File(this.f1002a.getPath()), 268435456);
        } else {
            if (ak.aP(this.f1002a.toString()) && (q = q()) != null) {
                parcelFileDescriptor = ParcelFileDescriptor.open(q, 268435456);
            }
            parcelFileDescriptor = null;
        }
        return parcelFileDescriptor;
    }

    private File q() {
        File file = new File(com.estrongs.android.pop.a.c + "/remoteimg");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, d().hashCode() + "-" + r() + "." + com.estrongs.fs.c.d.b(d()));
        if (!file2.exists()) {
            InputStream inputStream = null;
            try {
                inputStream = this.c.e(d());
                com.estrongs.fs.c.d.a(inputStream, file2);
            } catch (Exception e) {
                file2.delete();
                e.printStackTrace();
            } finally {
                com.estrongs.fs.c.d.a(inputStream);
            }
        }
        return file2;
    }

    private long r() {
        if (this.g == null) {
            this.g = this.c.a(d(), false, true);
        }
        if (this.g != null) {
            return this.g.lastModified();
        }
        return 0L;
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
        InputStream inputStream;
        Bitmap bitmap;
        ParcelFileDescriptor p = p();
        if (p != null) {
            try {
                return am.a(i, i2, p, z2);
            } catch (Exception e) {
                Log.e("ESFileImage", "got exception decoding bitmap ", e);
                return null;
            }
        }
        try {
            inputStream = this.c.e(d());
        } catch (FileSystemException e2) {
            e2.printStackTrace();
            inputStream = null;
        }
        if (inputStream == null) {
            return null;
        }
        if (this.e == null) {
            this.e = a(inputStream);
            com.estrongs.fs.c.d.a(inputStream);
            try {
                inputStream = this.c.e(d());
            } catch (FileSystemException e3) {
                e3.printStackTrace();
            }
        }
        ak.H(d());
        ak.aJ(d());
        this.e.inSampleSize = a(this.e, 800);
        this.e.inJustDecodeBounds = false;
        this.e.inPurgeable = m.s ? false : true;
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, this.e);
            com.estrongs.fs.c.d.a(inputStream);
            bitmap = decodeStream;
        } catch (OutOfMemoryError e4) {
            com.estrongs.fs.c.d.a(inputStream);
            bitmap = null;
        } catch (Throwable th) {
            com.estrongs.fs.c.d.a(inputStream);
            throw th;
        }
        return bitmap;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public Bitmap a(boolean z) {
        return a(320, 96000, z);
    }

    public com.estrongs.fs.g a() {
        return this.g;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public int b() {
        return this.f;
    }

    public String c() {
        return ak.C(d());
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public String d() {
        return "file".equalsIgnoreCase(this.f1002a.getScheme()) ? this.f1002a.getPath() : this.f1002a.toString();
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public Uri e() {
        return this.f1002a;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public InputStream f() {
        try {
            return this.c.e(d());
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public Bitmap g() {
        return a(true);
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public String h() {
        return Uri.decode(this.f1002a.getLastPathSegment());
    }

    public BitmapFactory.Options i() {
        if (this.e == null) {
            try {
                InputStream e = this.c.e(d());
                if (e == null) {
                    return new BitmapFactory.Options();
                }
                this.e = a(e);
                am.a(e);
            } catch (Exception e2) {
                return new BitmapFactory.Options();
            }
        }
        return this.e;
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

    public long m() {
        o();
        return this.d.e;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.e
    public long n() {
        o();
        return this.d.j;
    }

    public void o() {
        if (this.d == null || this.d.j == 0) {
            try {
                this.d = this.c.c(d());
            } catch (FileSystemException e) {
                e.printStackTrace();
            }
        }
        if (this.d == null) {
            this.d = new com.estrongs.fs.c(null);
        }
    }
}
