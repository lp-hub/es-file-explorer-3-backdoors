package com.estrongs.android.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.estrongs.android.pop.m;
import java.io.File;
import java.io.FileOutputStream;

/* loaded from: classes.dex */
public abstract class a implements h {

    /* renamed from: a, reason: collision with root package name */
    protected Context f274a;

    /* renamed from: b, reason: collision with root package name */
    private String f275b = a();

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Context context) {
        this.f274a = context;
    }

    private void a(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat) {
        if (bitmap == null) {
            return;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int max = Math.max(1, width);
        int max2 = Math.max(1, height);
        float f = bitmap.getWidth() < bitmap.getHeight() ? 48.0f / max : 48.0f / max2;
        Matrix matrix = new Matrix();
        matrix.setScale(f, f);
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(str);
            try {
                Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, max, max2, matrix, true);
                bitmap.compress(compressFormat, c(), fileOutputStream2);
                if (createBitmap != bitmap) {
                    createBitmap.recycle();
                }
                com.estrongs.fs.c.d.a(fileOutputStream2);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                com.estrongs.fs.c.d.a(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private Drawable h(com.estrongs.fs.g gVar) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inInputShareable = true;
            options.inPurgeable = m.s ? false : true;
            options.inJustDecodeBounds = false;
            options.inDither = false;
            options.inTempStorage = new byte[16384];
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            Bitmap decodeFile = BitmapFactory.decodeFile(d(gVar).getAbsolutePath(), options);
            if (decodeFile == null) {
                return null;
            }
            return new BitmapDrawable(decodeFile);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // com.estrongs.android.d.h
    public Drawable a(com.estrongs.fs.g gVar) {
        if (!b(gVar)) {
            return null;
        }
        File d = d(gVar);
        synchronized (gVar) {
            if (!d.exists()) {
                Bitmap c = c(gVar);
                if (c == null) {
                    return null;
                }
                try {
                    a(c, d.getAbsolutePath(), f(gVar));
                } catch (Throwable th) {
                }
                if (!c.isRecycled()) {
                    return new BitmapDrawable(c);
                }
            }
            return h(gVar);
        }
    }

    protected abstract String a();

    /* JADX INFO: Access modifiers changed from: protected */
    public File b() {
        return new File(com.estrongs.android.pop.a.f327a);
    }

    protected boolean b(com.estrongs.fs.g gVar) {
        return true;
    }

    protected int c() {
        return 50;
    }

    protected abstract Bitmap c(com.estrongs.fs.g gVar);

    protected File d(com.estrongs.fs.g gVar) {
        return new File(e(gVar));
    }

    protected String e(com.estrongs.fs.g gVar) {
        return this.f275b + "/" + d.f(gVar);
    }

    protected Bitmap.CompressFormat f(com.estrongs.fs.g gVar) {
        return Bitmap.CompressFormat.JPEG;
    }

    @Override // com.estrongs.android.d.h
    public boolean g(com.estrongs.fs.g gVar) {
        return com.estrongs.fs.impl.local.d.a(e(gVar));
    }
}
