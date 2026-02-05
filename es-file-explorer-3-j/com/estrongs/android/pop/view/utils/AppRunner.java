package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.BTPopNoteEditor;
import com.estrongs.android.pop.app.OpenRecomm;
import com.estrongs.android.pop.app.PopRemoteImageBrowser;
import com.estrongs.android.pop.app.StreamingMediaPlayer;
import com.estrongs.android.pop.app.editor.PopNoteEditor;
import com.estrongs.android.pop.netfs.utils.TypeUtils;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.ui.b.aq;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.av;
import com.estrongs.android.util.aw;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class AppRunner {

    /* renamed from: b, reason: collision with root package name */
    private static HashMap<String, Intent> f1429b = new HashMap<>();

    /* renamed from: a, reason: collision with root package name */
    public static Integer f1428a = 10222;

    /* loaded from: classes.dex */
    public class DoNothing extends Activity {
        @Override // android.app.Activity
        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            finish();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(Activity activity, Intent intent, String str) {
        u uVar;
        if (!(intent.getExtras() != null ? intent.getExtras().getBoolean("by_open_as", false) : false)) {
            String bk = ak.bk(ak.d(str));
            uVar = (bk == null || "".equals(bk)) ? null : n.a(activity, bk);
            if (uVar != null) {
                try {
                    intent.setClassName(uVar.f1473a, uVar.f1474b);
                    if (activity instanceof FileExplorerActivity) {
                        ((FileExplorerActivity) activity).a(intent);
                    } else {
                        activity.startActivity(intent);
                    }
                    return;
                } catch (ActivityNotFoundException e) {
                    e.printStackTrace();
                    intent.setComponent(null);
                    n.a(activity, bk, null);
                }
            }
            if (uVar != null) {
                if (str == null) {
                    activity.startActivity(intent);
                    return;
                }
                f1429b.put(str, intent);
                Intent intent2 = new Intent(activity, (Class<?>) OpenRecomm.class);
                intent2.putExtra("filepath", str);
                intent2.putExtra("intent", intent);
                try {
                    activity.startActivity(intent2);
                    return;
                } catch (Exception e2) {
                    activity.startActivity(intent);
                    return;
                }
            }
            return;
        }
        uVar = null;
        if (uVar != null) {
        }
    }

    public static void a(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/pdf");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void a(Activity activity, String str, int i, boolean z) {
        try {
            try {
                if (!ak.aP(str)) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.addFlags(67108864);
                    intent.putExtra("oneshot", true);
                    intent.putExtra("configchange", false);
                    intent.putExtra("by_open_as", z);
                    Uri fromFile = Uri.fromFile(new File(str));
                    String g = av.g(i);
                    if (g == null || z || (g != null && !g.startsWith("audio/"))) {
                        g = "audio/*";
                    }
                    intent.setDataAndType(fromFile, g);
                    a(activity, intent, str);
                    return;
                }
                if (!com.estrongs.android.c.a.b()) {
                    com.estrongs.android.ui.view.z.a(activity, C0000R.string.start_httpserver_fail, 1).show();
                    return;
                }
                if (ak.E(str) == 3) {
                    Intent intent2 = new Intent(activity, (Class<?>) StreamingMediaPlayer.class);
                    intent2.addFlags(67108864);
                    intent2.setData(Uri.parse(str));
                    intent2.putExtra("by_open_as", z);
                    activity.startActivity(intent2);
                    return;
                }
                Intent intent3 = new Intent("android.intent.action.VIEW");
                intent3.addFlags(67108864);
                intent3.putExtra("oneshot", true);
                intent3.putExtra("configchange", false);
                intent3.putExtra("by_open_as", z);
                String b2 = ak.b(str, com.estrongs.android.c.a.a());
                if (b2 != null) {
                    Uri parse = Uri.parse(b2);
                    if (com.estrongs.fs.b.m.a(str)) {
                        intent3.setDataAndType(parse, av.g(i));
                    } else {
                        intent3.setDataAndType(parse, av.N(str));
                    }
                    try {
                        a(activity, intent3, str);
                    } catch (ActivityNotFoundException e) {
                        e.printStackTrace();
                    }
                }
            } catch (NullPointerException e2) {
            }
        } catch (ActivityNotFoundException e3) {
        }
    }

    public static void a(Activity activity, String str, Class<?> cls) {
        if (ak.aP(str)) {
            com.estrongs.android.pop.utils.a.a((Context) activity, C0000R.string.app_type_error);
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.putExtra("archive_file_name", str);
        if (cls != null) {
            intent.setClass(activity, cls);
        }
        String B = av.B(TypeUtils.ZIP_FILE);
        if (av.l(str)) {
            B = av.B(327744);
        } else if (av.j(str)) {
            B = av.B(327745);
        } else if (av.k(str)) {
            B = av.B(327746);
        }
        intent.setDataAndType(Uri.fromFile(new File(str)), B);
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
            com.estrongs.android.pop.utils.a.a((Context) activity, C0000R.string.app_type_error);
        }
    }

    public static void a(Activity activity, String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return;
        }
        if (aw.a((CharSequence) str)) {
            str = str2;
        }
        if (av.h(str2) && !av.I(str2)) {
            activity.runOnUiThread(new f(activity));
            return;
        }
        if (!ak.aP(str2) || a(str2)) {
            c(activity, str, str2);
            return;
        }
        String d = ak.d(str2);
        if (q(activity, "/sdcard/" + d) == null) {
            String bk = ak.bk(d);
            if (((bk == null || "".equals(bk)) ? null : n.a(activity, bk)) == null) {
                activity.runOnUiThread(new g(activity, str2));
                return;
            }
        }
        a(activity, str2, com.estrongs.android.pop.a.c + "/" + b(str2), (Runnable) null, true);
    }

    public static void a(Activity activity, String str, String str2, int i, boolean z) {
        try {
            NotificationManager notificationManager = (NotificationManager) activity.getSystemService("notification");
            if (notificationManager != null) {
                Notification notification = new Notification();
                notification.tickerText = "ES " + ((Object) activity.getText(C0000R.string.app_app_manager));
                notification.when = System.currentTimeMillis();
                notification.icon = C0000R.drawable.apk_notify;
                if (z) {
                    notification.flags |= 2;
                }
                notification.setLatestEventInfo(activity, str, str2, PendingIntent.getActivity(activity, 0, new Intent(activity, (Class<?>) DoNothing.class), 0));
                notificationManager.notify(i, notification);
            }
        } catch (Exception e) {
        }
    }

    public static void a(Activity activity, String str, String str2, TypedMap typedMap) {
        if (aw.a((CharSequence) str)) {
            str = str2;
        }
        if (aw.a((CharSequence) str2)) {
            str2 = str;
        }
        if (aw.b()) {
            if (str.startsWith("/sdcard/")) {
                str = ak.bo(str2);
            }
            if (str2.startsWith("/sdcard/")) {
                str2 = ak.bo(str2);
            }
        }
        try {
            if (ak.aP(str2)) {
                Intent intent = new Intent(activity, (Class<?>) PopRemoteImageBrowser.class);
                intent.putExtra("FILE_PATH", str);
                intent.putExtra("ABSOLUTE_FILE_PATH", str2);
                intent.putExtra("by_open_as", typedMap.getBoolean("by_open_as"));
                intent.putExtra("show_hidelist_file", typedMap.getBoolean("show_hidelist_file"));
                activity.startActivity(intent);
                return;
            }
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.putExtra("FILE_PATH", str);
            intent2.addCategory("android.intent.category.DEFAULT");
            intent2.setType("image/*");
            intent2.putExtra("by_open_as", typedMap.getBoolean("by_open_as"));
            intent2.putExtra("show_hidelist_file", typedMap.getBoolean("show_hidelist_file"));
            Uri uri = null;
            if (av.d(str2) || av.c(str2)) {
                if (!aw.a() && (uri = com.estrongs.android.util.j.a().a(activity.getContentResolver(), str2)) == null) {
                    uri = com.estrongs.android.util.j.a().a(activity.getContentResolver(), new String[]{str2}, str2);
                }
                if (uri == null) {
                    intent2.setDataAndType(ak.aO(str2) ? Uri.fromFile(new File(str2)) : Uri.parse(str2), "image/*");
                } else {
                    intent2.setData(uri);
                }
            } else {
                intent2.setDataAndType(ak.aO(str2) ? Uri.fromFile(new File(str2)) : Uri.parse(str2), "image/*");
            }
            a(activity, intent2, str2);
        } catch (ActivityNotFoundException e) {
        } catch (NullPointerException e2) {
        }
    }

    public static void a(Activity activity, String str, String str2, Runnable runnable, boolean z) {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            new aq(activity).a(C0000R.string.message_error).b(C0000R.string.connect_local_fail).a(C0000R.string.confirm_ok, new a()).b();
            return;
        }
        com.estrongs.fs.d a2 = com.estrongs.fs.d.a(activity);
        File parentFile = new File(str2).getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        new c("CopyFileToLocal", a2, str, activity, str2, z, parentFile, runnable == null ? new b(activity, str2) : runnable).start();
    }

    public static void a(Activity activity, String str, String str2, boolean z) {
        TypedMap typedMap = new TypedMap();
        typedMap.put("by_open_as", Boolean.valueOf(z));
        a(activity, str, str2, typedMap);
    }

    public static void a(Activity activity, String str, boolean z, boolean z2) {
        if (ak.aP(str)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addFlags(67108864);
            intent.setType("text/plain");
            intent.putExtra("by_open_as", z2);
            if (ak.aJ(str)) {
                intent.setClass(activity, BTPopNoteEditor.class);
            } else {
                intent.setClass(activity, PopNoteEditor.class);
            }
            intent.setData(Uri.parse(str));
            activity.startActivity(intent);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.addCategory("android.intent.category.DEFAULT");
        intent2.addFlags(268435456);
        intent2.putExtra("by_open_as", z2);
        if (!z) {
            intent2.setDataAndType(Uri.fromFile(new File(str)), "text/plain");
            a(activity, intent2, str);
        } else {
            intent2.setDataAndType(Uri.parse(str), "text/plain");
            intent2.setClass(activity, PopNoteEditor.class);
            activity.startActivity(intent2);
        }
    }

    public static void a(Activity activity, List<String> list) {
        boolean w = activity instanceof FileExplorerActivity ? ((FileExplorerActivity) activity).w() : false;
        if (com.estrongs.fs.impl.local.h.a((Context) activity, false) && (com.estrongs.android.pop.q.a(activity).aa() || w)) {
            new i(activity, list).start();
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            t(activity, list.get(i));
        }
    }

    public static void a(Activity activity, List<String> list, List<String> list2) {
        boolean y = activity instanceof FileExplorerActivity ? ((FileExplorerActivity) activity).y() : false;
        if (com.estrongs.fs.impl.local.h.a((Context) activity, false) && (com.estrongs.android.pop.q.a(activity).aa() || y)) {
            new k(activity, list, list2).start();
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            activity.startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + list.get(i))));
        }
    }

    public static boolean a(String str) {
        return av.g(str) || av.b(str) || av.e(str) || av.f(str);
    }

    public static String b(String str) {
        String d = ak.d(str);
        int lastIndexOf = d.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return d + "_" + str.hashCode();
        }
        return d.substring(0, lastIndexOf) + "_" + str.hashCode() + d.substring(lastIndexOf);
    }

    public static void b(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/esj");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void b(Activity activity, String str, int i, boolean z) {
        if (!ak.aP(str)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(67108864);
            intent.putExtra("oneshot", true);
            intent.putExtra("configchange", false);
            intent.putExtra("by_open_as", z);
            Uri fromFile = Uri.fromFile(new File(str));
            String N = av.N(str);
            if ("*/*".equals(N)) {
                N = av.f(i);
            }
            if (z || (N != null && !N.startsWith("video/"))) {
                N = "video/*";
            }
            intent.setDataAndType(fromFile, N);
            try {
                a(activity, intent, str);
                return;
            } catch (ActivityNotFoundException e) {
                e.printStackTrace();
                return;
            }
        }
        if (!com.estrongs.android.c.a.b()) {
            com.estrongs.android.ui.view.z.a(activity, C0000R.string.start_httpserver_fail, 1).show();
            return;
        }
        if (ak.F(str) && com.estrongs.android.pop.m.T) {
            try {
                String x = ak.x(str);
                String y = ak.y(str);
                String a2 = ak.a(str);
                String j = ak.j(str);
                int indexOf = j.indexOf(47, 1);
                String substring = indexOf != -1 ? j.substring(0, indexOf) : null;
                if (substring == null) {
                    throw new Exception("err");
                }
                String str2 = "//" + a2 + substring;
                String str3 = "/sdcard/.estrongs/.smbmount" + substring;
                new File(str3).mkdirs();
                String str4 = "/sdcard/.estrongs/.smbmount" + j;
                Log.e("EEE", "Smbpath:" + str2 + ", mountPoint:" + str3 + ",username=" + x + ",pass:" + y + ",localPath" + str4);
                String[] strArr = new String[8];
                strArr[0] = "busybox";
                strArr[1] = "mount";
                strArr[2] = "-t";
                strArr[3] = "cifs";
                strArr[4] = "-o";
                strArr[5] = "iocharset=utf8," + (x == null ? "" : "username=" + x) + (y == null ? "" : "password=" + y) + ",uid=1000,gid=1015,file_mode=0775,dir_mode=0775,rw";
                strArr[6] = str2;
                strArr[7] = str3;
                ProcessBuilder processBuilder = new ProcessBuilder(strArr);
                processBuilder.redirectErrorStream(true);
                try {
                    processBuilder.start().waitFor();
                    Intent intent2 = new Intent("android.intent.action.VIEW");
                    intent2.addFlags(67108864);
                    intent2.putExtra("oneshot", true);
                    intent2.putExtra("configchange", false);
                    intent2.putExtra("by_open_as", z);
                    Uri fromFile2 = Uri.fromFile(new File(str4));
                    String N2 = av.N(str);
                    if ("*/*".equals(N2)) {
                        N2 = av.f(i);
                    }
                    if (z || (N2 != null && !N2.startsWith("video/"))) {
                        N2 = "video/*";
                    }
                    intent2.setDataAndType(fromFile2, N2);
                    try {
                        a(activity, intent2, str);
                        return;
                    } catch (ActivityNotFoundException e2) {
                        e2.printStackTrace();
                        return;
                    }
                } catch (Exception e3) {
                }
            } catch (Exception e4) {
            }
        }
        if (ak.aJ(str)) {
            Intent intent3 = new Intent(activity, (Class<?>) StreamingMediaPlayer.class);
            intent3.addFlags(67108864);
            intent3.setData(Uri.parse(str));
            intent3.putExtra("by_open_as", z);
            activity.startActivity(intent3);
            return;
        }
        Intent intent4 = new Intent("android.intent.action.VIEW");
        intent4.addFlags(67108864);
        intent4.putExtra("oneshot", true);
        intent4.putExtra("configchange", false);
        intent4.putExtra("by_open_as", z);
        String b2 = ak.b(str, com.estrongs.android.c.a.a());
        if (b2 != null) {
            intent4.setDataAndType(Uri.parse(b2), av.f(i));
            try {
                a(activity, intent4, str);
            } catch (ActivityNotFoundException e5) {
                e5.printStackTrace();
            }
        }
    }

    public static Intent c(String str) {
        Intent remove;
        synchronized (f1429b) {
            remove = f1429b.remove(str);
        }
        return remove;
    }

    public static void c(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/x-shockwave-flash");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void c(Activity activity, String str, int i, boolean z) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "*/*");
        intent.putExtra("by_open_as", z);
        a(activity, intent, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Activity activity, String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return;
        }
        String bo = ak.bo(str);
        String bo2 = ak.bo(str2);
        int a2 = av.a(bo2);
        if (av.a(a2)) {
            a(activity, bo, bo2, false);
            return;
        }
        if (av.d(a2)) {
            a(activity, bo2, a2, false);
            return;
        }
        if (av.e(a2)) {
            b(activity, bo2, a2, false);
            return;
        }
        if (av.g(bo2)) {
            a(activity, bo2, false, false);
            return;
        }
        if (av.h(bo2) && av.I(bo2)) {
            p(activity, bo2);
            return;
        }
        if (av.j(a2)) {
            c(activity, bo2);
            return;
        }
        if (av.k(a2)) {
            a(activity, bo2);
            return;
        }
        if (av.l(a2)) {
            b(activity, bo2);
            return;
        }
        if (av.m(a2)) {
            d(activity, bo2);
            return;
        }
        if (av.n(a2)) {
            e(activity, bo2);
            return;
        }
        if (av.s(a2)) {
            k(activity, bo2);
            return;
        }
        if (av.t(a2)) {
            l(activity, bo2);
            return;
        }
        if (av.w(a2)) {
            m(activity, bo2);
            return;
        }
        if (av.u(a2)) {
            n(activity, bo2);
            return;
        }
        if (av.v(a2)) {
            o(activity, bo2);
            return;
        }
        if (av.l(a2)) {
            b(activity, bo2);
            return;
        }
        if (av.m(a2)) {
            d(activity, bo2);
            return;
        }
        if (av.n(a2)) {
            e(activity, bo2);
            return;
        }
        if (av.o(a2)) {
            f(activity, bo2);
            return;
        }
        if (av.p(a2)) {
            g(activity, bo2);
            return;
        }
        if (av.r(a2)) {
            j(activity, bo2);
            return;
        }
        if (av.q(a2)) {
            i(activity, bo2);
            return;
        }
        if (av.y(a2)) {
            h(activity, bo2);
            return;
        }
        if (av.A(a2)) {
            r(activity, bo2);
            return;
        }
        if (ak.aP(bo)) {
            com.estrongs.android.pop.utils.a.a(activity, C0000R.string.app_type_error);
            return;
        }
        if (bo2 == null) {
            bo2 = bo;
        }
        Intent q = q(activity, bo2);
        if (q != null) {
            a(activity, q, bo2);
            return;
        }
        String bk = ak.bk(ak.d(bo2));
        u uVar = null;
        if (bk != null && !"".equals(bk)) {
            uVar = n.a(activity, bk);
        }
        if (uVar == null) {
            activity.runOnUiThread(new h(activity, bo2));
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setData(Uri.fromFile(new File(bo2)));
        a(activity, intent, bo2);
    }

    public static void d(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/epub+zip");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void e(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/x-mobipocket-ebook");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void f(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/x-bittorrent");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void g(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/x-chess-pgn");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void h(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "text/calendar");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void i(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/x-nzb");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void j(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.oasis.opendocument.text");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void k(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        if (str == null || !str.endsWith(".docx")) {
            intent.setDataAndType(Uri.fromFile(new File(str)), "application/msword");
        } else {
            intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.openxmlformats-officedocument.wordprocessingml.document");
        }
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void l(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        if (str == null || !str.endsWith(".xlsx")) {
            intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.ms-excel");
        } else {
            intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        }
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void m(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        if (str == null || !str.endsWith(".pptx")) {
            intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.ms-powerpoint");
        } else {
            intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.openxmlformats-officedocument.presentationml.presentation");
        }
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void n(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/x-chm");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void o(Activity activity, String str) {
        if (ak.aP(str)) {
            com.estrongs.android.pop.utils.a.a((Context) activity, C0000R.string.app_type_error);
            return;
        }
        Uri fromFile = Uri.fromFile(new File(str));
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(fromFile, "text/html");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void p(Activity activity, String str) {
        a(activity, str, (Class<?>) null);
    }

    public static Intent q(Activity activity, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addFlags(268435456);
            if (com.estrongs.fs.c.d.b(str) == null) {
                return null;
            }
            String N = av.N(str);
            if (N == null || N.equals("*/*")) {
                intent.setDataAndType(Uri.fromFile(new File(str)), "");
            } else {
                intent.setDataAndType(Uri.fromFile(new File(str)), N);
            }
            t[] a2 = n.a(activity, intent);
            if (a2 == null) {
                return null;
            }
            if (a2.length != 0) {
                return intent;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public static void r(Activity activity, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        a(activity, arrayList);
    }

    public static ag s(Activity activity, String str) {
        CharSequence[] charSequenceArr = {activity.getText(C0000R.string.type_text), activity.getText(C0000R.string.type_audio), activity.getText(C0000R.string.type_video), activity.getText(C0000R.string.type_image), activity.getText(C0000R.string.permission_other)};
        if (ak.aP(str)) {
            charSequenceArr = new CharSequence[]{activity.getText(C0000R.string.type_text), activity.getText(C0000R.string.type_audio), activity.getText(C0000R.string.type_video), activity.getText(C0000R.string.type_image)};
        }
        ag agVar = new ag(activity);
        agVar.setTitle(C0000R.string.action_openas);
        agVar.setItems(charSequenceArr, -1, new m(agVar, str, activity));
        agVar.setSelectable(false);
        agVar.show();
        return agVar;
    }

    private static void t(Activity activity, String str) {
        if (ak.aP(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
        try {
            a(activity, intent, str);
        } catch (ActivityNotFoundException e) {
        }
    }
}
