package com.estrongs.android.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.MemoryFile;
import com.estrongs.android.pop.C0000R;
import com.estrongs.fs.FileSystemException;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class f {
    private static f e;

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.fs.d f279a;

    /* renamed from: b, reason: collision with root package name */
    private Context f280b;
    private String c = null;
    private String d = null;

    protected f(Context context) {
        this.f280b = context;
        a();
        b();
        this.f279a = com.estrongs.fs.d.a(context);
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

    private Bitmap a(String str, BitmapFactory.Options options, int i, InputStream inputStream) {
        MemoryFile c = c(str, inputStream);
        InputStream inputStream2 = c != null ? c.getInputStream() : b(str);
        if (inputStream2 == null) {
            return null;
        }
        if (inputStream2.markSupported()) {
            inputStream2.mark(Integer.MAX_VALUE);
        }
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream2, null, options);
        if (inputStream2.markSupported()) {
            try {
                inputStream2.reset();
            } catch (IOException e2) {
                e2.printStackTrace();
                try {
                    inputStream2.close();
                } catch (IOException e3) {
                }
                inputStream2 = b(str);
            }
        } else {
            try {
                inputStream2.close();
            } catch (IOException e4) {
            }
            inputStream2 = b(str);
        }
        options.inSampleSize = a(options, i);
        options.inJustDecodeBounds = false;
        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream2, null, options);
        if (inputStream2 != null) {
            try {
                inputStream2.close();
            } catch (IOException e5) {
            }
        }
        if (c != null) {
            c.close();
        }
        return decodeStream == null ? BitmapFactory.decodeResource(this.f280b.getResources(), C0000R.drawable.format_picture_broken) : decodeStream;
    }

    public static f a(Context context) {
        if (e == null) {
            if (context == null) {
                return null;
            }
            e = new f(context);
        }
        return e;
    }

    private String a(String str) {
        return this.c + "/" + str.hashCode();
    }

    private void a() {
        File file = new File(this.f280b.getCacheDir(), ".thumbnails");
        if (!file.exists()) {
            file.mkdirs();
        }
        this.c = file.getAbsolutePath();
    }

    private void a(Bitmap bitmap, OutputStream outputStream) {
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
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, max, max2, matrix, true);
            if (createBitmap != null) {
                if (createBitmap != bitmap) {
                }
                createBitmap.compress(Bitmap.CompressFormat.PNG, 75, outputStream);
                createBitmap.recycle();
            }
        } catch (IllegalArgumentException e2) {
        } catch (OutOfMemoryError e3) {
            e3.printStackTrace();
        }
    }

    private InputStream b(String str) {
        return this.f279a.e(str);
    }

    private void b() {
        File file = new File(this.f280b.getCacheDir(), ".apps");
        if (!file.exists()) {
            file.mkdirs();
        }
        this.d = file.getAbsolutePath();
    }

    private MemoryFile c(String str, InputStream inputStream) {
        MemoryFile memoryFile;
        int i = 0;
        try {
            com.estrongs.fs.c c = this.f279a.c(str);
            if (c == null) {
                throw new IOException();
            }
            if (c.e > 0) {
                memoryFile = new MemoryFile(str, (int) c.e);
                byte[] bArr = new byte[8192];
                if (inputStream == null) {
                    inputStream = this.f279a.e(str);
                }
                if (!(inputStream instanceof BufferedInputStream)) {
                    inputStream = new BufferedInputStream(inputStream, 8192);
                }
                for (int read = inputStream.read(bArr); read > 0; read = inputStream.read(bArr)) {
                    memoryFile.writeBytes(bArr, 0, i, read);
                    i += read;
                }
                inputStream.close();
            } else {
                memoryFile = null;
            }
            return memoryFile;
        } catch (Throwable th) {
            th.printStackTrace();
            try {
                inputStream.close();
                return null;
            } catch (Exception e2) {
                return null;
            }
        }
    }

    public Bitmap a(int i, String str, BitmapFactory.Options options) {
        return a(i, str, options, (InputStream) null);
    }

    public Bitmap a(int i, String str, BitmapFactory.Options options, InputStream inputStream) {
        Bitmap bitmap = null;
        if (options == null) {
            options = new BitmapFactory.Options();
        }
        try {
            bitmap = a(str, options, i, inputStream);
        } catch (FileSystemException e2) {
        } catch (OutOfMemoryError e3) {
        } finally {
            com.estrongs.fs.c.d.a(inputStream);
        }
        return bitmap;
    }

    public void a(String str, InputStream inputStream) {
        File file = new File(a(str));
        if (file.exists()) {
            return;
        }
        if (!file.getParentFile().exists()) {
            a();
        }
        b(str, inputStream);
    }

    public void b(String str, InputStream inputStream) {
        String a2 = a(str);
        try {
            Bitmap a3 = a(64, str, (BitmapFactory.Options) null, inputStream);
            if (a3 != null) {
                FileOutputStream fileOutputStream = new FileOutputStream(a2);
                a(a3, fileOutputStream);
                fileOutputStream.close();
                d.a(str, (Drawable) new BitmapDrawable(a3), false);
            }
        } catch (FileNotFoundException e2) {
        } catch (IOException e3) {
        }
    }
}
