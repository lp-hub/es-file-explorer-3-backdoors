package com.estrongs.android.ui.guesture;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.gesture.Gesture;
import android.gesture.GestureStroke;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.ak;

/* loaded from: classes.dex */
public class d {
    public static Bitmap a(Gesture gesture, int i, int i2, int i3, int i4) {
        try {
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setDither(true);
            paint.setColor(i4);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeJoin(Paint.Join.ROUND);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeWidth(8.0f);
            Path path = gesture.toPath();
            RectF rectF = new RectF();
            path.computeBounds(rectF, true);
            float width = (i - (i3 * 2)) / rectF.width();
            float height = (i2 - (i3 * 2)) / rectF.height();
            if (width > height) {
                width = height;
            }
            paint.setStrokeWidth(8.0f / width);
            path.offset((-rectF.left) + ((i - (rectF.width() * width)) / 2.0f), (-rectF.top) + ((i2 - (rectF.height() * width)) / 2.0f));
            canvas.translate(i3, i3);
            canvas.scale(width, width);
            canvas.drawPath(path, paint);
            GestureStroke gestureStroke = gesture.getStrokes().get(0);
            PointF pointF = new PointF(gestureStroke.points[0], gestureStroke.points[1]);
            pointF.offset((-rectF.left) + ((i - (rectF.width() * width)) / 2.0f), (-rectF.top) + ((i2 - (rectF.height() * width)) / 2.0f));
            Paint paint2 = new Paint();
            paint2.setColor(a.f2233a);
            paint2.setAntiAlias(true);
            paint2.setDither(true);
            paint2.setStyle(Paint.Style.FILL);
            canvas.drawCircle(pointF.x, pointF.y, 8.0f / width, paint2);
            return createBitmap;
        } catch (Exception e) {
            return gesture.toBitmap(i, i2, i3, i4);
        }
    }

    public static String a(Context context, String str) {
        if (str.startsWith("open_folder")) {
            return context.getString(C0000R.string.gesture_open_folder_prefix, ak.d(str.substring("open_folder".length())));
        }
        if (str.startsWith("open_window")) {
            return context.getString(C0000R.string.gesture_open_window_prefix, b(context, str));
        }
        if (str.startsWith("start_app")) {
            String[] split = str.substring("start_app".length()).split("#");
            PackageManager packageManager = context.getPackageManager();
            try {
                return context.getString(C0000R.string.gesture_start_app_prefix, packageManager.getActivityInfo(new ComponentName(split[0], split[1]), 1).loadLabel(packageManager).toString());
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                return context.getString(C0000R.string.app_type_error);
            }
        }
        if ("back".equals(str)) {
            return context.getString(C0000R.string.action_back);
        }
        if ("close_current".equals(str)) {
            return context.getString(C0000R.string.action_close);
        }
        if ("refresh".equals(str)) {
            return context.getString(C0000R.string.action_refresh);
        }
        if ("open_lib_pic".equals(str)) {
            return context.getString(C0000R.string.action_open) + " " + context.getString(C0000R.string.category_picture);
        }
        if ("open_lib_music".equals(str)) {
            return context.getString(C0000R.string.action_open) + " " + context.getString(C0000R.string.category_music);
        }
        if ("open_lib_video".equals(str)) {
            return context.getString(C0000R.string.action_open) + " " + context.getString(C0000R.string.category_movie);
        }
        if ("open_lib_text".equals(str)) {
            return context.getString(C0000R.string.action_open) + " " + context.getString(C0000R.string.category_book);
        }
        if ("show_navi".equals(str)) {
            return context.getString(C0000R.string.action_open) + " " + context.getString(C0000R.string.location_fast_access);
        }
        if ("exit".equals(str)) {
            return context.getString(C0000R.string.action_exit);
        }
        if ("open_settings".equals(str)) {
            return context.getString(C0000R.string.input_setting);
        }
        return null;
    }

    public static String b(Context context, String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (str.startsWith("open_window")) {
            str = str.substring("open_window".length());
        }
        if ("open_lib_pic".equals(str)) {
            return context.getString(C0000R.string.category_picture);
        }
        if ("open_lib_music".equals(str)) {
            return context.getString(C0000R.string.category_music);
        }
        if ("open_lib_video".equals(str)) {
            return context.getString(C0000R.string.category_movie);
        }
        if ("open_lib_text".equals(str)) {
            return context.getString(C0000R.string.category_book);
        }
        if ("smb://".equals(str)) {
            return context.getString(C0000R.string.location_lan);
        }
        if ("net://".equals(str)) {
            return context.getString(C0000R.string.location_cloud);
        }
        if ("pcs://".equals(str)) {
            return context.getString(C0000R.string.category_pcs);
        }
        if ("ftp://".equals(str)) {
            return context.getString(C0000R.string.location_ftp);
        }
        if ("bt://".equals(str)) {
            return context.getString(C0000R.string.location_device);
        }
        if ("app://user".equals(str)) {
            return context.getString(C0000R.string.app_app_manager);
        }
        if ("download://".equals(str)) {
            return context.getString(C0000R.string.app_download_manager);
        }
        if ("task_manager".equals(str)) {
            return context.getString(C0000R.string.fast_access_system);
        }
        if ("du://".equals(str)) {
            return context.getString(C0000R.string.diskusage_title);
        }
        if ("remote://".equals(str)) {
            return context.getString(C0000R.string.fast_access_remote);
        }
        if ("net_manager".equals(str)) {
            return context.getString(C0000R.string.app_net_manager);
        }
        if ("clipboard".equals(str)) {
            return context.getString(C0000R.string.location_clipboard);
        }
        if ("hide_list".equals(str)) {
            return context.getString(C0000R.string.location_hidelist);
        }
        if ("root_explorer".equals(str)) {
            return context.getString(C0000R.string.preference_root_settings);
        }
        return null;
    }
}
