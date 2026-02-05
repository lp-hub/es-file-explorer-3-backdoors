package com.estrongs.android.pop;

import android.app.ActivityManager;
import android.app.Application;
import android.content.res.Resources;
import android.os.Environment;
import com.baidu.share.message.token.TokenShareManager;
import com.estrongs.android.pop.spfs.SPFileSystem;
import com.estrongs.android.pop.utils.bs;
import com.estrongs.android.util.aj;
import com.estrongs.android.util.ao;
import com.estrongs.android.util.ax;
import com.estrongs.android.util.w;
import java.io.File;

/* loaded from: classes.dex */
public class FexApplication extends Application {

    /* renamed from: a, reason: collision with root package name */
    public static FexApplication f325a = null;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f326b = false;
    private boolean c;
    private long d = -1;

    public static FexApplication a() {
        return f325a;
    }

    public static boolean e() {
        ActivityManager activityManager;
        try {
            if ("Market".equalsIgnoreCase("Market")) {
                return false;
            }
            FexApplication fexApplication = f325a;
            if (fexApplication == null) {
                fexApplication = f325a;
            }
            if (fexApplication != null && (activityManager = (ActivityManager) fexApplication.getSystemService("activity")) != null) {
                return ((Boolean) new aj(activityManager).a("isUserAMonkey")).booleanValue();
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    private void f() {
        m.a();
        if (m.r) {
            return;
        }
        f326b = true;
    }

    private void g() {
        File filesDir = getFilesDir();
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (filesDir != null) {
            com.estrongs.android.util.i.a(getFilesDir().getAbsolutePath());
            com.estrongs.fs.impl.local.h.a(getFilesDir().getAbsolutePath());
        } else {
            File dir = getDir("files", 3);
            if (dir.exists()) {
                com.estrongs.android.util.i.a(dir.getAbsolutePath());
                com.estrongs.fs.impl.local.h.a(dir.getAbsolutePath());
            } else if (!dir.mkdir()) {
            }
        }
        if (externalStorageDirectory != null) {
            try {
                File file = new File(a.d);
                if (!file.exists() && !file.mkdirs()) {
                    throw new Exception();
                }
                ax.a(a.d);
                w.a(a.d);
                com.estrongs.fs.impl.i.b.a(a.d, filesDir != null ? filesDir.getAbsolutePath() : a.d);
                SPFileSystem.setPath(a.d, filesDir != null ? filesDir.getAbsolutePath() : a.d);
                ao.a(filesDir != null ? filesDir.getAbsolutePath() : a.d);
            } catch (Exception e) {
                try {
                    ax.a(getCacheDir().getAbsolutePath());
                    w.a(getCacheDir().getAbsolutePath());
                    com.estrongs.fs.impl.i.b.a(getCacheDir().getAbsolutePath(), filesDir != null ? filesDir.getAbsolutePath() : a.d);
                    ao.a(filesDir != null ? filesDir.getAbsolutePath() : a.d);
                } catch (Exception e2) {
                }
            }
        }
    }

    public boolean b() {
        return this.c;
    }

    public void c() {
        this.c = true;
        if (this.d == -1 || System.currentTimeMillis() - this.d <= 3000) {
            return;
        }
        new Thread(new c(this)).start();
    }

    public void d() {
        this.c = false;
        this.d = System.currentTimeMillis();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public synchronized Resources getResources() {
        return com.estrongs.android.pop.esclasses.i.a(super.getResources());
    }

    @Override // android.app.Application
    public void onCreate() {
        f325a = this;
        f();
        b.c();
        com.estrongs.android.ui.d.a.a(this);
        com.estrongs.android.d.d.a(this);
        com.estrongs.fs.impl.g.b bVar = new com.estrongs.fs.impl.g.b();
        com.estrongs.fs.d.a("http", bVar);
        com.estrongs.fs.d.a("https", bVar);
        com.estrongs.fs.impl.f.a aVar = new com.estrongs.fs.impl.f.a();
        aVar.a("local", new com.estrongs.fs.impl.f.c(getContentResolver()));
        com.estrongs.fs.d.a("gallery", aVar);
        g();
        com.estrongs.android.ui.notification.c.b();
        if (bs.a()) {
            try {
                TokenShareManager.getInstance().init(this);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
