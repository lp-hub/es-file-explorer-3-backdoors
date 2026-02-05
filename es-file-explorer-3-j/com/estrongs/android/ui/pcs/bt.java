package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.de;

/* loaded from: classes.dex */
public class bt implements v {

    /* renamed from: a, reason: collision with root package name */
    cj f2332a;

    /* renamed from: b, reason: collision with root package name */
    private Context f2333b;
    private View d;
    private View e;
    private View f;
    private View g;
    private com.estrongs.android.ui.b.ag h;
    private de i;
    private com.estrongs.android.pop.q j;
    private String k;
    private String l;
    private String m;
    private boolean n = false;
    private ViewFlipper c = FileExplorerActivity.E().J;

    public bt(Context context, String str) {
        this.k = null;
        this.f2333b = context;
        this.k = str;
        this.j = com.estrongs.android.pop.q.a(this.f2333b);
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(int i) {
        return this.f2333b.getString(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        TextView textView = (TextView) this.e.findViewById(C0000R.id.text1);
        TextView textView2 = (TextView) this.e.findViewById(C0000R.id.text2);
        View findViewById = this.e.findViewById(C0000R.id.seperator);
        Button button = (Button) this.e.findViewById(C0000R.id.button_right);
        if (z) {
            textView.setText(C0000R.string.pcs_upgrage_phone_registered);
            textView2.setVisibility(8);
            findViewById.setVisibility(0);
            button.setVisibility(0);
        } else {
            textView.setText(C0000R.string.pcs_upgrade_to_upgrade);
            textView2.setVisibility(0);
            findViewById.setVisibility(8);
            button.setVisibility(8);
        }
        EditText editText = (EditText) this.e.findViewById(C0000R.id.number);
        if (editText != null) {
            editText.setVisibility(0);
            editText.setHint(C0000R.string.pcs_register_number_hint);
        }
        this.e.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        return str != null && TextUtils.isDigitsOnly(str) && str.length() == 11;
    }

    public static boolean b() {
        String aB = com.estrongs.android.pop.q.a(FexApplication.a()).aB();
        if (aB == null || aB.length() == 0) {
            return c();
        }
        if (System.currentTimeMillis() - com.estrongs.android.pop.q.a(FexApplication.f325a).aA() <= 1800000) {
            return true;
        }
        com.estrongs.android.pop.q.a(FexApplication.a()).f(0L);
        com.estrongs.android.pop.q.a(FexApplication.a()).A("");
        return false;
    }

    private boolean b(String str) {
        return str != null && str.length() == 6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        com.estrongs.android.ui.view.z.a(this.f2333b, str, 0).show();
    }

    public static boolean c() {
        if (com.estrongs.android.pop.q.a(FexApplication.f325a).d() || aw.a().e() == 1) {
            return false;
        }
        if (((int) ((System.currentTimeMillis() - com.estrongs.android.pop.q.a(FexApplication.f325a).ax()) / 86400000)) <= 2) {
            return false;
        }
        com.estrongs.android.pop.q.a(FexApplication.f325a).b(0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d() {
        if (this.m != null) {
            return this.m;
        }
        this.m = "es" + (((int) (Math.random() * 9000.0d)) + LoginCallBack.REQUEST_LOGINPROTECT);
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        new Thread(new by(this, this.l, d(), str)).start();
    }

    private void e() {
        this.i = de.a(this.f2333b, this.f2333b.getString(C0000R.string.message_security_alert), this.f2333b.getString(C0000R.string.progress_connecting), true, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.i != null) {
            this.i.dismiss();
        }
    }

    private void g() {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        translateAnimation.setDuration(300L);
        this.c.setInAnimation(translateAnimation);
        TranslateAnimation translateAnimation2 = new TranslateAnimation(1, 0.0f, 1, -1.0f, 1, 0.0f, 1, 0.0f);
        translateAnimation2.setDuration(300L);
        this.c.setOutAnimation(translateAnimation2);
        this.c.setFocusable(true);
        this.c.setOnKeyListener(new bu(this));
    }

    private void h() {
        View inflate = FileExplorerActivity.E().u ? com.estrongs.android.pop.esclasses.e.a(this.f2333b).inflate(C0000R.layout.poster, (ViewGroup) null) : com.estrongs.android.pop.esclasses.e.a(this.f2333b).inflate(C0000R.layout.poster_lan, (ViewGroup) null);
        this.d = inflate;
        this.c.addView(inflate, 0);
        ((Button) inflate.findViewById(C0000R.id.content_button)).setOnClickListener(new cb(this));
    }

    private void i() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f2333b).inflate(C0000R.layout.pcs_upgrade_inner_view, (ViewGroup) null);
        EditText editText = (EditText) inflate.findViewById(C0000R.id.number);
        editText.setVisibility(0);
        editText.setHint(C0000R.string.pcs_register_number_hint);
        this.e = inflate;
        this.c.addView(inflate, 1);
        if (this.l != null && this.l.length() != 0) {
            editText.setText(this.l);
            editText.setVisibility(8);
        }
        Button button = (Button) inflate.findViewById(C0000R.id.button_left);
        button.setText(C0000R.string.pcs_upgrade_next);
        button.setOnClickListener(new cc(this, editText));
        Button button2 = (Button) inflate.findViewById(C0000R.id.button_right);
        button2.setText(C0000R.string.action_login);
        button2.setOnClickListener(new cd(this));
    }

    private void j() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f2333b).inflate(C0000R.layout.pcs_upgrade_inner_view, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(C0000R.id.text1);
        if (textView != null) {
            textView.setText(this.f2333b.getString(C0000R.string.pcs_upgrade_timeout_message));
        }
        TextView textView2 = (TextView) inflate.findViewById(C0000R.id.text2);
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        TextView textView3 = (TextView) inflate.findViewById(C0000R.id.text3);
        if (textView3 != null) {
            textView3.setText(this.f2333b.getString(C0000R.string.pcs_upgrade_another_number));
        }
        Button button = (Button) inflate.findViewById(C0000R.id.resend);
        if (button != null) {
            button.setVisibility(0);
            button.setOnClickListener(new ce(this));
        }
        EditText editText = (EditText) inflate.findViewById(C0000R.id.number);
        if (editText != null) {
            editText.setVisibility(0);
        }
        this.f = inflate;
        this.c.addView(this.f, 2);
        Button button2 = (Button) inflate.findViewById(C0000R.id.button_left);
        button2.setVisibility(0);
        button2.setText(C0000R.string.pcs_upgrade_last);
        button2.setOnClickListener(new cf(this));
        inflate.findViewById(C0000R.id.seperator).setVisibility(0);
        Button button3 = (Button) inflate.findViewById(C0000R.id.button_right);
        button3.setVisibility(0);
        button3.setText(C0000R.string.pcs_upgrade_next);
        button3.setOnClickListener(new cg(this, editText));
    }

    private void k() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f2333b).inflate(C0000R.layout.pcs_upgrade_dialog, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(C0000R.id.text1);
        if (textView != null) {
            textView.setText(C0000R.string.pcs_verify_cancel_message);
        }
        TextView textView2 = (TextView) inflate.findViewById(C0000R.id.text2);
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        this.h = new com.estrongs.android.ui.b.aq(this.f2333b).a(C0000R.string.message_hint).a(inflate, new FrameLayout.LayoutParams(-1, -2)).a();
        this.h.setCancelButton(this.f2333b.getString(C0000R.string.confirm_cancel), new ch(this));
        this.h.setConfirmButton(this.f2333b.getString(C0000R.string.confirm_ok), new ci(this));
        this.h.setCanceledOnTouchOutside(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.c.removeAllViews();
        FileExplorerActivity.E().T();
    }

    private boolean m() {
        Button button;
        return this.c.getCurrentView().equals(this.f) && (button = (Button) this.f.findViewById(C0000R.id.resend)) != null && button.isEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        Button button = (Button) this.f.findViewById(C0000R.id.resend);
        if (button != null) {
            button.setTextColor(this.f2333b.getResources().getColor(C0000R.color.popupbox_content_text));
            button.setEnabled(true);
        }
        TextView textView = (TextView) this.f.findViewById(C0000R.id.text3);
        if (textView != null) {
            textView.setVisibility(0);
        }
        Button button2 = (Button) this.f.findViewById(C0000R.id.button_left);
        button2.setTextColor(this.f2333b.getResources().getColor(C0000R.color.white));
        button2.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        Button button = (Button) this.f.findViewById(C0000R.id.resend);
        if (button != null) {
            button.setTextColor(this.f2333b.getResources().getColor(C0000R.color.popupbox_content_text_disable));
            button.setEnabled(false);
        }
        TextView textView = (TextView) this.f.findViewById(C0000R.id.text3);
        if (textView != null) {
            textView.setVisibility(8);
        }
        Button button2 = (Button) this.f.findViewById(C0000R.id.button_left);
        button2.setTextColor(this.f2333b.getResources().getColor(C0000R.color.popupbox_content_text_disable));
        button2.setEnabled(false);
    }

    private void p() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f2333b).inflate(C0000R.layout.pcs_upgrade_inner_view, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(C0000R.id.text1);
        if (textView != null) {
            textView.setText(C0000R.string.pcs_upgrade_success_message);
        }
        this.g = inflate;
        this.c.addView(inflate, 3);
        Button button = (Button) inflate.findViewById(C0000R.id.button_left);
        button.setText(C0000R.string.pcs_upgrade_change_password);
        button.setOnClickListener(new bv(this));
        inflate.findViewById(C0000R.id.seperator).setVisibility(0);
        Button button2 = (Button) inflate.findViewById(C0000R.id.button_right);
        button2.setVisibility(0);
        button2.setText(C0000R.string.action_login);
        button2.setOnClickListener(new bw(this));
    }

