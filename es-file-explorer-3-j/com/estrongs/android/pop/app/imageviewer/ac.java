package com.estrongs.android.pop.app.imageviewer;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.StatFs;
import android.preference.PreferenceManager;
import android.text.format.Formatter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class ac {

    /* renamed from: a, reason: collision with root package name */
    private static String f935a = "Unknown";

    public static int a() {
        try {
            if (!ImageManager.a()) {
                return -1;
            }
            StatFs statFs = new StatFs(com.estrongs.android.pop.b.b());
            return (int) ((statFs.getAvailableBlocks() * statFs.getBlockSize()) / 400000.0f);
        } catch (Exception e) {
            return -2;
        }
    }

    public static long a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        InputStream f = eVar.f();
        if (f == null) {
            return -1L;
        }
        try {
            return f.available();
        } catch (IOException e) {
            return -1L;
        } finally {
            a(f);
        }
    }

    public static void a(Activity activity) {
        a(activity, a());
    }

    public static void a(Activity activity, int i) {
        String str = null;
        if (i == -1) {
            str = Environment.getExternalStorageState() == "checking" ? activity.getString(C0000R.string.no_sdcard) : activity.getString(C0000R.string.no_sdcard);
        } else if (i < 1) {
            str = activity.getString(C0000R.string.msg_sdcard_insufficient_space);
        }
        if (str != null) {
            com.estrongs.android.ui.view.z.a(activity, str, 5000).show();
        }
    }

    public static void a(Activity activity, Uri uri, com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        if (uri == null || eVar == null) {
            return;
        }
        Intent a2 = am.a(eVar);
        a2.setClass(activity, Wallpaper.class);
        activity.startActivity(a2);
    }

    public static void a(Activity activity, Uri uri, com.estrongs.android.pop.app.imageviewer.gallery.e eVar, Handler handler) {
        if (eVar == null) {
            return;
        }
        com.estrongs.android.ui.b.aq aqVar = new com.estrongs.android.ui.b.aq(activity);
        View inflate = com.estrongs.android.pop.esclasses.e.a(activity).inflate(C0000R.layout.image_details, (ViewGroup) null);
        if (com.estrongs.android.util.ak.au(uri.toString())) {
        }
        f935a = activity.getResources().getString(C0000R.string.bt_class_unkown);
        ((ImageView) inflate.findViewById(C0000R.id.details_thumbnail_image)).setImageBitmap(eVar.g());
        String string = activity.getResources().getString(C0000R.string.progress_loading);
        if (eVar instanceof com.estrongs.android.pop.app.imageviewer.gallery.c) {
            com.estrongs.android.pop.app.imageviewer.gallery.c cVar = (com.estrongs.android.pop.app.imageviewer.gallery.c) eVar;
            ((TextView) inflate.findViewById(C0000R.id.details_image_title)).setText(com.estrongs.android.util.ak.bv(cVar.c()));
            ((TextView) inflate.findViewById(C0000R.id.details_file_size_value)).setText(string);
            ((TextView) inflate.findViewById(C0000R.id.details_resolution_value)).setText(string);
            ((TextView) inflate.findViewById(C0000R.id.details_date_taken_value)).setText(string);
            ((TextView) inflate.findViewById(C0000R.id.details_make_value)).setText(string);
            ((TextView) inflate.findViewById(C0000R.id.details_model_value)).setText(string);
            new ae(cVar, handler, activity, inflate).start();
        } else {
            String d = eVar.d();
            long a2 = a(eVar);
            String formatFileSize = a2 < 0 ? "" : Formatter.formatFileSize(activity, a2);
            ((TextView) inflate.findViewById(C0000R.id.details_image_title)).setText(d);
            ((TextView) inflate.findViewById(C0000R.id.details_file_size_value)).setText(formatFileSize);
            b(inflate, eVar, activity);
        }
        aqVar.a(C0000R.string.confirm_ok, new ag());
        handler.post(new ah(aqVar, inflate));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Activity activity, Runnable runnable) {
        a(activity, runnable, true);
    }

    static void a(Activity activity, Runnable runnable, boolean z) {
        if (PreferenceManager.getDefaultSharedPreferences(activity).getBoolean("pref_gallery_confirm_delete_key", true)) {
            a(activity, activity.getString(C0000R.string.action_delete), MessageFormat.format(activity.getString(C0000R.string.delete_confirm_message), ""), runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public static void a(Context context, String str, String str2, Runnable runnable) {
        ad adVar = new ad(runnable);
        new AlertDialog.Builder(context).setIcon(R.drawable.ic_dialog_alert).setTitle(str).setMessage(str2).setPositiveButton(C0000R.string.confirm_ok, adVar).setNegativeButton(C0000R.string.confirm_cancel, adVar).create().show();
    }

    private static void a(View view) {
        a(view, C0000R.id.details_resolution_row);
        a(view, C0000R.id.details_make_row);
        a(view, C0000R.id.details_model_row);
    }

    private static void a(View view, int i) {
        view.findViewById(i).setVisibility(8);
    }

    private static void a(View view, String str, int i) {
        ((TextView) view.findViewById(i)).setText(str);
    }

    private static void a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar, View view, Activity activity) {
        a(view, 0 == 0 ? f935a : null, C0000R.id.details_make_value);
        a(view, 0 == 0 ? f935a : null, C0000R.id.details_model_value);
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    public static boolean a(Uri uri) {
        if (uri == null) {
            return false;
        }
        String scheme = uri.getScheme();
        String authority = uri.getAuthority();
        if (scheme.equals("content") && authority.equals("media")) {
            return true;
        }
        return scheme.equals("file") && com.estrongs.android.util.ak.aZ(uri.getPath());
    }

    public static void b(Activity activity, Uri uri, com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        if (eVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType(eVar.j());
        intent.putExtra("android.intent.extra.STREAM", uri);
        ImageManager.a(eVar);
        try {
            activity.startActivity(Intent.createChooser(intent, activity.getText(C0000R.string.action_share_via)));
        } catch (ActivityNotFoundException e) {
            com.estrongs.android.ui.view.z.a(activity, C0000R.string.msg_no_way_to_share_image, 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view, com.estrongs.android.pop.app.imageviewer.gallery.e eVar, Activity activity) {
        int i;
        int i2;
        if (ImageManager.a(eVar)) {
            i2 = eVar.l();
            i = eVar.k();
        } else {
            i = 0;
            i2 = 0;
        }
        a(view, (i2 <= 0 || i <= 0) ? f935a : String.format(activity.getString(C0000R.string.details_dimension_x), Integer.valueOf(i2), Integer.valueOf(i)), C0000R.id.details_resolution_value);
        String str = f935a;
        if (eVar.n() != 0) {
            str = new SimpleDateFormat().format(new Date(eVar.n()));
        }
        a(view, str, C0000R.id.details_date_taken_value);
        if ("image/jpeg".equals(eVar.j())) {
            a(eVar, view, activity);
        } else {
            a(view);
        }
    }
}
