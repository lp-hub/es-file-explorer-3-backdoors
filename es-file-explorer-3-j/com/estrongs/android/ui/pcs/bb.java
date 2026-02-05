package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.baidu.sapi2.BDAccountManager;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.widget.ESViewStub;
import com.estrongs.android.widget.SlidingDrawer;

/* loaded from: classes.dex */
public class bb {
    private boolean A;
    private boolean D;

    /* renamed from: b, reason: collision with root package name */
    bo f2308b;
    private Context c;
    private SlidingDrawer d;
    private View e;
    private ViewFlipper f;
    private View g;
    private View h;
    private EditText i;
    private Button j;
    private ProgressBar k;
    private EditText l;
    private EditText m;
    private TextView n;
    private CheckBox r;
    private Button s;
    private ProgressBar t;
    private TextView u;
    private boolean v;
    private com.estrongs.android.pop.q x;
    private ag y;
    private String z;
    private ImageView o = null;
    private LinearLayout p = null;
    private EditText q = null;
    private boolean w = false;
    private String B = null;
    private boolean C = false;

    /* renamed from: a, reason: collision with root package name */
    bi f2307a = new bi(this);

    public bb(Context context, View view, String str) {
        this.z = null;
        this.c = context;
        this.z = str;
        this.D = this.z != null;
        this.x = com.estrongs.android.pop.q.a(this.c);
        if (view instanceof ESViewStub) {
            ESViewStub eSViewStub = (ESViewStub) view;
            eSViewStub.b(C0000R.layout.pcs_upgrade_drawer);
            eSViewStub.a(C0000R.id.pcs_upgrade_stub);
            eSViewStub.a(com.estrongs.android.pop.esclasses.e.a(this.c));
            this.d = (SlidingDrawer) eSViewStub.a();
        } else if (view instanceof SlidingDrawer) {
            this.d = (SlidingDrawer) view;
        }
        this.e = this.d.f();
        this.d.a(new bc(this));
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(int i) {
        return this.c.getString(i);
    }

    private void a(View view) {
        ((ViewGroup) view.getParent()).removeView(view);
    }

    private void a(String str, String str2) {
        this.x.f(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        return str != null && TextUtils.isDigitsOnly(str) && str.length() == 11;
    }

    private void g() {
        this.f2308b = new bo(this, this);
        this.f = (ViewFlipper) this.e.findViewById(C0000R.id.pcs_upgrade_flipper);
        i();
        this.g = com.estrongs.android.pop.esclasses.e.a(this.c).inflate(C0000R.layout.pcs_register_page1, (ViewGroup) null);
        this.h = com.estrongs.android.pop.esclasses.e.a(this.c).inflate(C0000R.layout.pcs_register_page2, (ViewGroup) null);
        this.f.addView(this.g, new FrameLayout.LayoutParams(-1, -2));
        this.f.addView(this.h, new FrameLayout.LayoutParams(-1, -2));
        this.q = (EditText) this.f.findViewById(C0000R.id.verifycode);
        this.o = (ImageView) this.f.findViewById(C0000R.id.verifycodeImg);
        this.p = (LinearLayout) this.f.findViewById(C0000R.id.verifycode_layout);
        this.i = (EditText) this.f.findViewById(C0000R.id.number);
        this.i.setText(h());
        this.j = (Button) this.f.findViewById(C0000R.id.confirm);
        this.j.setText(C0000R.string.pcs_normal_title);
        this.j.setOnClickListener(new bd(this));
        this.k = (ProgressBar) this.f.findViewById(C0000R.id.progress);
        this.k.setVisibility(4);
        this.l = (EditText) this.f.findViewById(C0000R.id.code);
        this.n = (TextView) this.f.findViewById(C0000R.id.label);
        ((Button) this.f.findViewById(C0000R.id.resend_code)).setOnClickListener(new be(this));
        this.m = (EditText) this.f.findViewById(C0000R.id.password);
        this.r = (CheckBox) this.f.findViewById(C0000R.id.agreement);
        a((View) this.r.getParent());
        a(this.g.findViewById(C0000R.id.divider));
        this.t = (ProgressBar) this.f.findViewById(C0000R.id.register_progress);
        this.t.setVisibility(4);
        this.s = (Button) this.f.findViewById(C0000R.id.register);
        this.s.setText(this.c.getString(C0000R.string.progress_done));
        this.s.setOnClickListener(new bf(this));
        this.u = (TextView) this.f.findViewById(C0000R.id.message_register);
        a(this.u);
    }

    private String h() {
        String line1Number = ((TelephonyManager) this.c.getSystemService(BDAccountManager.KEY_PHONE)).getLine1Number();
        return (line1Number == null || !line1Number.startsWith("+86")) ? line1Number : line1Number.substring(3);
    }

    private void i() {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        translateAnimation.setDuration(300L);
        this.f.setInAnimation(translateAnimation);
        TranslateAnimation translateAnimation2 = new TranslateAnimation(1, 0.0f, 1, -1.0f, 1, 0.0f, 1, 0.0f);
        translateAnimation2.setDuration(300L);
        this.f.setOutAnimation(translateAnimation2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.f.getDisplayedChild() == 0) {
            this.f.showNext();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        String obj = this.i.getText().toString();
        this.w = true;
        if (this.D) {
            this.f2308b.f2326b = true;
            new Thread(new bg(this, obj)).start();
        } else {
            this.f2307a.a();
        }
        bo.a(this.f2308b, 3, this.c.getString(C0000R.string.pcs_register_getvcode));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        String obj = this.i.getText().toString();
        String obj2 = this.m.getText().toString();
        String obj3 = this.l.getText().toString();
        if (this.D) {
            new Thread(new bh(this, obj, obj2, obj3)).start();
        } else {
            this.f2308b.a();
        }
    }

    public void a() {
        this.d.setVisibility(0);
        this.A = true;
    }

    public void a(ag agVar) {
        this.y = agVar;
    }

    public void a(String str) {
        if (str == null) {
            if (this.y != null) {
                this.y.a(null);
                return;
            }
            return;
        }
        a((String) null, str);
        aw a2 = aw.a();
        if (a2 != null) {
            a2.a(1);
            a2.a(str);
        }
        if (this.y != null) {
            this.y.a(str);
        }
        com.estrongs.android.util.a a3 = com.estrongs.android.util.a.a();
        if (a3 != null) {
            a3.a("Normal_Register", "Normal_Register");
        }
    }

    public void b() {
        c();
        if (this.C) {
            return;
        }
        a(this.B);
    }

    public void c() {
        this.d.setVisibility(8);
        this.A = false;
    }

    public boolean d() {
        return this.A;
    }

    public boolean e() {
        return this.d.g();
    }

    public void f() {
        this.d.d();
    }
}
