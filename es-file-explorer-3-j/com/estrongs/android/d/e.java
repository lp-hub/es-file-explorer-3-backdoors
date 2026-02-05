package com.estrongs.android.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.MemoryFile;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.m;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.av;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class e extends a {

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.fs.d f278b;

    public e(Context context) {
        super(context);
        this.f278b = com.estrongs.fs.d.a(context);
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

    private Bitmap a(InputStream inputStream, BitmapFactory.Options options, int i) {
        options.inSampleSize = a(options, i);
        options.inInputShareable = true;
        options.inPurgeable = m.s ? false : true;
        options.inJustDecodeBounds = false;
        options.inDither = false;
        options.inTempStorage = new byte[16384];
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
        return decodeStream == null ? BitmapFactory.decodeResource(this.f274a.getResources(), C0000R.drawable.format_picture_broken) : decodeStream;
    }

    private MemoryFile a(String str) {
        InputStream inputStream;
        int i;
        int i2 = 0;
        InputStream inputStream2 = null;
        try {
            if (ak.aO(str)) {
                i = (int) new File(str).length();
            } else {
                com.estrongs.fs.c c = this.f278b.c(str);
                i = c != null ? (int) c.e : -1;
            }
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        if (i <= 0) {
            com.estrongs.fs.c.d.a((Closeable) null);
            return null;
        }
        MemoryFile memoryFile = new MemoryFile(str, i);
        byte[] bArr = new byte[8192];
        inputStream = this.f278b.e(str);
        try {
            try {
                if (!(inputStream instanceof BufferedInputStream)) {
                    inputStream = new BufferedInputStream(inputStream, 8192);
                }
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                com.estrongs.fs.c.d.a(inputStream);
                memoryFile = null;
                return memoryFile;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream2 = inputStream;
            com.estrongs.fs.c.d.a(inputStream2);
            throw th;
        }
        try {
            for (int read = inputStream.read(bArr); read > 0; read = inputStream.read(bArr)) {
                memoryFile.writeBytes(bArr, 0, i2, read);
                i2 += read;
            }
            com.estrongs.fs.c.d.a(inputStream);
            return memoryFile;
        } catch (Throwable th4) {
            th = th4;
            inputStream2 = inputStream;
            com.estrongs.fs.c.d.a(inputStream2);
            throw th;
        }
    }

    @Override // com.estrongs.android.d.a
    protected String a() {
        File file = new File(b(), ".thumbnails");
        if (!file.exists() && !file.mkdirs()) {
            File file2 = new File(this.f274a.getCacheDir(), ".thumbnails");
            if (!file2.exists()) {
                file2.mkdirs();
            }
            return file2.getAbsolutePath();
        }
        return file.getAbsolutePath();
    }

    @Override // com.estrongs.android.d.a
    protected Bitmap c(com.estrongs.fs.g gVar) {
        MemoryFile memoryFile;
        InputStream inputStream;
        Throwable th;
        Bitmap bitmap = null;
        String absolutePath = gVar.getAbsolutePath();
        try {
            inputStream = this.f278b.k(absolutePath);
            try {
                if (inputStream != null) {
                    inputStream = new BufferedInputStream(inputStream);
                    memoryFile = null;
                } else {
                    memoryFile = a(absolutePath);
                    if (memoryFile != null) {
                        try {
                            inputStream = memoryFile.getInputStream();
                        } catch (Throwable th2) {
                            th = th2;
                            com.estrongs.fs.c.d.a(inputStream);
                            if (memoryFile != null) {
                                memoryFile.close();
                            }
                            throw th;
                        }
                    }
                }
                if (inputStream == null) {
                    inputStream = this.f278b.e(absolutePath);
                }
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                if (inputStream.markSupported()) {
                    inputStream.mark(Integer.MAX_VALUE);
                }
                BitmapFactory.decodeStream(inputStream, null, options);
                try {
                    inputStream.reset();
                } catch (IOException e) {
                    com.estrongs.fs.c.d.a(inputStream);
                    inputStream = this.f278b.k(absolutePath);
                    if (inputStream == null) {
                        inputStream = this.f278b.e(absolutePath);
                    }
                }
                bitmap = a(inputStream, options, d.h(gVar));
                com.estrongs.fs.c.d.a(inputStream);
                if (memoryFile != null) {
                    memoryFile.close();
                }
            } catch (Throwable th3) {
                memoryFile = null;
            }
        } catch (Throwable th4) {
            memoryFile = null;
            inputStream = null;
        }
        return bitmap;
    }

    @Override // com.estrongs.android.d.h
    public String[] d() {
        return av.g();
    }

    @Override // com.estrongs.android.d.a
    protected Bitmap.CompressFormat f(com.estrongs.fs.g gVar) {
        return av.d(gVar.getAbsolutePath()) ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }
}
