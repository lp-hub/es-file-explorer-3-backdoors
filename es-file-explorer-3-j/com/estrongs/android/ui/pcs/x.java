package com.estrongs.android.ui.pcs;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.telephony.TelephonyManager;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.text.style.URLSpan;
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
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
public class x {
    private static String c = "PCSReg";
    private aw A;
    private ag B;
    private String C;
    private boolean D;
    private boolean E;

    /* renamed from: a, reason: collision with root package name */
    ah f2385a;

    /* renamed from: b, reason: collision with root package name */
    an f2386b;
    private String d;
    private boolean e;
    private Context f;
    private com.estrongs.android.ui.b.ag g;
    private View h;
    private ViewFlipper i;
    private View j;
    private View k;
    private EditText l;
    private Button m;
    private ProgressBar n;
    private EditText o;
    private EditText p;
    private TextView q;
    private ImageView r;
    private LinearLayout s;
    private EditText t;
    private CheckBox u;
    private Button v;
    private TextView w;
    private boolean x;
    private boolean y;
    private com.estrongs.android.pop.q z;

    public x(Context context) {
        this(context, null);
        this.E = false;
    }

    public x(Context context, String str) {
        this.d = null;
        this.e = false;
        this.r = null;
        this.s = null;
        this.t = null;
        this.y = false;
        this.C = null;
        this.D = false;
        this.f2385a = new ah(this);
        this.C = str;
        this.f = context;
        this.z = com.estrongs.android.pop.q.a(this.f);
        this.A = aw.a();
        this.E = this.C != null;
        d();
    }

    private void a(String str, String str2) {
        this.z.f(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(String str) {
        return str != null && TextUtils.isDigitsOnly(str) && str.length() == 11;
    }

    @SuppressLint({"NewApi"})
    private void d() {
        this.f2386b = new an(this, this);
        this.i = f();
        this.j = com.estrongs.android.pop.esclasses.e.a(this.f).inflate(C0000R.layout.pcs_register_page1, (ViewGroup) null);
        this.k = com.estrongs.android.pop.esclasses.e.a(this.f).inflate(C0000R.layout.pcs_register_page2, (ViewGroup) null);
        this.i.addView(this.j, new FrameLayout.LayoutParams(-1, -2, 16));
        this.i.addView(this.k, new FrameLayout.LayoutParams(-1, -2, 16));
        this.h = this.i;
        this.t = (EditText) this.h.findViewById(C0000R.id.verifycode);
        this.r = (ImageView) this.h.findViewById(C0000R.id.verifycodeImg);
        this.s = (LinearLayout) this.h.findViewById(C0000R.id.verifycode_layout);
        this.l = (EditText) this.h.findViewById(C0000R.id.number);
        this.m = (Button) this.h.findViewById(C0000R.id.confirm);
        this.m.setOnClickListener(new y(this));
        this.n = (ProgressBar) this.h.findViewById(C0000R.id.progress);
        this.n.setVisibility(4);
        this.o = (EditText) this.h.findViewById(C0000R.id.code);
        this.q = (TextView) this.h.findViewById(C0000R.id.label);
        this.p = (EditText) this.h.findViewById(C0000R.id.password);
        this.u = (CheckBox) this.h.findViewById(C0000R.id.agreement);
        this.x = this.u.isChecked();
        this.u.setOnCheckedChangeListener(new z(this));
        TextView textView = (TextView) this.h.findViewById(C0000R.id.agreement_text);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(textView.getText());
        spannableStringBuilder.setSpan(new URLSpan("http://passport.baidu.com/protocal.html"), 7, 15, 33);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f.getResources().getColor(C0000R.color.blue_link)), 7, 15, 33);
        textView.setText(spannableStringBuilder);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        ((Button) this.h.findViewById(C0000R.id.resend_code)).setOnClickListener(new aa(this));
        this.v = (Button) this.h.findViewById(C0000R.id.register);
        this.v.setOnClickListener(new ab(this));
        this.w = (TextView) this.h.findViewById(C0000R.id.message_register);
        if (com.estrongs.android.pop.m.F) {
            this.h.findViewById(C0000R.id.divider).setVisibility(8);
            ((View) this.w.getParent()).setVisibility(8);
        } else {
            this.w.setOnClickListener(new ac(this));
        }
        this.g = new com.estrongs.android.ui.b.aq(this.f).a(C0000R.string.pcs_register_title).a(this.h, new FrameLayout.LayoutParams(-1, -2)).a();
        this.g.setOnDismissListener(new ad(this));
        this.g.setCanceledOnTouchOutside(false);
        if (this.E) {
            this.g.setTitle(this.f.getString(C0000R.string.pcs_normal_title));
            this.h.findViewById(C0000R.id.divider).setVisibility(8);
            ((View) this.w.getParent()).setVisibility(8);
            this.v.setText(this.f.getString(C0000R.string.pcs_normal_finish));
            a(i());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.i.getDisplayedChild() == 0) {
            this.n.setVisibility(4);
            this.i.showNext();
        }
    }

