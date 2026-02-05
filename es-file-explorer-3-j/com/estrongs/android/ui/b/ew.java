package com.estrongs.android.ui.b;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Handler;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.ShowDialogActivity;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ew extends ag {
    public static final Map<Long, Dialog> d = new HashMap();
    public static final Map<Long, com.estrongs.android.ui.notification.e> e = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    private Activity f1801a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f1802b;
    private boolean c;
    public DialogInterface.OnClickListener f;
    private long g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private com.estrongs.a.a.k l;
    private DialogInterface.OnDismissListener m;
    private DialogInterface.OnClickListener n;
    private DialogInterface.OnClickListener o;
    private DialogInterface.OnClickListener p;
    private com.estrongs.android.view.af q;
    private com.estrongs.a.a r;
    private Handler s;
    private com.estrongs.android.ui.notification.e t;

    public ew(Activity activity, String str, com.estrongs.a.a aVar) {
        this(activity, str, aVar, true, false);
    }

    public ew(Activity activity, String str, com.estrongs.a.a aVar, boolean z) {
        this(activity, str, aVar, z, false);
    }

    public ew(Activity activity, String str, com.estrongs.a.a aVar, boolean z, boolean z2) {
        super(activity);
        this.f1802b = true;
        this.c = false;
        this.g = 0L;
        this.h = true;
        this.i = true;
        this.j = false;
        this.k = false;
        this.l = new ey(this);
        this.r = aVar;
        this.i = z;
        this.j = z2;
        d.put(Long.valueOf(this.r.getTaskId()), this);
        this.f1801a = activity;
        this.h = true;
        setCancelable(false);
        setTitle(str);
        String optString = this.r.summary().optString("source");
        String optString2 = this.r.summary().optString("target");
        a(activity, com.estrongs.android.util.ak.ao(optString) ? com.estrongs.android.util.ak.bv(optString) : optString, com.estrongs.android.util.ak.ao(optString2) ? com.estrongs.android.util.ak.bv(optString2) : optString2);
        this.s = new Handler();
        this.r.setTaskDecisionListener(new com.estrongs.android.pop.g(activity));
        this.n = new ex(this);
        this.f = new fj(this);
        this.o = new fk(this);
        this.p = new fl(this);
        if (z2) {
            setConfirmButton(this.mContext.getString(C0000R.string.message_retry), new fm(this));
            setCancelButton(this.mContext.getString(C0000R.string.confirm_cancel), new fn(this));
        } else {
            f();
        }
        this.r.addProgressListener(this.q.c);
        this.r.addTaskStatusChangeListener(this.l);
        if (this.r.processData != null) {
            this.q.c.a(this.r, this.r.processData);
        }
        if (!z2) {
            g();
            return;
        }
        String a2 = a(this.r.getTaskResult());
        if (this.r instanceof com.estrongs.fs.b.i) {
            a(a2 == null ? this.mContext.getString(C0000R.string.action_copy) + " " + this.mContext.getString(C0000R.string.task_failed_message) + "," + this.mContext.getString(C0000R.string.message_retry) : a2);
        } else if (this.r instanceof com.estrongs.fs.b.y) {
            a(a2 == null ? this.mContext.getString(C0000R.string.action_move) + " " + this.mContext.getString(C0000R.string.task_failed_message) + "," + this.mContext.getString(C0000R.string.message_retry) : a2);
        }
        this.s.post(new fo(this));
    }

    public ew(ShowDialogActivity showDialogActivity, String str, String str2, String str3, String str4, String str5, boolean z) {
        super(showDialogActivity);
        this.f1802b = true;
        this.c = false;
        this.g = 0L;
        this.h = true;
        this.i = true;
        this.j = false;
        this.k = false;
        this.l = new ey(this);
        this.j = z;
        setTitle(str);
        a(showDialogActivity, str4, str5);
        this.s = new Handler();
        this.q.a(this.mContext.getString(C0000R.string.task_progress_message_name, str2), str3);
        this.q.d(8);
        this.q.e(8);
        this.q.c(8);
        setSingleButton(this.mContext.getString(C0000R.string.confirm_ok), new fp(this));
    }

    private void a(Activity activity, String str, String str2) {
        this.q = new com.estrongs.android.view.af(activity, null, str, str2);
        setContentView(this.q.an());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        this.s.post(new fg(this, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (!this.r.canPause()) {
            if (!this.r.canHide()) {
                setSingleButton(this.mContext.getString(C0000R.string.confirm_cancel), this.f);
                return;
            } else {
                setConfirmButton(this.mContext.getString(C0000R.string.action_hide), this.n);
                setCancelButton(this.mContext.getString(C0000R.string.confirm_cancel), this.f);
                return;
            }
        }
        if (!this.r.canHide()) {
            if (this.r.getTaskStatus() == 3) {
                setConfirmButton(this.mContext.getString(C0000R.string.overwrite_resume_title), this.p);
            } else {
                setConfirmButton(this.mContext.getString(C0000R.string.action_pause), this.o);
            }
            setCancelButton(this.mContext.getString(C0000R.string.confirm_cancel), this.f);
            return;
        }
        setMiddleButton(this.mContext.getString(C0000R.string.action_hide), this.n);
        if (this.r.getTaskStatus() == 3) {
            setRightButton(this.mContext.getString(C0000R.string.overwrite_resume_title), this.p);
        } else {
            setRightButton(this.mContext.getString(C0000R.string.action_pause), this.o);
        }
        setLeftButton(this.mContext.getString(C0000R.string.confirm_cancel), this.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.i && e.get(Long.valueOf(this.r.getTaskId())) == null && ((this.r instanceof com.estrongs.fs.b.o) || (this.r instanceof com.estrongs.fs.b.i) || (this.r instanceof com.estrongs.fs.b.at) || (this.r instanceof com.estrongs.fs.b.ah) || (this.r instanceof com.estrongs.fs.b.q) || (this.r instanceof com.estrongs.fs.b.a) || (this.r instanceof com.estrongs.fs.b.g))) {
            this.t = new fq(this, this.f1801a, getTitle(), this.r);
            e.put(Long.valueOf(this.r.getTaskId()), this.t);
        } else if (e.get(Long.valueOf(this.r.getTaskId())) != null) {
            this.t = e.get(Long.valueOf(this.r.getTaskId()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        long currentTimeMillis = System.currentTimeMillis() - this.g;
        this.s.postDelayed(new ff(this), currentTimeMillis > 2000 ? 0L : 2000 - currentTimeMillis);
    }

    public ew a(String str, String str2) {
        this.q.b(str, str2);
        return this;
    }

    public ew a(boolean z) {
        this.h = z;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a() {
        return this.r.getDescription() + " " + getString(C0000R.string.progress_success);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(com.estrongs.a.p pVar) {
        return pVar.f229a == 10 ? getContext().getString(C0000R.string.copy_subdirectory) : pVar.f229a == 11 ? getContext().getString(C0000R.string.move_subdirectory) : pVar.f229a == 9 ? getContext().getString(C0000R.string.no_enough_space) : (pVar == null || pVar.f230b == null) ? null : ((com.estrongs.a.q) pVar.f230b).f231a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.estrongs.a.a aVar) {
        if (aVar.canCancel()) {
            dismiss();
            aVar.requestStop();
            b(b());
        }
    }

    public void a(String str) {
        this.q.a(str);
    }

    public ew b(boolean z) {
        this.q.a(z);
        return this;
    }

    protected String b() {
        return this.r.getDescription() + " " + getString(C0000R.string.progress_cancel);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(com.estrongs.a.a aVar) {
    }

    public void c() {
        d.remove(Long.valueOf(this.r.getTaskId()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(com.estrongs.a.a aVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        super.show();
        this.k = false;
        this.g = System.currentTimeMillis();
    }

    @Override // com.estrongs.android.ui.b.ag, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.k = true;
        if (this.r != null) {
            d.remove(Long.valueOf(this.r.getTaskId()));
        }
        if (!isShowing()) {
            if (this.m != null) {
                this.m.onDismiss(this);
            }
            try {
                super.dismiss();
                return;
            } catch (Exception e2) {
                return;
            }
        }
        if (this.r != null) {
            this.r.removeProgressListener(this.q.c);
            this.r.removeTaskStatusChangeListener(this.l);
            if (!(this.r instanceof com.estrongs.fs.b.q)) {
                this.r.setTaskDecisionListener(null);
            }
        }
        super.dismiss();
    }

    public void e() {
        d();
    }

    @Override // android.app.Dialog
    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.m = onDismissListener;
        super.setOnDismissListener(onDismissListener);
    }

    @Override // com.estrongs.android.ui.b.ag, android.app.Dialog
    public void show() {
        if (this.h) {
            this.s.postDelayed(new fh(this), 1500L);
        } else {
            this.s.post(new fi(this));
        }
    }
}