    private void q() {
        this.f2332a = new cj(this);
        if (this.c.getChildCount() != 0) {
            this.c.removeAllViews();
        }
        if (com.estrongs.android.pop.utils.bw.a()) {
            this.l = com.estrongs.android.pop.utils.bw.c();
        }
        if (!a(this.l)) {
            this.l = null;
        }
        if (this.l != null) {
            this.n = true;
        }
        g();
        h();
        i();
        j();
        p();
        k();
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 != null) {
            if (this.l == null) {
                a2.c("Phone_no", "Phone_no");
            } else {
                a2.c("Phone_get", "Phone_get");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        new Thread(new bx(this, this.l)).start();
        c(a(C0000R.string.pcs_register_getvcode));
    }

    private void s() {
        String aB = com.estrongs.android.pop.q.a(this.f2333b).aB();
        if (aB == null || aB.length() == 0) {
            return;
        }
        String[] split = aB.split(":");
        if (split.length == 2 && a(split[0]) && b(split[1])) {
            this.l = split[0];
            this.m = split[1];
        }
    }

    private void t() {
        this.j.e(System.currentTimeMillis());
        long aA = com.estrongs.android.pop.q.a(this.f2333b).aA();
        s();
        if (aA > 0 && System.currentTimeMillis() - aA < 1800000 && a(this.l) && b(this.m)) {
            n();
            this.c.setDisplayedChild(this.c.indexOfChild(this.f));
            FileExplorerActivity.E().a(this);
            return;
        }
        if ((this.l == null || this.l.length() == 0) && com.estrongs.android.pop.utils.bw.a()) {
            e();
            new Thread(new bz(this)).start();
        } else {
            FileExplorerActivity.E().a(this);
        }
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 != null) {
            a2.a("Press_Normalize", "Press_Normalize");
            a2.b("Normalize_UV", "Normalize_UV");
        }
    }