    private ViewFlipper f() {
        ViewFlipper viewFlipper = new ViewFlipper(this.f);
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        translateAnimation.setDuration(300L);
        viewFlipper.setInAnimation(translateAnimation);
        TranslateAnimation translateAnimation2 = new TranslateAnimation(1, 0.0f, 1, -1.0f, 1, 0.0f, 1, 0.0f);
        translateAnimation2.setDuration(300L);
        viewFlipper.setOutAnimation(translateAnimation2);
        return viewFlipper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        String obj = this.l.getText().toString();
        this.y = true;
        if (this.C != null) {
            this.f2386b.f2286b = true;
            new Thread(new ae(this, obj)).start();
        } else {
            this.f2385a.a();
        }
        this.f2386b.a(3, this.f.getString(C0000R.string.pcs_register_getvcode));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        String obj = this.l.getText().toString();
        String obj2 = this.p.getText().toString();
        String obj3 = this.o.getText().toString();
        if (this.E) {
            new Thread(new af(this, obj, obj2, obj3)).start();
        } else {
            this.f2386b.a();
        }
    }

    private String i() {
        return ((TelephonyManager) this.f.getSystemService(BDAccountManager.KEY_PHONE)).getLine1Number();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(int i) {
        return this.f.getString(i);
    }

    public void a() {
        this.D = true;
        this.g.show();
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 != null) {
            a2.a("Press_Register", "Press_Register");
        }
    }

    public void a(DialogInterface.OnCancelListener onCancelListener) {
        this.g.setOnCancelListener(onCancelListener);
    }

    public void a(DialogInterface.OnDismissListener onDismissListener) {
        this.g.setOnDismissListener(onDismissListener);
    }

    public void a(ag agVar) {
        this.B = agVar;
    }

    public void a(String str) {
        this.l.setText(str);
    }

    public void b(String str) {
        if (str == null) {
            if (this.B != null) {
                this.B.a(null);
                return;
            }
            return;
        }
        a((String) null, str);
        if (this.A != null) {
            this.A.a(1);
            this.A.a(str);
        }
        if (this.B != null) {
            this.B.a(str);
        }
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 != null) {
            a2.a("Normal_Register", "Normal_Register");
        }
        try {
            com.estrongs.android.view.ar t = FileExplorerActivity.E().t();
            com.estrongs.android.pop.q a3 = com.estrongs.android.pop.q.a(this.f);
            String bp = com.estrongs.android.util.ak.bp(a3.e("Market"));
            if (t != null && t.c() != null && com.estrongs.android.util.ak.d(bp, t.c()) && a3.n() && com.estrongs.android.pop.m.I) {
                t.b(true);
            }
        } catch (Exception e) {
        }
    }

    public boolean b() {
        return this.D;
    }

    public void c() {
        this.g.dismiss();
    }
}
