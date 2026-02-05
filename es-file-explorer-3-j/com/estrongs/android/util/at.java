package com.estrongs.android.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class at {

    /* renamed from: a, reason: collision with root package name */
    private static List<au> f2681a = new ArrayList();

    public static Intent a(Context context, Uri uri) {
        if (uri.toString().endsWith("/")) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.addFlags(67108864);
            intent.setDataAndType(uri, "resource/folder");
            return intent;
        }
        if (ak.aO(uri.getPath())) {
            return com.estrongs.android.pop.app.b.a(context, uri.getPath());
        }
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(uri);
        return intent2;
    }

    private static Intent a(PackageManager packageManager, ApplicationInfo applicationInfo) {
        try {
            Intent a2 = ag.a(applicationInfo.packageName, packageManager);
            if (a2 != null) {
                a2.addFlags(268435456);
            } else {
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(applicationInfo.packageName);
                if (launchIntentForPackage != null) {
                    a2 = launchIntentForPackage.cloneFilter();
                    a2.addFlags(268435456);
                } else {
                    a2 = null;
                }
            }
            return a2;
        } catch (Exception e) {
            return null;
        }
    }

    public static ShortcutFormat a(File file) {
        return (ShortcutFormat) b(file);
    }

    public static File a() {
        File file = new File("/sdcard/.estrongs/bookmark");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static void a(Context context, com.estrongs.fs.g gVar) {
        int g = com.estrongs.android.d.d.g(gVar);
        if (g == C0000R.drawable.format_folder) {
            g = com.estrongs.android.ui.theme.al.a(context).i();
        }
        String absolutePath = gVar.getAbsolutePath();
        if (gVar.getFileType().a() && !absolutePath.endsWith("/")) {
            absolutePath = absolutePath + "/";
        }
        Intent a2 = a(context, Uri.parse(Uri.encode(absolutePath, "/")));
        Intent intent = new Intent();
        intent.putExtra("android.intent.extra.shortcut.INTENT", a2);
        intent.putExtra("android.intent.extra.shortcut.NAME", gVar.getName());
        intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(context, g));
        intent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
        context.sendBroadcast(intent);
    }

    public static void a(ShortcutFormat shortcutFormat, File file) {
        a((Object) shortcutFormat, file);
    }

    public static void a(Object obj, File file) {
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
        objectOutputStream.writeObject(obj);
        objectOutputStream.flush();
        objectOutputStream.close();
        b();
    }

    public static boolean a(Context context, Intent intent) {
        intent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
        context.sendBroadcast(intent);
        return true;
    }

    public static boolean a(Context context, ApplicationInfo applicationInfo) {
        Intent b2 = b(context, applicationInfo);
        if (b2 == null) {
            return false;
        }
        return a(context, b2);
    }

    public static boolean a(String str, String str2) {
        ShortcutFormat shortcutFormat = new ShortcutFormat();
        shortcutFormat.shortcutName = str;
        shortcutFormat.targetLocation = str2;
        File a2 = a();
        if (!a2.exists()) {
            a2.mkdirs();
        }
        File file = new File(a2, shortcutFormat.shortcutName);
        file.createNewFile();
        a(shortcutFormat, file);
        return true;
    }

    private static Intent b(Context context, ApplicationInfo applicationInfo) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent();
        Intent a2 = a(context.getPackageManager(), applicationInfo);
        if (a2 == null) {
            return null;
        }
        intent.putExtra("android.intent.extra.shortcut.INTENT", a2);
        CharSequence loadLabel = applicationInfo.loadLabel(packageManager);
        intent.putExtra("android.intent.extra.shortcut.NAME", loadLabel != null ? loadLabel.toString().trim() : applicationInfo.packageName);
        try {
            intent.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeResource(packageManager.getResourcesForApplication(applicationInfo), applicationInfo.icon));
        } catch (Exception e) {
            e.printStackTrace();
        }
        intent.putExtra("duplicate", true);
        return intent;
    }

    public static Intent b(Context context, com.estrongs.fs.g gVar) {
        int g = com.estrongs.android.d.d.g(gVar);
        String absolutePath = gVar.getAbsolutePath();
        if (gVar.getFileType().a() && !absolutePath.endsWith("/")) {
            absolutePath = absolutePath + "/";
        }
        Intent a2 = a(context, Uri.parse(Uri.encode(absolutePath, "/")));
        Intent intent = new Intent();
        intent.putExtra("android.intent.extra.shortcut.INTENT", a2);
        intent.putExtra("android.intent.extra.shortcut.NAME", gVar.getName());
        intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(context, g));
        intent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
        return intent;
    }

    public static Object b(File file) {
        ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(file));
        Object readObject = objectInputStream.readObject();
        objectInputStream.close();
        return readObject;
    }

    private static void b() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= f2681a.size()) {
                return;
            }
            f2681a.get(i2).a();
            i = i2 + 1;
        }
    }

    public static void c(File file) {
        file.delete();
        b();
    }
}
