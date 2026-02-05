package com.estrongs.android.pop.a;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.aq;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.i;
import com.estrongs.fs.b.q;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f329a = i.a();

    /* renamed from: b, reason: collision with root package name */
    private static HashMap<String, Integer> f330b = new HashMap<>();
    private static HashMap<String, Integer> c = new HashMap<>();
    private static Set<String> d = new HashSet();
    private static Set<String> e = new HashSet();

    static {
        f330b.put("ftp", 1);
        f330b.put("sftp", 1);
        f330b.put("webdav", 1);
        c.put("ftp", 1);
        c.put("sftp", 1);
        c.put("webdav", 1);
    }

    public static int a(String str) {
        return -1;
    }

    public static void a(Activity activity, String str, int i, Runnable runnable) {
        String str2 = "";
        String str3 = "";
        if (i == 1) {
            str3 = activity.getString(C0000R.string.download_plugin_title, new Object[]{str.toUpperCase()});
            str2 = activity.getString(C0000R.string.download_plugin_comfirm, new Object[]{str.toUpperCase()});
        } else if (i == 2) {
            str3 = activity.getString(C0000R.string.update_plugin_title, new Object[]{str.toUpperCase()});
            str2 = activity.getString(C0000R.string.must_update_plugin_confirm, new Object[]{str.toUpperCase()});
        } else if (i == 3) {
            str3 = activity.getString(C0000R.string.update_plugin_title, new Object[]{str.toUpperCase()});
            str2 = activity.getString(C0000R.string.may_update_plugin_confirm, new Object[]{str.toUpperCase()});
        }
        new aq(activity).a(str3).b(str2).b(C0000R.string.confirm_ok, new c(activity, str, runnable)).c(C0000R.string.confirm_cancel, i != 3 ? null : new b(str, runnable, activity)).b();
    }

    private static String b(String str) {
        return String.format("ftp://cmelody:passw0rd@192.168.1.21/plugins/%1$s/es_%2$s.zip", c.get(str), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Activity activity, String str, Runnable runnable) {
        String b2 = "ftps".equalsIgnoreCase(str) ? b("ftp") : b(str);
        q qVar = new q(com.estrongs.fs.d.a(activity), b2, f329a);
        String str2 = f329a.endsWith(File.separator) ? f329a + ak.d(b2) : f329a + File.separator + ak.d(b2);
        String string = activity.getString(C0000R.string.download_plugin_title, new Object[]{str.toUpperCase()});
        String string2 = activity.getString(C0000R.string.download_plugin_progress_message, new Object[]{str.toUpperCase()});
        qVar.setDescription(string);
        new d(activity, string, string2, qVar, str2, str, runnable, activity).show();
        qVar.execute();
    }
}
