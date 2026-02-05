package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cj {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f2354a;

    /* renamed from: b, reason: collision with root package name */
    private int f2355b = 60;
    private Handler c = new ck(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public cj(bt btVar) {
        this.f2354a = btVar;
    }

    private void a() {
        this.f2355b = 60;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, Object obj) {
        String a2;
        String a3;
        ViewFlipper viewFlipper;
        View view;
        Context context;
        Context context2;
        String str;
        String d;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        ViewFlipper viewFlipper2;
        switch (i) {
            case 0:
                bt btVar = this.f2354a;
                a3 = this.f2354a.a(C0000R.string.pcs_register_smssent);
                btVar.c(a3);
                viewFlipper = this.f2354a.c;
                View currentView = viewFlipper.getCurrentView();
                view = this.f2354a.e;
                if (currentView.equals(view)) {
                    viewFlipper2 = this.f2354a.c;
                    viewFlipper2.showNext();
                }
                a();
                b();
                context = this.f2354a.f2333b;
                com.estrongs.android.pop.q.a(context).f(System.currentTimeMillis());
                context2 = this.f2354a.f2333b;
                com.estrongs.android.pop.q a4 = com.estrongs.android.pop.q.a(context2);
                StringBuilder sb = new StringBuilder();
                str = this.f2354a.l;
                StringBuilder append = sb.append(str).append(":");
                d = this.f2354a.d();
                a4.A(append.append(d).toString());
                context3 = this.f2354a.f2333b;
                com.estrongs.android.pop.q a5 = com.estrongs.android.pop.q.a(context3);
                context4 = this.f2354a.f2333b;
                a5.b(com.estrongs.android.pop.q.a(context4).aC() + 1);
                context5 = this.f2354a.f2333b;
                if (com.estrongs.android.pop.q.a(context5).aC() >= 3) {
                    context6 = this.f2354a.f2333b;
                    com.estrongs.android.pop.q.a(context6).A("");
                }
                this.f2354a.a(false);
                return;
            case 1:
            default:
                String str2 = obj instanceof String ? (String) obj : null;
                if (str2 == null) {
                    str2 = this.f2354a.a(C0000R.string.cannot_regist);
                }
                this.f2354a.c(str2);
                return;
            case 2:
                this.f2354a.a(true);
                bt btVar2 = this.f2354a;
                a2 = this.f2354a.a(C0000R.string.phone_registed);
                btVar2.c(a2);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        View view;
        Context context;
        Context context2;
        Context context3;
        view = this.f2354a.f;
        TextView textView = (TextView) view.findViewById(C0000R.id.text1);
        this.c.removeMessages(3);
        if (this.f2355b <= 0) {
            this.f2354a.n();
            if (textView != null) {
                context = this.f2354a.f2333b;
                textView.setText(context.getString(C0000R.string.pcs_upgrade_timeout_message));
                return;
            }
            return;
        }
        this.f2354a.o();
        Handler handler = this.c;
        Handler handler2 = this.c;
        int i = this.f2355b - 1;
        this.f2355b = i;
        handler.sendMessageDelayed(handler2.obtainMessage(3, 0, i), 1000L);
        if (textView != null) {
            StringBuilder sb = new StringBuilder();
            context2 = this.f2354a.f2333b;
            StringBuilder append = sb.append(context2.getString(C0000R.string.pcs_upgrade_wait_message)).append(" ( ").append(this.f2355b).append(" ");
            context3 = this.f2354a.f2333b;
            textView.setText(append.append(context3.getString(C0000R.string.time_seconds)).append(" )").toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, Object obj) {
        View view;
        ViewFlipper viewFlipper;
        View view2;
        Context context;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        Context context7;
        ViewFlipper viewFlipper2;
        String a2;
        String a3;
        String str;
        String a4;
        String a5;
        String d;
        String a6;
        switch (i) {
            case 0:
                view = this.f2354a.g;
                TextView textView = (TextView) view.findViewById(C0000R.id.text2);
                if (textView != null) {
                    StringBuilder sb = new StringBuilder();
                    a2 = this.f2354a.a(C0000R.string.network_account);
                    StringBuilder append = sb.append(a2).append(" ");
                    a3 = this.f2354a.a(C0000R.string.colon);
                    StringBuilder append2 = append.append(a3).append(" ");
                    str = this.f2354a.l;
                    StringBuilder append3 = append2.append(str).append("\n");
                    a4 = this.f2354a.a(C0000R.string.input_password);
                    StringBuilder append4 = append3.append(a4).append(" ");
                    a5 = this.f2354a.a(C0000R.string.colon);
                    StringBuilder append5 = append4.append(a5).append(" ");
                    d = this.f2354a.d();
                    StringBuilder append6 = append5.append(d).append("  ");
                    a6 = this.f2354a.a(C0000R.string.pcs_upgrade_password_alert);
                    textView.setText(append6.append(a6).toString());
                }
                textView.setTextColor(-1);
                viewFlipper = this.f2354a.c;
                View currentView = viewFlipper.getCurrentView();
                view2 = this.f2354a.f;
                if (currentView.equals(view2)) {
                    viewFlipper2 = this.f2354a.c;
                    viewFlipper2.showNext();
                }
                aw a7 = aw.a();
                if (a7 != null) {
                    a7.a(0);
                    a7.a((String) null);
                }
                context = this.f2354a.f2333b;
                com.estrongs.android.pop.q.a(context).f(null, null);
                context2 = this.f2354a.f2333b;
                if (context2 instanceof FileExplorerActivity) {
                    context6 = this.f2354a.f2333b;
                    com.estrongs.android.view.ar t = ((FileExplorerActivity) context6).t();
                    if (t != null) {
                        com.estrongs.fs.impl.i.b.l(t.c());
                        t.G();
                        context7 = this.f2354a.f2333b;
                        com.estrongs.android.pop.q.a(context7).c();
                    }
                }
                context3 = this.f2354a.f2333b;
                com.estrongs.android.pop.q.a(context3).f(0L);
                context4 = this.f2354a.f2333b;
                com.estrongs.android.pop.q.a(context4).A("");
                context5 = this.f2354a.f2333b;
                com.estrongs.android.pop.q.a(context5).b(0);
                com.estrongs.android.util.a a8 = com.estrongs.android.util.a.a();
                if (a8 != null) {
                    a8.b("PCS_Upgrade_UV", "PCS_Upgrade_UV");
                    return;
                }
                return;
            default:
                String str2 = obj instanceof String ? (String) obj : null;
                if (str2 == null) {
                    str2 = this.f2354a.a(C0000R.string.cannot_regist);
                }
                this.f2354a.c(str2);
                return;
        }
    }
}
