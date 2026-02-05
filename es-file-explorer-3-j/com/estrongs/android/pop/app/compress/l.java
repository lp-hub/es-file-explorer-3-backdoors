package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.DialogInterface;
import android.os.HandlerThread;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.io.File;
import java.util.List;

/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f615a = false;
    private String A;
    private DialogInterface.OnDismissListener B;
    private am C;
    private Context c;
    private com.estrongs.android.ui.b.ag d;
    private com.estrongs.io.archive.d e;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private TextView k;
    private TextView l;
    private View m;
    private com.estrongs.io.a.a.a n;
    private boolean r;
    private boolean s;
    private String t;
    private String u;
    private String v;
    private String w;
    private List<String> x;
    private int y;
    private ProgressBar f = null;
    private com.estrongs.android.ui.b.ag o = null;
    private as p = null;
    private HandlerThread q = null;
    private com.estrongs.io.archive.h z = null;

    /* renamed from: b, reason: collision with root package name */
    boolean f616b = false;

    public l(Context context, String str, String str2, String str3, String str4, List<String> list, boolean z, boolean z2, int i, DialogInterface.OnDismissListener onDismissListener) {
        this.r = false;
        this.s = false;
        this.y = -1;
        this.c = context;
        this.u = str;
        this.v = str2;
        this.w = str3;
        this.x = list;
        this.r = z;
        this.y = i;
        this.A = str4;
        this.B = onDismissListener;
        this.s = z2;
        d();
    }

    private void d() {
        this.m = com.estrongs.android.pop.esclasses.e.a(this.c).inflate(C0000R.layout.archive_progress_dialog, (ViewGroup) null);
        this.d = new com.estrongs.android.ui.b.aq(this.c).a(C0000R.string.progress_decompressing).a(this.m).a(C0000R.string.confirm_cancel, new n(this)).a(new m(this)).a();
        this.d.setOnKeyListener(new o(this));
        if (this.B != null) {
            this.d.setOnDismissListener(this.B);
        }
        ((TextView) this.m.findViewById(C0000R.id.message)).setText(this.c.getString(C0000R.string.task_progress_message_name, com.estrongs.android.util.ak.d(this.u)));
        ((TextView) this.m.findViewById(C0000R.id.file_compressing_message)).setText(this.c.getString(C0000R.string.progress_decompressing_entry));
        this.g = (TextView) this.m.findViewById(C0000R.id.file_compressing);
        this.h = (TextView) this.m.findViewById(C0000R.id.nums_completed);
        this.i = (TextView) this.m.findViewById(C0000R.id.nums_of_files);
        this.j = (TextView) this.m.findViewById(C0000R.id.total_size_compressed);
        this.k = (TextView) this.m.findViewById(C0000R.id.total_size);
        this.f = (ProgressBar) this.m.findViewById(C0000R.id.archive_total_progress_bar);
        this.l = (TextView) this.m.findViewById(C0000R.id.precent_completed);
        if (new File(this.u).isDirectory()) {
            com.estrongs.android.ui.view.z.a(this.c, this.u + " " + this.c.getResources().getString(C0000R.string.message_error), 0).show();
            c();
            return;
        }
        this.e = new p(this, this.c, this, this.c.getResources().getText(C0000R.string.msg_operation_exception).toString());
        this.e.b(this.h);
        this.e.c(this.i);
        this.e.a(this.g);
        this.e.a(this.f);
        this.e.d(this.l);
        this.e.e(this.j);
        this.e.f(this.k);
        this.e.b(this.w);
        this.e.c(this.u);
        this.n = new q(this, this.e, this.w);
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        f615a = true;
        this.q = new x(this, "ArchiveExtract", 5);
        this.q.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.p == null) {
            a();
        }
        this.p.show();
    }

    protected void a() {
        if (this.p == null) {
            this.p = new as(this.c, true, false);
            this.p.setButton(-1, this.c.getResources().getString(C0000R.string.confirm_ok), new v(this));
            this.p.setButton(-2, this.c.getResources().getString(C0000R.string.confirm_cancel), new w(this));
        }
    }

    public void a(am amVar) {
        this.C = amVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str) {
        if (this.o == null) {
            this.o = new com.estrongs.android.a.e(this.c, new t(this), true);
            this.o.setTitle(this.c.getResources().getString(C0000R.string.message_overwrite));
            this.o.setOnKeyListener(new u(this));
        }
        this.o.setMessage(this.c.getResources().getString(C0000R.string.dialog_file_overwrite) + "\n" + str);
    }

    public void b() {
        this.d.show();
    }

    public void c() {
        this.q = null;
        f615a = false;
        if (this.n != null && !this.n.b()) {
            this.n.d();
        }
        if (this.z != null && this.z.e()) {
            this.z.d();
        }
        this.d.dismiss();
    }
}
