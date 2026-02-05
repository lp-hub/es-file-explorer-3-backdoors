package com.estrongs.android.view;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.math.BigDecimal;

/* loaded from: classes.dex */
public class ch extends cq {

    /* renamed from: a, reason: collision with root package name */
    boolean f2809a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f2810b;
    public final com.estrongs.a.a.h c;
    public TextView d;
    public TextView e;
    public TextView f;
    public TextView g;
    public TextView h;
    private ProgressBar i;
    private View j;
    private View k;
    private int l;
    private int m;
    private int n;
    private String o;
    private boolean p;
    private int q;
    private int r;

    public ch(Activity activity, ViewGroup viewGroup, String str) {
        super(activity, viewGroup, viewGroup == null);
        this.f2809a = true;
        this.f2810b = new ci(this);
        this.c = new cj(this);
        this.m = 0;
        this.n = 0;
        this.d = (TextView) l(C0000R.id.message);
        this.i = (ProgressBar) l(C0000R.id.progress_bar);
        this.e = (TextView) l(C0000R.id.precent);
        this.f = (TextView) l(C0000R.id.completed);
        this.g = (TextView) l(C0000R.id.total);
        this.h = (TextView) l(C0000R.id.speed);
        this.j = l(C0000R.id.foot_percent);
        this.k = l(C0000R.id.foot_speed);
        if (str != null) {
            this.p = true;
            this.d.setText(str);
            this.d.setSingleLine(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double a(long j, long j2) {
        if (j2 == 0) {
            return 1.0d;
        }
        return new BigDecimal((((float) j) / ((float) j2)) * 100.0f).setScale(2, 4).doubleValue();
    }

    @Override // com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.progress;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(com.estrongs.a.a.i iVar) {
        if (com.estrongs.android.util.aw.a((CharSequence) iVar.f196a)) {
            return null;
        }
        return com.estrongs.android.util.ak.B(iVar.f196a);
    }

    public void a(int i) {
        this.l = i;
        this.f2810b.sendEmptyMessage(3);
    }

    public void a(long j) {
        this.m = (int) j;
        this.f2810b.sendEmptyMessage(1);
    }

    public void a(String str) {
        this.o = str;
        this.f2810b.sendEmptyMessage(5);
    }

    public void b() {
        this.f2810b.sendEmptyMessage(6);
    }

    public void b(long j) {
        this.n = (int) j;
        this.f2810b.sendEmptyMessage(4);
    }

    public void c(long j) {
        this.q = (int) j;
        this.f2810b.sendEmptyMessage(7);
    }

    public void d(long j) {
        this.r = (int) j;
        this.f2810b.sendEmptyMessage(8);
    }
}
