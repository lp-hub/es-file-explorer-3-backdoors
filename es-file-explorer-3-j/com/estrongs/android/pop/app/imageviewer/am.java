package com.estrongs.android.pop.app.imageviewer;

import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.Closeable;
import java.io.FileDescriptor;

/* loaded from: classes.dex */
public class am {
    public static int a(BitmapFactory.Options options, int i, int i2) {
        int b2 = b(options, i, i2);
        if (b2 > 8) {
            return ((b2 + 7) / 8) * 8;
        }
        int i3 = 1;
        while (i3 < b2) {
            i3 <<= 1;
        }
        return i3;
    }

    public static Intent a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        Uri e = eVar.e();
        Intent intent = new Intent("android.intent.action.ATTACH_DATA");
        intent.setDataAndType(e, eVar.j());
        intent.putExtra("mimeType", eVar.j());
        return intent;
    }

    public static Bitmap a(int i, int i2, Uri uri, ContentResolver contentResolver, ParcelFileDescriptor parcelFileDescriptor, BitmapFactory.Options options) {
        Bitmap bitmap = null;
        try {
            if (parcelFileDescriptor == null) {
                parcelFileDescriptor = a(uri, contentResolver);
            }
            if (parcelFileDescriptor != null) {
                if (options == null) {
                    options = new BitmapFactory.Options();
                }
                FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
                options.inJustDecodeBounds = true;
                BitmapManager.a().a(fileDescriptor, options);
                if (!options.mCancel && options.outWidth != -1 && options.outHeight != -1) {
                    options.inSampleSize = a(options, i, i2);
                    options.inJustDecodeBounds = false;
                    options.inDither = false;
                    options.inPurgeable = com.estrongs.android.pop.m.s ? false : true;
                    options.inInputShareable = true;
                    options.inTempStorage = new byte[32768];
                    options.inPreferredConfig = Bitmap.Config.RGB_565;
                    bitmap = BitmapManager.a().a(fileDescriptor, options);
                }
            }
        } catch (Throwable th) {
            if (th instanceof OutOfMemoryError) {
                Log.e("Util", "Got oom exception ", th);
            }
        } finally {
            a(parcelFileDescriptor);
        }
        return bitmap;
    }

    public static Bitmap a(int i, int i2, Uri uri, ContentResolver contentResolver, boolean z) {
        ParcelFileDescriptor parcelFileDescriptor;
        BitmapFactory.Options a2;
        try {
            parcelFileDescriptor = contentResolver.openFileDescriptor(uri, "r");
            if (z) {
                try {
                    a2 = a();
                } catch (Exception e) {
                    a(parcelFileDescriptor);
                    return null;
                } catch (Throwable th) {
                    th = th;
                    a(parcelFileDescriptor);
                    throw th;
                }
            } else {
                a2 = null;
            }
            Bitmap a3 = a(i, i2, uri, contentResolver, parcelFileDescriptor, a2);
            a(parcelFileDescriptor);
            return a3;
        } catch (Exception e2) {
            parcelFileDescriptor = null;
        } catch (Throwable th2) {
            th = th2;
            parcelFileDescriptor = null;
        }
    }

    public static Bitmap a(int i, int i2, ParcelFileDescriptor parcelFileDescriptor, boolean z) {
        return a(i, i2, (Uri) null, (ContentResolver) null, parcelFileDescriptor, z ? a() : null);
    }

    public static Bitmap a(Matrix matrix, Bitmap bitmap, int i, int i2, boolean z, boolean z2) {
        Matrix matrix2;
        int width = bitmap.getWidth() - i;
        int height = bitmap.getHeight() - i2;
        if (!z && (width < 0 || height < 0)) {
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            int max = Math.max(0, width / 2);
            int max2 = Math.max(0, height / 2);
            Rect rect = new Rect(max, max2, Math.min(i, bitmap.getWidth()) + max, Math.min(i2, bitmap.getHeight()) + max2);
            int width2 = (i - rect.width()) / 2;
            int height2 = (i2 - rect.height()) / 2;
            canvas.drawBitmap(bitmap, rect, new Rect(width2, height2, i - width2, i2 - height2), (Paint) null);
            if (z2) {
                bitmap.recycle();
            }
            return createBitmap;
        }
        float width3 = bitmap.getWidth();
        float height3 = bitmap.getHeight();
        if (width3 / height3 > i / i2) {
            float f = i2 / height3;
            if (f < 0.9f || f > 1.0f) {
                matrix.setScale(f, f);
            } else {
                matrix = null;
            }
            matrix2 = matrix;
        } else {
            float f2 = i / width3;
            if (f2 < 0.9f || f2 > 1.0f) {
                matrix.setScale(f2, f2);
                matrix2 = matrix;
            } else {
                matrix2 = null;
            }
        }
        Bitmap createBitmap2 = matrix2 != null ? Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix2, true) : bitmap;
        if (z2 && createBitmap2 != bitmap) {
            bitmap.recycle();
        }
        Bitmap createBitmap3 = Bitmap.createBitmap(createBitmap2, Math.max(0, createBitmap2.getWidth() - i) / 2, Math.max(0, createBitmap2.getHeight() - i2) / 2, i, i2);
        if (createBitmap3 == createBitmap2) {
            return createBitmap3;
        }
        if (!z2 && createBitmap2 == bitmap) {
            return createBitmap3;
        }
        createBitmap2.recycle();
        return createBitmap3;
    }

    public static BitmapFactory.Options a() {
        return new BitmapFactory.Options();
    }

    private static ParcelFileDescriptor a(Uri uri, ContentResolver contentResolver) {
        try {
            return contentResolver.openFileDescriptor(uri, "r");
        } catch (Exception e) {
            return null;
        }
    }

    public static void a(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            return;
        }
        try {
            parcelFileDescriptor.close();
        } catch (Throwable th) {
        }
    }

    public static void a(MonitoredActivity monitoredActivity, String str, String str2, Runnable runnable, Handler handler) {
        new Thread(new an(monitoredActivity, runnable, ProgressDialog.show(monitoredActivity, str, str2, true, false), handler)).start();
    }

    public static void a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th) {
        }
    }

    private static int b(BitmapFactory.Options options, int i, int i2) {
        double d = options.outWidth;
        double d2 = options.outHeight;
        int ceil = i2 == -1 ? 1 : (int) Math.ceil(Math.sqrt((d * d2) / i2));
        int min = i == -1 ? 128 : (int) Math.min(Math.floor(d / i), Math.floor(d2 / i));
        if (min < ceil) {
            return ceil;
        }
        if (i2 == -1 && i == -1) {
            return 1;
        }
        return i != -1 ? min : ceil;
    }
}
