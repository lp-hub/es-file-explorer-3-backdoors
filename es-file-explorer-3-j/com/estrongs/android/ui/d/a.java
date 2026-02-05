package com.estrongs.android.ui.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.imageviewer.am;
import com.estrongs.fs.g;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static int f1925a;

    /* renamed from: b, reason: collision with root package name */
    public static int f1926b;
    public static int c;
    public static int d;
    public static int e;

    public static int a(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static Bitmap a(Bitmap bitmap, int i) {
        if (bitmap == null) {
            return null;
        }
        return i != bitmap.getWidth() ? Bitmap.createScaledBitmap(bitmap, i, (int) ((i / bitmap.getWidth()) * bitmap.getHeight()), true) : bitmap;
    }

    public static Bitmap a(Bitmap bitmap, Bitmap bitmap2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        canvas.drawBitmap(bitmap2, 0.0f, 0.0f, (Paint) null);
        createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
    }

    public static Bitmap a(Bitmap bitmap, boolean z) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = c;
        int i2 = c;
        float min = Math.min(height / i2, width / i);
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (width / min), (int) (height / min), true);
        Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap, 0, 0, i, i2);
        bitmap.recycle();
        createScaledBitmap.recycle();
        return createBitmap;
    }

    public static Bitmap a(BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
        return a(bitmapDrawable.getBitmap(), bitmapDrawable2.getBitmap());
    }

    public static Bitmap a(View view) {
        if (!view.isDrawingCacheEnabled()) {
            view.setDrawingCacheEnabled(true);
        }
        try {
            view.setWillNotCacheDrawing(false);
            view.setDrawingCacheQuality(1048576);
            view.destroyDrawingCache();
            view.buildDrawingCache();
            return view.getDrawingCache();
        } catch (Throwable th) {
            Log.w("ImageUtils", "getViewDrawingCache() catchs " + th.getMessage());
            return null;
        }
    }

    public static BitmapFactory.Options a(String str) {
        try {
            InputStream e2 = com.estrongs.fs.d.a().e(str);
            if (e2 == null) {
                return new BitmapFactory.Options();
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(e2, null, options);
            am.a(e2);
            return options;
        } catch (Exception e3) {
            return new BitmapFactory.Options();
        }
    }

    public static String a(Context context, g gVar) {
        BitmapFactory.Options a2 = a(gVar.getAbsolutePath());
        int i = a2.outWidth;
        int i2 = a2.outHeight;
        return (i <= 0 || i2 <= 0) ? context.getString(C0000R.string.property_na) : String.format(context.getString(C0000R.string.details_dimension_x), Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static String a(Point point) {
        return "(" + point.x + "," + point.y + ")";
    }

    public static void a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        d = displayMetrics.widthPixels;
        e = displayMetrics.heightPixels;
        f1925a = d / 5;
        f1926b = e / 5;
        if (d == 240 && e == 320) {
            c = (int) Math.min(d / 6.5d, e / 6.5d);
            return;
        }
        if (d == 320 && e == 480) {
            c = Math.min(d / 5, e / 5);
            return;
        }
        if (d == 480 && e == 800) {
            c = (int) Math.min(d / 4.5f, e / 4.5f);
            return;
        }
        if (d == 640 && e == 960) {
            c = Math.min(d / 5, e / 5);
        } else if (d == 720 && e == 1280) {
            c = (int) Math.min(d / 4.5f, e / 4.5f);
        } else {
            c = (int) Math.min(d / 4.5f, (e - context.getResources().getDimension(C0000R.dimen.bottom_menu_basic_height)) / 4.5f);
        }
    }

    public static Point b(String str) {
        Point point = new Point();
        try {
            String[] split = str.substring(1, str.length() - 1).split(",");
            point.set(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
            return point;
        } catch (Exception e2) {
            throw new IllegalArgumentException("Illegal point string : " + str);
        }
    }
}
