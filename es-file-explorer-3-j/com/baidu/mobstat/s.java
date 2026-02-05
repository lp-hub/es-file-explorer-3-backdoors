package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.app.Fragment;
import com.baidu.sapi2.callback.LoginCallBack;
import java.lang.ref.WeakReference;
import jcifs.smb.SmbConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s {

    /* renamed from: b, reason: collision with root package name */
    private static Handler f167b;
    private WeakReference<Context> g;
    private WeakReference<Fragment> h;
    private WeakReference<Object> i;

    /* renamed from: a, reason: collision with root package name */
    private static HandlerThread f166a = new HandlerThread("SessionAnalysisThread");
    private static s k = new s();
    private long c = 0;
    private long d = 0;
    private long e = 0;
    private long f = 0;
    private q j = new q();
    private int l = -1;
    private boolean m = true;
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;
    private boolean q = false;
    private String r = null;

    private s() {
        f166a.start();
        f166a.setPriority(10);
        f167b = new Handler(f166a.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Context a(Object obj) {
        try {
            return (Context) obj.getClass().getMethod("getActivity", new Class[0]).invoke(obj, new Object[0]);
        } catch (Throwable th) {
            com.baidu.mobstat.a.c.a(th.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        if (context == null) {
            com.baidu.mobstat.a.c.a("stat", "clearLastSession(Context context):context=null");
        } else {
            com.baidu.mobstat.a.b.a(false, context, "__local_last_session.json", "{}", false);
        }
    }

    private void a(boolean z) {
        this.m = z;
    }

    public static s b() {
        return k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context, long j) {
        com.baidu.mobstat.a.c.a("stat", "flush current session to last_session.json");
        new JSONObject();
        JSONObject c = this.j.c();
        try {
            c.put("e", j);
        } catch (JSONException e) {
            com.baidu.mobstat.a.c.a("stat", "StatSession.flushSession() failed");
        }
        String jSONObject = c.toString();
        com.baidu.mobstat.a.c.a("stat", "cacheString=" + jSONObject);
        com.baidu.mobstat.a.b.a(false, context, "__local_last_session.json", jSONObject, false);
    }

    private boolean e() {
        return this.m;
    }

    public int a() {
        if (this.l == -1) {
            this.l = SmbConstants.DEFAULT_RESPONSE_TIMEOUT;
        }
        return this.l;
    }

    public void a(int i) {
        this.l = i * LoginCallBack.REQUEST_LOGINPROTECT;
    }

    public void a(Context context, long j) {
        com.baidu.mobstat.a.c.a("stat", "AnalysisResume job");
        if (this.n) {
            com.baidu.mobstat.a.c.c("stat", "遗漏StatService.onPause() || missing StatService.onPause()");
        }
        this.n = true;
        if (e()) {
            com.baidu.mobstat.a.c.a("is_first_resume=true");
            a(false);
            f167b.post(new t(this));
        } else {
            com.baidu.mobstat.a.c.a("stat", " is_first_resume=false");
        }
        f167b.post(new y(this, this.c, j, context, null, null, 1));
        this.g = new WeakReference<>(context);
        this.d = j;
    }

    public void a(Context context, long j, String str) {
        com.baidu.mobstat.a.c.a("stat", "AnalysisPageStart");
        if (this.q) {
            com.baidu.mobstat.a.c.c("stat", "遗漏StatService.onPageEnd() || missing StatService.onPageEnd()");
        }
        this.q = true;
        if (e()) {
            com.baidu.mobstat.a.c.b("PPPPPPPPPPPPP is_first_resume=true");
            a(false);
            f167b.post(new u(this));
        } else {
            com.baidu.mobstat.a.c.a("stat", " is_first_resume=false");
        }
        f167b.post(new y(this, this.c, j, context, null, null, 1));
        this.r = str;
        this.g = new WeakReference<>(context);
        this.d = j;
    }

    public void a(Fragment fragment, long j) {
        com.baidu.mobstat.a.c.a("stat", "post resume job");
        if (this.o) {
            com.baidu.mobstat.a.c.c("stat", "遗漏StatService.onPause() || missing StatService.onPause()");
        }
        this.o = true;
        if (e()) {
            com.baidu.mobstat.a.c.a("stat", "is_first_resume=true");
            a(false);
            f167b.post(new v(this));
        } else {
            com.baidu.mobstat.a.c.a("stat", "is_first_resume=false");
        }
        f167b.post(new y(this, this.c, j, null, fragment, null, 2));
        this.h = new WeakReference<>(fragment);
        this.e = j;
    }

    public void a(Object obj, long j) {
        com.baidu.mobstat.a.c.a("stat", "post resume job");
        if (this.p) {
            com.baidu.mobstat.a.c.c("stat", "遗漏StatService.onPause() || missing StatService.onPause()");
        }
        this.p = true;
        if (e()) {
            com.baidu.mobstat.a.c.a("stat", "is_first_resume=true");
            a(false);
            f167b.post(new w(this));
        } else {
            com.baidu.mobstat.a.c.a("stat", "is_first_resume=false");
        }
        f167b.post(new y(this, this.c, j, null, null, obj, 3));
        this.i = new WeakReference<>(obj);
        this.f = j;
    }

    public void b(Context context, long j) {
        com.baidu.mobstat.a.c.a("stat", "post pause job");
        if (!this.n) {
            com.baidu.mobstat.a.c.c("stat", "遗漏StatService.onResume() || missing StatService.onResume()");
            return;
        }
        this.n = false;
        f167b.post(new x(this, j, context, null, this.d, this.g.get(), null, 1, null, null, null));
        this.c = j;
    }

    public void b(Context context, long j, String str) {
        com.baidu.mobstat.a.c.a("stat", "post pause job");
        if (!this.q) {
            com.baidu.mobstat.a.c.c("stat", "Please check (1)遗漏StatService.onPageStart() || missing StatService.onPageStart()");
            return;
        }
        this.q = false;
        if (this.r == null || !this.r.equals(str)) {
            com.baidu.mobstat.a.c.c("stat", "Please check the reason : (1)遗漏StatService.onPageStart() || missing StatService.onPageStart() || (2)页面的起始和结束不是同一页面 || The page " + str + " name is not equal to the page end " + this.r + "");
        } else {
            f167b.post(new x(this, j, context, null, this.d, this.g.get(), null, 1, str, null, null));
            this.c = j;
        }
    }

    public void b(Fragment fragment, long j) {
        com.baidu.mobstat.a.c.a("stat", "post pause job");
        if (!this.o) {
            com.baidu.mobstat.a.c.c("stat", "遗漏android.support.v4.app.Fragment StatService.onResume() || android.support.v4.app.Fragment missing StatService.onResume()");
            return;
        }
        this.o = false;
        f167b.post(new x(this, j, null, fragment, this.e, null, this.h.get(), 2, null, null, null));
        this.c = j;
    }

    public void b(Object obj, long j) {
        com.baidu.mobstat.a.c.a("stat", "post pause job");
        if (!this.p) {
            com.baidu.mobstat.a.c.c("stat", "遗漏android.app.Fragment StatService.onResume() || android.app.Fragment missing StatService.onResume()");
            return;
        }
        this.p = false;
        f167b.post(new x(this, j, null, null, this.f, null, null, 3, null, this.i.get(), obj));
        this.c = j;
    }

    public void c() {
        this.j.a(this.j.d() + 1);
    }

    public long d() {
        return this.j.a();
    }
}
