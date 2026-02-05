package com.estrongs.android.pop.utils;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class y {

    /* renamed from: a, reason: collision with root package name */
    private static String f1286a = "com.estrongs.android.taskmanager";

    /* renamed from: b, reason: collision with root package name */
    private static String f1287b = "http://www.amazon.com/gp/mas/dl/android?p=" + f1286a + "&showAll=1";
    private static String c = "android.intent.action.PICK_TASK_MANAGER";

    public static int a(PackageManager packageManager, String str) {
        try {
            return packageManager.getPackageInfo(str, 16384).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static String a(PackageManager packageManager, ApplicationInfo applicationInfo) {
        try {
            return applicationInfo.loadLabel(packageManager).toString().trim().replace("?", " ").replace("/", " ").replace("\\", " ").replace("*", " ").replace("|", " ").replace(":", " ").replace("<", " ").replace(">", " ").replace("\"", " ");
        } catch (Exception e) {
            return "Unknown";
        }
    }

    public static void a(Context context) {
        if (!c(context)) {
            d(context);
            return;
        }
        Intent intent = new Intent(c);
        if (intent != null) {
            intent.addFlags(268435456);
            try {
                context.startActivity(intent);
            } catch (ActivityNotFoundException e) {
                com.estrongs.android.ui.view.z.a(context, C0000R.string.start_acitivity_error, 0).show();
            }
        }
    }

    public static void a(Context context, String str, String str2) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("market://search?q=" + str2 + ":" + str));
        if ("Market".equals("Web")) {
            if (FileExplorerActivity.e.equals("Amazon")) {
                f(context);
                return;
            } else {
                e(context);
                return;
            }
        }
        if (context.getPackageManager().queryIntentActivities(intent, 0).size() != 0) {
            context.startActivity(intent);
        } else {
            e(context);
        }
    }

    public static boolean a(String str) {
        try {
            FexApplication.a().getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static String b(PackageManager packageManager, String str) {
        return b(c(packageManager, str));
    }

    private static String b(String str) {
        long j = 0;
        if (str != null) {
            try {
                if (str.length() >= 32) {
                    String substring = str.substring(8, 24);
                    long j2 = 0;
                    for (int i = 0; i < 8; i++) {
                        j2 = (j2 * 16) + Integer.parseInt(substring.substring(i, i + 1), 16);
                    }
                    for (int i2 = 8; i2 < substring.length(); i2++) {
                        j = (j * 16) + Integer.parseInt(substring.substring(i2, i2 + 1), 16);
                    }
                    return String.valueOf((j + j2) & 4294967295L);
                }
            } catch (Exception e) {
                return "-1";
            }
        }
        return "-1";
    }

    public static void b(Context context) {
        if (!c(context)) {
            d(context);
            return;
        }
        Intent intent = new Intent(c);
        if (intent != null) {
            intent.addFlags(268435456);
            intent.putExtra("startup_manager", true);
            try {
                context.startActivity(intent);
            } catch (ActivityNotFoundException e) {
                com.estrongs.android.ui.view.z.a(context, C0000R.string.start_acitivity_error, 0).show();
            }
        }
    }

    private static String c(PackageManager packageManager, String str) {
        try {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(str, 64);
                if (packageInfo == null) {
                    return null;
                }
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(packageInfo.signatures[0].toCharsString().getBytes());
                byte[] digest = messageDigest.digest();
                char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
                StringBuilder sb = new StringBuilder(digest.length * 2);
                for (int i = 0; i < digest.length; i++) {
                    sb.append(cArr[(digest[i] & 240) >>> 4]);
                    sb.append(cArr[digest[i] & 15]);
                }
                return sb.toString();
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        } catch (Exception e2) {
            return null;
        }
    }

    public static boolean c(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(f1286a, 0) != null;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static void d(Context context) {
        new com.estrongs.android.ui.b.aq(context).a(C0000R.string.message_alert).b(C0000R.string.confirm_install_tm).b(C0000R.string.confirm_yes, new z(context)).c(C0000R.string.confirm_no, (DialogInterface.OnClickListener) null).b();
    }

    public static void e(Context context) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.estrongs.com/download.html")));
        } catch (ActivityNotFoundException e) {
            com.estrongs.android.ui.view.z.a(context, C0000R.string.market_not_found, 1).show();
        }
    }

    public static void f(Context context) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(f1287b)));
        } catch (ActivityNotFoundException e) {
            com.estrongs.android.ui.view.z.a(context, C0000R.string.market_not_found, 1).show();
        }
    }
}
