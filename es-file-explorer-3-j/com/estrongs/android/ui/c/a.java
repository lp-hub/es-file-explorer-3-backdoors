package com.estrongs.android.ui.c;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.android.view.cq;
import java.math.BigDecimal;

/* loaded from: classes.dex */
public class a extends cq {

    /* renamed from: a, reason: collision with root package name */
    boolean f1892a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f1893b;
    public final com.estrongs.a.a.h c;
    public TextView d;
    public TextView e;
    public TextView f;
    public TextView g;
    public TextView h;
    private int i;
    private ProgressBar j;
    private View k;
    private View l;
    private int m;
    private long n;
    private long o;
    private String p;
    private boolean q;
    private long r;
    private long s;
    private String t;

    public a(Activity activity, ViewGroup viewGroup) {
        this(activity, viewGroup, null);
    }

    public a(Activity activity, ViewGroup viewGroup, String str) {
        super(activity, viewGroup, viewGroup == null);
        this.f1892a = true;
        this.i = 1;
        this.f1893b = new b(this);
        this.c = new c(this);
        this.n = 0L;
        this.o = 0L;
        this.t = null;
        this.d = (TextView) l(C0000R.id.message);
        this.j = (ProgressBar) l(C0000R.id.progress_bar);
        this.e = (TextView) l(C0000R.id.precent);
        this.f = (TextView) l(C0000R.id.completed);
        this.g = (TextView) l(C0000R.id.total);
        this.h = (TextView) l(C0000R.id.speed);
        this.k = l(C0000R.id.foot_percent);
        this.l = l(C0000R.id.foot_speed);
        if (str != null) {
            this.q = true;
            this.d.setText(str);
            this.d.setSingleLine(false);
        }
    }

    private double a(long j, long j2) {
        if (j2 == 0) {
            return 1.0d;
        }
        if (j >= j2) {
            return 100.0d;
        }
        return new BigDecimal((((float) j) / ((float) j2)) * 100.0f).setScale(2, 4).doubleValue();
    }

    private void a(TextView textView, String str) {
        if (textView != null) {
            textView.setText(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.l != null) {
            this.l.setVisibility(0);
        }
        if (this.h != null) {
            this.h.setText((this.f1892a ? com.estrongs.fs.c.d.c(this.m) : String.valueOf(this.m)) + "/s");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        String c = this.f1892a ? com.estrongs.fs.c.d.c(this.n) : String.valueOf(this.n);
        if (this.k != null) {
            this.k.setVisibility(0);
        }
        if (this.g != null) {
            this.g.setText(c);
        }
        this.j.setIndeterminate(false);
        if (this.n > 2147483647L) {
            this.i = 100;
        }
        this.j.setMax(((int) this.n) / this.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.j.setProgress(((int) this.o) / this.i);
        if (this.f != null) {
            this.f.setText(this.f1892a ? com.estrongs.fs.c.d.c(this.o) : String.valueOf(this.o));
        }
        if (aw.b((CharSequence) this.t)) {
            this.e.setText(this.t);
        } else {
            this.e.setText(String.valueOf((int) a(this.o, this.n)) + "%");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        String c = this.f1892a ? com.estrongs.fs.c.d.c(this.r) : String.valueOf(this.r);
        if (this.k != null) {
            this.k.setVisibility(0);
        }
        if (this.g != null) {
            this.g.setText(c);
        }
        this.j.setVisibility(0);
        this.j.setIndeterminate(false);
        if (this.r > 2147483647L) {
            this.i = 100;
        }
        this.j.setMax(((int) this.r) / this.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        this.j.setProgress(((int) this.s) / this.i);
        if (this.f != null) {
            this.f.setText(this.f1892a ? com.estrongs.fs.c.d.c(this.s) : String.valueOf(this.s));
        }
        this.e.setText(String.valueOf((int) a(this.s, this.r)) + "%");
    }

    @Override // com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.progress;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(com.estrongs.a.a.i iVar) {
        if (aw.a((CharSequence) iVar.f196a)) {
            return null;
        }
        return ak.B(iVar.f196a);
    }

    public void a(int i) {
        this.m = i;
        this.f1893b.sendEmptyMessage(3);
    }

    public void a(long j) {
        this.n = j;
        this.f1893b.sendEmptyMessage(1);
    }

    public void a(String str) {
        this.p = str;
        this.f1893b.sendEmptyMessage(5);
    }

    public void b() {
        this.f1893b.sendEmptyMessage(6);
    }

    public void b(long j) {
        this.o = j;
        this.f1893b.sendEmptyMessage(4);
    }

    public void b(String str) {
        this.p = str;
        this.d.setText(this.p);
    }

    public void c() {
        this.j.setIndeterminate(true);
    }

    public void c(long j) {
        this.r = j;
        this.f1893b.sendEmptyMessage(7);
    }

    public void c(String str) {
        this.t = str;
    }

    public void d() {
        this.j.setVisibility(0);
    }

    public void d(long j) {
        this.s = j;
        this.f1893b.sendEmptyMessage(8);
    }

    public void e() {
        this.j.setVisibility(8);
    }

    public void e(long j) {
        this.n = j;
        h();
    }

    public void f() {
        this.m = 0;
        this.n = 0L;
        this.o = 0L;
        this.p = null;
        this.q = false;
        this.r = 0L;
        this.s = 0L;
        this.t = null;
        this.j.setIndeterminate(true);
        a(this.g, (String) null);
        a(this.f, (String) null);
        a(this.e, (String) null);
        a(this.d, (String) null);
        a(this.h, (String) null);
    }

    public void f(long j) {
        this.o = j;
        i();
    }
}