    public void a() {
        t();
    }

    public void a(Configuration configuration) {
        if (this.c.getCurrentView().equals(this.d)) {
            this.c.removeView(this.d);
            h();
            this.c.setDisplayedChild(0);
        }
    }

    @Override // com.estrongs.android.ui.pcs.v
    public void a(boolean z, String str, String str2) {
        if (z) {
            l();
            String path = com.estrongs.fs.impl.pcs.b.a().getPath();
            FileExplorerActivity E = FileExplorerActivity.E();
            if (E != null) {
                com.estrongs.android.view.ar t = E.t();
                if (t != null) {
                    if (com.estrongs.android.util.ak.d(path, t.c())) {
                        if (com.estrongs.android.util.ak.ao(path) && com.estrongs.android.util.aw.b((CharSequence) aw.a().g()) && !aw.a().g().equals(aw.a().f())) {
                            com.estrongs.fs.impl.i.b.l(aw.a().i());
                        }
                        t.b(true);
                    } else {
                        if (com.estrongs.android.util.aw.b((CharSequence) aw.a().g()) && !aw.a().g().equals(aw.a().f())) {
                            com.estrongs.fs.impl.i.b.l(aw.a().i());
                        }
                        if (com.estrongs.android.util.ak.ao(t.c())) {
                            t.a(path);
                        } else {
                            t.a("pcs://");
                        }
                    }
                }
                com.estrongs.fs.a.b.a().a(com.estrongs.android.util.ak.g(), (String) null);
                if (com.estrongs.android.util.aw.b((CharSequence) aw.a().g())) {
                    com.estrongs.fs.a.b.a().a(aw.a().i(), (String) null);
                }
                E.z();
                com.estrongs.fs.impl.pcs.b.a().setFileType(com.estrongs.fs.l.N);
                com.estrongs.android.pop.q.a(this.f2333b).d(System.currentTimeMillis());
            }
        }
    }

    public boolean a(int i, KeyEvent keyEvent) {
        if (!FileExplorerActivity.E().U() || i != 4) {
            return true;
        }
        if (this.c.getCurrentView().equals(this.e)) {
            this.h.show();
            return true;
        }
        if (!this.c.getCurrentView().equals(this.f) || !m()) {
            return true;
        }
        this.h.show();
        return true;
    }
}
