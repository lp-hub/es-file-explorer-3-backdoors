package com.estrongs.android.widget;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.FileChooserActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.bt;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2918a;

    /* renamed from: b, reason: collision with root package name */
    protected String f2919b;
    protected List<com.estrongs.fs.g> c;
    boolean d;
    protected com.estrongs.fs.k e;
    protected final com.estrongs.fs.l f;
    protected final com.estrongs.fs.l g;
    private ImageView h;
    private TextView i;
    private com.estrongs.android.view.ar j;
    private View k;
    private View l;
    private View m;
    private View n;
    private com.estrongs.fs.g o;
    private com.estrongs.fs.c.a.a p;
    private int q;
    private Activity r;
    private com.estrongs.android.ui.b.ag s;
    private com.estrongs.android.ui.theme.al t;
    private String u;
    private boolean v;

    public g(Activity activity, String str, com.estrongs.fs.h hVar) {
        this(activity, str, hVar, false);
    }

    public g(Activity activity, String str, com.estrongs.fs.h hVar, int i) {
        this.f2918a = false;
        this.c = new LinkedList();
        this.p = null;
        this.q = 0;
        this.u = null;
        this.e = new h(this);
        this.f = new com.estrongs.fs.l("phone-mnt-folder", true);
        this.g = new com.estrongs.fs.l("usb-mnt-folder", true);
        this.v = false;
        this.r = activity;
        this.q |= i;
        this.t = com.estrongs.android.ui.theme.al.a(this.r);
        this.s = new com.estrongs.android.ui.b.aq(activity).a(new n(this)).a();
        com.estrongs.android.d.d.a(com.estrongs.android.pop.q.a(activity).s());
        com.estrongs.android.d.d.a(this.f.c(), activity.getResources().getDrawable(C0000R.drawable.bt_type_phone02));
        com.estrongs.android.d.d.a(this.g.c(), activity.getResources().getDrawable(C0000R.drawable.net_ic));
        com.estrongs.fs.d.a("storage", this.e);
        a(activity);
        if (activity instanceof FileExplorerActivity) {
            this.f2918a = ((FileExplorerActivity) activity).Y();
        } else if (activity instanceof FileChooserActivity) {
            this.f2918a = ((FileChooserActivity) activity).a();
        }
        a(hVar);
        k();
        if (com.estrongs.android.pop.m.j && str != null && str.equals("/")) {
            str = null;
        }
        this.p = com.estrongs.android.pop.q.a(this.r).p(str);
        this.j.a(this.p);
        if (str != null) {
            this.j.a(str);
        } else {
            this.j.a("storage://");
        }
        this.u = str;
    }

    public g(Activity activity, String str, com.estrongs.fs.h hVar, boolean z) {
        this(activity, str, hVar, z, false);
    }

    public g(Activity activity, String str, com.estrongs.fs.h hVar, boolean z, boolean z2) {
        this(activity, str, hVar, a(z, z2));
    }

    private static int a(boolean z, boolean z2) {
        return (z2 ? 0 : 1) | (z ? 6 : 14);
    }

    private boolean c(String str) {
        try {
            String bo = com.estrongs.android.util.ak.bo(str);
            String str2 = !bo.endsWith("/") ? bo + "/" : bo;
            for (int i = 0; i < this.c.size(); i++) {
                String absolutePath = this.c.get(i).getAbsolutePath();
                if (!absolutePath.endsWith("/")) {
                    absolutePath = absolutePath + "/";
                }
                if (absolutePath.equals(str2)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        new j(this, str).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        synchronized (this.c) {
            this.c.clear();
            com.estrongs.android.pop.q a2 = com.estrongs.android.pop.q.a(this.r);
            y yVar = new y(this);
            this.c.addAll(f());
            if ((this.q & 8) != 0) {
                this.c.addAll(yVar.a(a2, "smb"));
                this.c.addAll(yVar.a(a2, "ftp"));
                this.c.addAll(yVar.a(a2, "kanbox"));
            }
        }
    }

    private void l() {
        this.l = this.s.setLeftButton(this.r.getString(C0000R.string.action_new), new l(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.estrongs.fs.g a(String str) {
        for (com.estrongs.fs.g gVar : this.c) {
            if (str != null && str.startsWith(gVar.getPath())) {
                return gVar;
            }
        }
        return null;
    }

    public void a() {
        this.j.g();
    }

    public void a(int i) {
        if (this.q != i) {
            this.q = i;
            k();
        }
    }

    public void a(Context context) {
        this.s.setTitle("File Browser");
        this.n = com.estrongs.android.pop.esclasses.e.a(context).inflate(C0000R.layout.file_picker, (ViewGroup) null);
        this.n.setMinimumHeight(1024);
        this.n.setMinimumWidth(LoginCallBack.REQUEST_LOGINPROTECT);
        this.s.setContentView(this.n);
        this.h = (ImageView) this.n.findViewById(C0000R.id.deviceIcon);
        this.i = (TextView) this.n.findViewById(C0000R.id.tvFilePath);
        this.k = this.n.findViewById(C0000R.id.titleBar);
        this.k.setBackgroundDrawable(com.estrongs.android.ui.theme.al.a(this.r).a(C0000R.drawable.popbox_moveto_path_bg, C0000R.drawable.popupbox_button_back_bg_click));
        this.k.setOnClickListener(new u(this));
    }

    public void a(DialogInterface.OnDismissListener onDismissListener) {
        this.s.setOnDismissListener(new i(this, onDismissListener));
    }

    public void a(bt btVar) {
        if (this.j != null) {
            this.j.a(btVar);
        }
    }

    protected void a(com.estrongs.fs.h hVar) {
        if (this.j == null) {
            this.j = new p(this, this.r, (ViewGroup) this.n, null, new o(this), false);
            this.j.i(true);
            this.j.a(new t(this));
            this.j.j(this.t.d(C0000R.color.popupbox_content_text));
            if (hVar != null) {
                this.j.b(hVar);
            }
            this.j.a(3);
        }
    }

    public void a(CharSequence charSequence) {
        this.s.setTitle(charSequence);
    }

    public void a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        if (onClickListener == null) {
            onClickListener = new v(this);
        }
        this.s.setSingleButton(charSequence, onClickListener);
        this.v = true;
    }

    public void a(boolean z) {
        this.j.i(z);
    }

    public void b() {
        if (this.i.getText().toString().startsWith("storage:")) {
            this.j.a("storage://");
        } else if (!c(this.j.c())) {
            this.j.j();
        } else {
            this.j.a("storage://");
            this.j.a((com.estrongs.fs.c.a.a) null);
        }
    }

    public void b(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        if (onClickListener == null) {
            onClickListener = new w(this);
        }
        if (com.estrongs.android.pop.p.a() > 10) {
            this.m = this.s.setRightButton(charSequence, onClickListener);
            this.m.setBackgroundResource(C0000R.drawable.popupbox_button_confirm_right_selector);
        } else {
            this.m = this.s.setMiddleButton(charSequence, onClickListener);
            this.m.setBackgroundResource(C0000R.drawable.popupbox_button_confirm_middle_selector);
        }
    }

    public void b(String str) {
        if (str == null) {
            str = "storage://";
        }
        this.o = a(str);
        if (str == null || !str.equalsIgnoreCase(this.j.c())) {
            this.j.a(str);
        } else {
            b(true);
        }
    }

    public void b(boolean z) {
        this.d = z;
    }

    public String c() {
        return this.j.c();
    }

    public void c(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        if (onClickListener == null) {
            onClickListener = new x(this);
        }
        if (com.estrongs.android.pop.p.a() > 10) {
            this.s.setMiddleButton(charSequence, onClickListener).setBackgroundResource(C0000R.drawable.popupbox_button_cancel_middle_selector);
        } else {
            this.s.setRightButton(charSequence, onClickListener).setBackgroundResource(C0000R.drawable.popupbox_button_cancel_right_selector);
        }
    }

    public boolean c(boolean z) {
        this.f2918a = z;
        return z;
    }

    public com.estrongs.fs.g d() {
        return this.j.b();
    }

    public String e() {
        return this.j.c();
    }

    protected List<com.estrongs.fs.g> f() {
        List<String> a2 = com.estrongs.android.util.ak.a();
        String b2 = com.estrongs.android.pop.b.b();
        LinkedList linkedList = new LinkedList();
        if ((this.q & 1) != 0 && !com.estrongs.android.pop.m.j) {
            linkedList.add(new ao(this.f, "/", this.r.getString(C0000R.string.location_root_directory)));
        }
        if ((this.q & 2) != 0 && a2.contains(b2)) {
            linkedList.add(new ao(this.g, b2, com.estrongs.android.pop.m.b(b2)));
        }
        if ((this.q & 4) != 0) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= a2.size()) {
                    break;
                }
                if (!b2.equals(a2.get(i2))) {
                    String c = com.estrongs.android.pop.m.c(a2.get(i2));
                    linkedList.add(new ao(this.g, a2.get(i2), c == null ? a2.get(i2) : c));
                }
                i = i2 + 1;
            }
        }
        return linkedList;
    }

    public boolean g() {
        if (this.s != null) {
            return this.s.isShowing();
        }
        return false;
    }

    public void h() {
        if (!this.v) {
            l();
        }
        this.s.show();
        if (this.d) {
            this.j.b("storage://".equals(this.j.c()));
        }
        this.d = false;
        this.j.I();
    }

    public void i() {
        this.s.dismiss();
    }

    public com.estrongs.android.ui.b.ag j() {
        return this.s;
    }
}
