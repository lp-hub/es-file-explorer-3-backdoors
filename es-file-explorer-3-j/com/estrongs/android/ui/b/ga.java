package com.estrongs.android.ui.b;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;

/* loaded from: classes.dex */
public class ga {
    private static String r = null;

    /* renamed from: a, reason: collision with root package name */
    private Context f1845a;

    /* renamed from: b, reason: collision with root package name */
    private ag f1846b;
    private ProgressBar c;
    private ProgressBar d;
    private LinearLayout e;
    private LinearLayout f;
    private LinearLayout g;
    private TextView h;
    private TextView i;
    private TextView j;
    private ImageView k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private com.estrongs.android.util.x p;
    private boolean q;
    private String s;
    private List<String> t;
    private String u;
    private Handler v;
    private DialogInterface.OnClickListener w;
    private DialogInterface.OnClickListener x;

    public ga(Context context, int i, gh ghVar, int i2) {
        this.c = null;
        this.d = null;
        this.k = null;
        this.l = 1;
        this.m = 0;
        this.n = 0;
        this.o = false;
        this.p = null;
        this.q = false;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = new gb(this);
        this.w = new gc(this);
        this.x = new gd(this);
        this.f1845a = context;
        this.l = i;
        this.s = ghVar.f1853b;
        this.t = new ArrayList();
        this.t.addAll(ghVar.c);
        this.m = i2;
        c();
    }

    public ga(Context context, int i, String str) {
        this.c = null;
        this.d = null;
        this.k = null;
        this.l = 1;
        this.m = 0;
        this.n = 0;
        this.o = false;
        this.p = null;
        this.q = false;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = new gb(this);
        this.w = new gc(this);
        this.x = new gd(this);
        this.f1845a = context;
        this.l = i;
        this.u = str;
        c();
    }

    private String a(int i) {
        return this.f1845a.getString(i);
    }

    public static void a(Handler handler, String str) {
        com.estrongs.android.util.x xVar = new com.estrongs.android.util.x(str);
        xVar.getClass();
        xVar.c = 1;
        xVar.d = handler;
        xVar.a((Object) xVar);
        xVar.a(new gg());
        xVar.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static gh b(String str) {
        try {
            gh ghVar = new gh();
            Map map = (Map) new JSONParser().parse(str);
            if (map == null) {
                return null;
            }
            ghVar.f1852a = (String) map.get("version");
            ghVar.f1853b = (String) map.get("market");
            JSONArray jSONArray = (JSONArray) map.get("urls");
            if (jSONArray instanceof JSONArray) {
                ghVar.c = new ArrayList();
                Iterator it = jSONArray.iterator();
                while (it.hasNext()) {
                    String str2 = (String) ((Map) it.next()).get("url");
                    if (str2 != null) {
                        ghVar.c.add(str2);
                    }
                }
            }
            if (ghVar.c.size() == 0) {
                return null;
            }
            return ghVar;
        } catch (Exception e) {
            return null;
        }
    }

    private void c() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f1845a).inflate(C0000R.layout.filemgr_upgrade, (ViewGroup) null);
        this.g = (LinearLayout) inflate.findViewById(C0000R.id.filemgr_upgrade_layout);
        this.c = (ProgressBar) inflate.findViewById(C0000R.id.upgrade_checking);
        this.d = (ProgressBar) inflate.findViewById(C0000R.id.upgrade_download_progress);
        this.e = (LinearLayout) inflate.findViewById(C0000R.id.upgrade_auto_cfg_layout);
        this.f = (LinearLayout) inflate.findViewById(C0000R.id.upgrade_download_progresss_text_layout);
        this.h = (TextView) inflate.findViewById(C0000R.id.upgrade_show_info);
        this.k = (ImageView) inflate.findViewById(C0000R.id.upgrade_disable_auto_check);
        this.j = (TextView) inflate.findViewById(C0000R.id.upgrade_download_size);
        this.i = (TextView) inflate.findViewById(C0000R.id.upgrade_download_percent);
        this.d.setMax(LoginCallBack.REQUEST_LOGINPROTECT);
        this.f1846b = new aq(this.f1845a).a(C0000R.string.recommend_button_upgrade).a(inflate).b(C0000R.string.recommend_button_upgrade, this.w).c(C0000R.string.confirm_ok, this.x).a();
        this.k.setOnClickListener(new ge(this));
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.q) {
            return;
        }
        if (this.l == 1) {
            this.h.setText(a(C0000R.string.upgrade_checking));
            this.c.setVisibility(0);
            this.d.setVisibility(8);
            this.e.setVisibility(8);
            this.f.setVisibility(8);
            this.f1846b.setSingleButton(a(C0000R.string.confirm_ok), this.x);
            a(this.v, this.u);
            return;
        }
        if (this.l == 2) {
            this.c.setVisibility(8);
            this.f.setVisibility(8);
            this.d.setVisibility(8);
            if (this.m == 0) {
                this.h.setText(a(C0000R.string.upgrade_is_latest));
                return;
            }
            if (this.m == 1) {
                this.h.setText(a(C0000R.string.upgrade_found_update));
                this.f1846b.setConfirmButton(a(C0000R.string.recommend_button_upgrade), this.w);
                this.f1846b.setCancelButton(a(C0000R.string.confirm_cancel), this.x);
                return;
            } else {
                if (this.m == 2) {
                    this.h.setText(a(C0000R.string.upgrade_net_error));
                    return;
                }
                return;
            }
        }
        if (this.l == 3) {
            this.h.setText(a(C0000R.string.progress_downloading));
            this.f.setVisibility(0);
            this.d.setVisibility(0);
            this.e.setVisibility(8);
            this.f1846b.setSingleButton(a(C0000R.string.confirm_ok), this.x);
            return;
        }
        if (this.l == 4) {
            if (this.n != 9) {
                this.h.setText(a(C0000R.string.recommend_button_download_fail));
                return;
            }
            this.h.setText(a(C0000R.string.upgrade_download_ok));
            this.f1846b.setConfirmButton(a(C0000R.string.button_install), this.w);
            this.f1846b.setCancelButton(a(C0000R.string.confirm_ok), this.x);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        try {
            if (!f()) {
                throw new ActivityNotFoundException();
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(this.s));
            if (this.f1845a instanceof FileExplorerActivity) {
                ((FileExplorerActivity) this.f1845a).a(intent);
            } else {
                this.f1845a.startActivity(intent);
            }
            b();
            return false;
        } catch (ActivityNotFoundException e) {
            String str = this.t.get(0);
            this.p = new com.estrongs.android.util.x(str);
            this.p.a((Object) this.p);
            this.p.a(com.estrongs.android.pop.a.c + "/" + str.hashCode() + ".apk");
            this.p.a((com.estrongs.android.util.aa) new gf(this));
            this.p.c();
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    private boolean f() {
        PackageManager packageManager = this.f1845a.getPackageManager();
        for (String str : new String[]{"com.android.vending", "com.qihoo.appstore", "cn.goapk.market"}) {
            if (packageManager.getPackageInfo(str, 0) != null) {
                return true;
            }
        }
        return false;
    }

    public void a() {
        this.f1846b.show();
    }

    public void b() {
        this.f1846b.dismiss();
    }
}
