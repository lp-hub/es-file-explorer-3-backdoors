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
public class af extends cq {
    private View A;
    private View B;
    private long C;
    private long D;
    private String E;
    private String F;
    private String G;
    private long H;
    private long I;
    private int J;
    private int K;

    /* renamed from: a, reason: collision with root package name */
    boolean f2732a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f2733b;
    public final com.estrongs.a.a.h c;
    String d;
    String e;
    private long f;
    private long g;
    private int h;
    private ProgressBar i;
    private ProgressBar j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private TextView s;
    private TextView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private View x;
    private View y;
    private View z;

    public af(Activity activity, ViewGroup viewGroup, String str, String str2) {
        super(activity, viewGroup, viewGroup == null);
        this.f2732a = true;
        this.f2733b = new ag(this);
        this.c = new ah(this);
        this.h = -1;
        this.C = 0L;
        this.D = 0L;
        this.d = null;
        this.e = null;
        this.k = (TextView) l(C0000R.id.message);
        this.l = (TextView) l(C0000R.id.message_t);
        this.m = (TextView) l(C0000R.id.curr_message);
        this.z = l(C0000R.id.from_to_panel);
        this.A = l(C0000R.id.time_remaining_panel);
        this.n = (TextView) l(C0000R.id.from);
        this.o = (TextView) l(C0000R.id.to);
        this.p = (TextView) l(C0000R.id.item_progress_title);
        this.q = (TextView) l(C0000R.id.total_progress_title);
        this.r = (TextView) l(C0000R.id.total_percent);
        this.i = (ProgressBar) l(C0000R.id.total_progress_bar);
        this.x = l(C0000R.id.item_progress_panel);
        this.y = l(C0000R.id.total_progress_panel);
        this.s = (TextView) l(C0000R.id.item_percent);
        this.t = (TextView) l(C0000R.id.num_completed);
        this.u = (TextView) l(C0000R.id.num_total);
        this.v = (TextView) l(C0000R.id.time_remaining);
        this.w = (TextView) l(C0000R.id.speed);
        this.j = (ProgressBar) l(C0000R.id.item_progress_bar);
        this.B = l(C0000R.id.prompt);
        if (str == null || "".equals(str)) {
            this.n.setVisibility(8);
            l(C0000R.id.from_).setVisibility(8);
        } else {
            this.n.setText(str);
        }
        if (str2 != null && !"".equals(str2)) {
            this.o.setText(str2);
        } else {
            this.o.setVisibility(8);
            l(C0000R.id.to_).setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double a(long j, long j2) {
        if (j == 0 || j2 == 0) {
            return 0.0d;
        }
        return new BigDecimal((((float) j) / ((float) j2)) * 100.0f).setScale(2, 4).doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(long j, int i) {
        if (j <= 0) {
            return "00:00:00";
        }
        if (i <= 0) {
            return this.ad.getString(C0000R.string.msg_computing);
        }
        long j2 = j / i;
        if (j2 > 15) {
            if (this.h == -1) {
                this.g = j2;
                this.f = System.currentTimeMillis();
                this.h = 0;
            } else if (this.h < 5) {
                int round = (int) Math.round((System.currentTimeMillis() - this.f) / 1000.0d);
                int i2 = (int) (this.g - round);
                if (i2 > 0) {
                    j2 = i2;
                }
                this.h = round;
            } else {
                this.g = j2;
                this.f = System.currentTimeMillis();
                this.h = 0;
            }
        }
        int i3 = (int) (j2 / 3600);
        int i4 = (int) ((j2 - (i3 * 3600)) / 60);
        int i5 = (int) ((j2 - (i3 * 3600)) - (i4 * 60));
        return (i3 < 10 ? "0" + i3 : Integer.valueOf(i3)) + ":" + (i4 < 10 ? "0" + i4 : Integer.valueOf(i4)) + ":" + (i5 < 10 ? "0" + i5 : Integer.valueOf(i5));
    }

    @Override // com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.double_progress;
    }

    public void a(int i) {
        this.J = i;
        this.f2733b.sendEmptyMessage(9);
    }

    public void a(long j) {
        this.C = j;
        this.f2733b.sendEmptyMessage(1);
    }

    public void a(String str) {
        this.f2733b.sendMessage(this.f2733b.obtainMessage(12, str));
    }

    public void a(String str, String str2) {
        this.E = str;
        this.F = str2;
        this.f2733b.sendEmptyMessage(5);
    }

    public void a(boolean z) {
        this.f2732a = z;
    }

    public void b() {
        this.v.setText("");
        this.w.setText("");
    }

    public void b(int i) {
        this.K = i;
        this.f2733b.sendEmptyMessage(10);
    }

    public void b(long j) {
        this.D = j;
        this.f2733b.sendEmptyMessage(4);
    }

    public void b(String str, String str2) {
        this.d = str;
        this.e = str2;
    }

    public void c() {
        this.f2733b.sendEmptyMessage(13);
    }

    public void c(int i) {
        this.A.setVisibility(i);
    }

    public void c(long j) {
        this.H = j;
        this.f2733b.sendEmptyMessage(7);
    }

    public void d(int i) {
        this.x.setVisibility(i);
    }

    public void d(long j) {
        this.I = j;
        this.f2733b.sendEmptyMessage(8);
    }

    public void e(int i) {
        this.y.setVisibility(i);
    }
}
