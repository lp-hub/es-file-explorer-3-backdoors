package com.estrongs.io.archive;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.pop.app.compress.l;
import com.estrongs.android.ui.view.z;
import java.math.BigDecimal;
import java.text.MessageFormat;

/* loaded from: classes.dex */
public class d extends Handler {

    /* renamed from: b, reason: collision with root package name */
    public String f3214b;
    public String e;
    private Context j;
    private String k;
    private TextView l;
    private TextView m;
    private TextView n;
    private TextView p;
    private TextView q;
    private TextView r;
    private String s;
    private l t;
    private com.estrongs.android.ui.notification.c u;
    public long c = 1;
    public int d = 0;
    public long f = 0;
    public int g = 0;

    /* renamed from: a, reason: collision with root package name */
    private long f3213a = 0;
    private String h = "";
    private int i = 0;
    private ProgressBar o = null;

    public d(Context context, l lVar, String str) {
        this.j = context;
        this.t = lVar;
        this.k = str;
        this.u = new com.estrongs.android.ui.notification.c(context);
        if (this.t == null) {
            this.u.a(C0000R.drawable.notification_compress);
            this.u.b(context.getResources().getString(C0000R.string.progress_compressing));
        } else {
            this.u.a(C0000R.drawable.notification_extract);
            this.u.b(context.getResources().getString(C0000R.string.progress_decompressing));
        }
        this.u.a(true);
        Intent intent = new Intent();
        intent.setClassName(FexApplication.a().getPackageName(), ShowDialogActivity.class.getName());
        intent.putExtra("compress", true);
        intent.putExtra("application", FexApplication.a().toString());
        intent.putExtra("notification_id", this.u.f());
        this.u.a(intent, true);
        this.u.c();
    }

    private static double a(long j, long j2) {
        if (j2 == 0) {
            return 1.0d;
        }
        return new BigDecimal((((float) j) / ((float) j2)) * 100.0f).setScale(2, 4).doubleValue();
    }

    public void a(ProgressBar progressBar) {
        this.o = progressBar;
    }

    public void a(TextView textView) {
        this.n = textView;
    }

    public void a(String str) {
    }

    public void b(TextView textView) {
        this.l = textView;
    }

    public void b(String str) {
        this.s = str;
        if (this.t == null) {
            this.u.c(this.s);
        }
    }

    public void c(TextView textView) {
        this.m = textView;
    }

    public void c(String str) {
        this.u.c(str);
    }

    public void d(TextView textView) {
        this.p = textView;
    }

    public void e(TextView textView) {
        this.q = textView;
    }

    public void f(TextView textView) {
        this.r = textView;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (2 == message.what) {
            String format = this.k != null ? this.k.indexOf("{0}") < 0 ? "" + message.obj : MessageFormat.format(this.k, message.obj) : "" + message.obj;
            Log.e("ArchiveHandler", format);
            z.a(this.j, format, 1).show();
            if (this.t != null) {
                this.t.c();
            }
            this.u.e();
        }
        if (1 == message.what) {
            this.o.setProgress(this.i);
            this.u.c(this.i);
            if (message.obj != null) {
                z.a(this.j, MessageFormat.format(this.j.getString(C0000R.string.msg_finished_compressing_file), message.obj.toString()), 1).show();
            }
            if (message.arg1 == 10) {
                Intent intent = new Intent("com.estrongs.android.intent.action.ARCHIVE_DONE");
                intent.putExtra("output_path", this.s);
                ((Activity) this.j).sendBroadcast(intent);
            } else if (this.t != null) {
                this.t.c();
            }
            this.u.e();
        }
        if (3 == message.what) {
            a(message.obj.toString());
            return;
        }
        if (4 == message.what) {
            this.m.setText("" + this.d);
            this.f3213a = com.estrongs.fs.c.d.a(this.c);
            this.h = com.estrongs.fs.c.d.b(this.f3213a);
            if (this.f3213a == 0) {
                this.f3213a = 1L;
            }
            this.r.setText(new BigDecimal(this.c / this.f3213a).setScale(2, 4).doubleValue() + this.h);
            this.i = Integer.MAX_VALUE;
            this.o.setMax(this.i);
            this.u.b(this.i);
            return;
        }
        if (6 != message.what) {
            if (5 == message.what) {
                this.n.setText(this.e);
                this.l.setText("" + this.g);
                return;
            }
            return;
        }
        long a2 = com.estrongs.fs.c.d.a(this.f);
        this.q.setText(new BigDecimal(this.f / a2).setScale(2, 4).doubleValue() + com.estrongs.fs.c.d.b(a2));
        double a3 = a(this.f, this.c);
        if (this.f > this.c) {
            a3 = 98.0d;
        }
        int i = (int) (this.i * (a3 / 100.0d));
        this.p.setText(a3 + "%");
        if (a3 >= 100.0d) {
            this.o.setProgress(this.i);
            this.u.c(this.i);
        } else {
            int i2 = i >= this.i ? this.i - (this.i / 10) : i;
            this.o.setProgress(i2);
            this.u.c(i2);
        }
    }
}
