package com.estrongs.android.pop.app.b;

import android.app.Activity;
import android.content.Intent;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.bt.OBEXFtpServerService;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.fr;
import com.estrongs.android.util.aw;
import com.estrongs.android.view.ar;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Timer;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f471a = false;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f472b = false;
    public static boolean c = false;
    public static boolean d = true;
    private static a h;
    private com.estrongs.fs.b.h f;
    private boolean e = false;
    private Timer g = new Timer();
    private Object i = null;
    private Method j = null;
    private Method k = null;
    private Method l = null;
    private boolean m = false;

    private a() {
    }

    public static a a() {
        if (h == null) {
            h = new a();
        }
        return h;
    }

    private boolean k() {
        boolean z = true;
        if (this.i != null) {
            return true;
        }
        try {
            Class<?> cls = Class.forName("android.bluetooth.BluetoothAdapter");
            this.i = cls.getMethod("getDefaultAdapter", new Class[0]).invoke(null, new Object[0]);
            if (this.i == null) {
                com.estrongs.android.ui.view.z.a(FexApplication.a(), C0000R.string.bluetooth_not_support, 1).show();
                z = false;
            } else {
                this.j = cls.getMethod("isEnabled", new Class[0]);
                this.k = cls.getMethod("disable", new Class[0]);
                this.l = cls.getMethod("getScanMode", new Class[0]);
            }
            return z;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            return false;
        }
    }

    private boolean l() {
        try {
            if (this.i != null || k()) {
                return ((Boolean) this.j.invoke(this.i, new Object[0])).booleanValue();
            }
            return false;
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    private boolean m() {
        try {
            if (this.i != null || k()) {
                return ((Boolean) this.k.invoke(this.i, new Object[0])).booleanValue();
            }
            return false;
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    private boolean n() {
        try {
            if (this.i != null || k()) {
                return ((Integer) this.l.invoke(this.i, new Object[0])).intValue() == 23;
            }
            return false;
        } catch (IllegalAccessException e) {
            return false;
        } catch (InvocationTargetException e2) {
            return false;
        }
    }

    private void o() {
        if (this.e) {
            if (h() != null) {
                com.estrongs.fs.impl.c.a.c(h());
                h().stopService(new Intent().setClassName(h(), OBEXFtpServerService.class.getName()));
            }
            this.e = false;
        }
    }

    public boolean a(boolean z) {
        if (!aw.a()) {
            if (!z) {
                return false;
            }
            com.estrongs.android.ui.view.z.a(FexApplication.a(), C0000R.string.bluetooth_not_supported_in_android_16, 1).show();
            return false;
        }
        if (!l()) {
            if (!z) {
                return false;
            }
            com.estrongs.android.ui.view.z.a(FexApplication.a(), C0000R.string.bt_not_enabled, 1).show();
            return false;
        }
        if (!n() && h() != null) {
            Intent intent = new Intent("android.bluetooth.adapter.action.REQUEST_DISCOVERABLE");
            intent.putExtra("android.bluetooth.adapter.extra.DISCOVERABLE_DURATION", 300);
            intent.putExtra("android.bluetooth.adapter.extra.SCAN_MODE", 23);
            h().startActivityForResult(intent, 268439562);
        }
        return true;
    }

    public boolean b() {
        if (!aw.a()) {
            com.estrongs.android.ui.view.z.a(FexApplication.a(), C0000R.string.bluetooth_not_supported_in_android_16, 1).show();
            return false;
        }
        if (!l()) {
            c = true;
            c();
            return true;
        }
        if (com.estrongs.fs.impl.c.a.a()) {
            com.estrongs.android.ui.view.z.a(FexApplication.a(), C0000R.string.lan_scan_running, 1).show();
            if (h() == null) {
                return true;
            }
            new fr(h(), FexApplication.a().getString(C0000R.string.progress_loading), this.f).show();
            return true;
        }
        if (h() == null) {
            return true;
        }
        this.f = new com.estrongs.fs.b.h();
        this.f.setDescription(FexApplication.a().getString(C0000R.string.wait_toast_bt_scan));
        new fr(h(), FexApplication.a().getString(C0000R.string.progress_loading), this.f).show();
        this.f.execute();
        d = false;
        return true;
    }

    public void c() {
        if (!aw.a()) {
            com.estrongs.android.ui.view.z.a(FexApplication.a(), C0000R.string.bluetooth_not_supported_in_android_16, 1).show();
            return;
        }
        if (l()) {
            if (this.e) {
                return;
            }
            e();
            return;
        }
        try {
            com.estrongs.fs.impl.c.a.e();
            if (h() != null) {
                h().startActivity(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"));
            }
        } catch (Exception e) {
            com.estrongs.android.ui.view.z.a(FexApplication.a(), C0000R.string.bt_not_enabled, 1).show();
        }
    }

    public void d() {
        if (!aw.a()) {
            com.estrongs.android.ui.view.z.a(FexApplication.a(), C0000R.string.bluetooth_not_supported_in_android_16, 1).show();
        } else if (l()) {
            if (this.e) {
                o();
            }
            m();
        }
    }

    public void e() {
        ar t;
        if (this.e || this.m) {
            return;
        }
        this.m = true;
        if (h() != null) {
            com.estrongs.fs.impl.c.a.b(h());
            h().startService(new Intent().setClassName(h(), OBEXFtpServerService.class.getName()));
        }
        this.e = true;
        FileExplorerActivity E = FileExplorerActivity.E();
        if (E != null && (t = E.t()) != null) {
            t.b(true);
        }
        f();
        this.m = false;
    }

    public boolean f() {
        return a(true);
    }

    public void g() {
        try {
            if (h() != null && this.e) {
                com.estrongs.fs.impl.c.a.c(h());
                h().stopService(new Intent().setClassName(h(), OBEXFtpServerService.class.getName()));
                this.e = false;
            }
            if (f472b) {
                com.estrongs.fs.impl.c.a.f();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Activity h() {
        return FileExplorerActivity.D();
    }

    public void i() {
        if (this.g == null) {
            this.g = new Timer();
        }
        this.g.schedule(new b(this), 302000L);
    }

    public void j() {
        if (this.g == null) {
            return;
        }
        try {
            this.g.cancel();
            this.g = null;
        } catch (IllegalStateException e) {
        }
    }
}
