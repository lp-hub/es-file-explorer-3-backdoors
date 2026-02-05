package com.estrongs.android.pop.app;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.app.editor.PopNoteEditor;
import java.io.File;

/* loaded from: classes.dex */
public class b {
    public static Intent a(Context context, String str) {
        if (com.estrongs.android.util.av.f(str)) {
            return d(context, str);
        }
        if (com.estrongs.android.util.av.e(str)) {
            return c(context, str);
        }
        if (com.estrongs.android.util.av.B(str)) {
            return k(context, str);
        }
        if (com.estrongs.android.util.av.g(str)) {
            return a(context, str, true);
        }
        if (com.estrongs.android.util.av.b(str)) {
            return b(context, str);
        }
        if (com.estrongs.android.util.av.y(str)) {
            return f(context, str);
        }
        if (com.estrongs.android.util.av.z(str)) {
            return g(context, str);
        }
        if (com.estrongs.android.util.av.C(str)) {
            return h(context, str);
        }
        if (com.estrongs.android.util.av.A(str)) {
            return i(context, str);
        }
        if (com.estrongs.android.util.av.m(str)) {
            return e(context, str);
        }
        if (com.estrongs.android.util.av.h(str)) {
            return l(context, str);
        }
        if (com.estrongs.android.util.av.G(str)) {
            return a(str);
        }
        if (com.estrongs.android.util.av.i(str)) {
            return j(context, str);
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        String N = com.estrongs.android.util.av.N(str);
        if (N == null || N.equals("*/*")) {
            intent.setData(Uri.parse(str));
            return intent;
        }
        intent.setDataAndType(Uri.fromFile(new File(str)), N);
        return intent;
    }

    public static Intent a(Context context, String str, boolean z) {
        if (!com.estrongs.android.util.ak.aP(str)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addFlags(268435456);
            intent.setDataAndType(Uri.parse(str), "text/plain");
            return intent;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.addCategory("android.intent.category.DEFAULT");
        intent2.addFlags(67108864);
        intent2.setType("text/plain");
        if (com.estrongs.android.util.ak.aJ(str)) {
            intent2.setClass(context, BTPopNoteEditor.class);
        } else {
            intent2.setClass(context, PopNoteEditor.class);
        }
        intent2.setData(Uri.parse(str));
        return intent2;
    }

    public static Intent a(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
        return intent;
    }

    public static Intent b(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "image/*");
        return intent;
    }

    public static Intent c(Context context, String str) {
        if (com.estrongs.android.util.ak.aP(str)) {
            Intent intent = new Intent(context, (Class<?>) StreamingMediaPlayer.class);
            intent.addFlags(67108864);
            intent.setData(Uri.parse(str));
            context.startActivity(intent);
            return intent;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.addFlags(67108864);
        intent2.putExtra("oneshot", false);
        intent2.putExtra("configchange", false);
        intent2.setDataAndType(Uri.fromFile(new File(str)), "audio/*");
        return intent2;
    }

    public static Intent d(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(67108864);
        intent.putExtra("oneshot", false);
        intent.putExtra("configchange", false);
        intent.setDataAndType(Uri.fromFile(new File(str)), "video/*");
        return intent;
    }

    public static Intent e(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/pdf");
        return intent;
    }

    public static Intent f(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/msword");
        return intent;
    }

    public static Intent g(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.ms-excel");
        return intent;
    }

    public static Intent h(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.ms-powerpoint");
        return intent;
    }

    public static Intent i(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/x-chm");
        return intent;
    }

    public static Intent j(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/x-shockwave-flash");
        return intent;
    }

    public static Intent k(Context context, String str) {
        Uri build = Uri.parse(str).buildUpon().encodedAuthority("com.android.htmlfileprovider").scheme("content").encodedPath(str).build();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(build, "text/html");
        return intent;
    }

    public static Intent l(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.putExtra("archive_file_name", str);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/zip");
        return intent;
    }
}
