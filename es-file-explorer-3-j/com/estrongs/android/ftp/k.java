package com.estrongs.android.ftp;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import com.estrongs.android.pop.ftp.ESFtpShortcut;

/* loaded from: classes.dex */
public class k {
    private static k d = null;
    private ESFtpService c = null;

    /* renamed from: a, reason: collision with root package name */
    public Integer f322a = 0;

    /* renamed from: b, reason: collision with root package name */
    boolean f323b = false;
    private m e = null;
    private ServiceConnection f = new l(this);

    public static synchronized k a() {
        k kVar;
        synchronized (k.class) {
            if (d == null) {
                d = new k();
            }
            kVar = d;
        }
        return kVar;
    }

    public static void a(Context context) {
        if (context == null) {
            Log.e("ESFtpServer", "Failed to closeFtpServer - context is null.");
        }
        try {
            if (a().b().i()) {
                Intent intent = new Intent(context, (Class<?>) ESFtpShortcut.class);
                intent.putExtra("mode", 2);
                context.startActivity(intent);
            }
        } catch (Exception e) {
        }
    }

    public a a(String str, String str2, int i, String str3) {
        return this.c.a(str, str2, i, str3);
    }

    public void a(Context context, m mVar) {
        synchronized (this.f322a) {
            Integer num = this.f322a;
            this.f322a = Integer.valueOf(this.f322a.intValue() + 1);
        }
        if (this.f323b) {
            mVar.a();
        } else {
            context.bindService(new Intent(context, (Class<?>) ESFtpService.class), this.f, 1);
            this.e = mVar;
        }
    }

    public void a(String str) {
        this.c.a(str);
    }

    public void a(String str, String str2) {
        this.c.a(str, str2);
    }

    public a b() {
        return this.c.a();
    }

    public void b(Context context) {
        synchronized (this.f322a) {
            Integer num = this.f322a;
            this.f322a = Integer.valueOf(this.f322a.intValue() - 1);
        }
        if (this.f323b && this.f322a.intValue() == 0) {
            try {
                context.unbindService(this.f);
            } catch (Exception e) {
            }
        }
    }

    public void c() {
        this.c.b();
    }

    public int d() {
        return this.c.c();
    }

    public boolean e() {
        return this.c.e();
    }

    public boolean f() {
        return this.c.f();
    }

    public boolean g() {
        return this.f323b;
    }
}
