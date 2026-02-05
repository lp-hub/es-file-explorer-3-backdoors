package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Handler;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class fr extends ag {

    /* renamed from: a, reason: collision with root package name */
    private Activity f1828a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f1829b;
    private com.estrongs.a.a.k c;
    private DialogInterface.OnDismissListener d;
    private DialogInterface.OnClickListener e;
    public final DialogInterface.OnClickListener f;
    private DialogInterface.OnClickListener g;
    private DialogInterface.OnClickListener h;
    private com.estrongs.android.view.ch i;
    private com.estrongs.a.a j;
    private Handler k;

    public fr(Activity activity, String str, com.estrongs.a.a aVar) {
        this(activity, str, null, aVar);
        setCancelable(false);
    }

    public fr(Activity activity, String str, String str2, com.estrongs.a.a aVar) {
        super(activity);
        this.f1829b = false;
        this.c = new fw(this);
        this.f1828a = activity;
        setCancelable(false);
        setTitle(str);
        this.i = new com.estrongs.android.view.ch(activity, null, str2);
        setContentView(this.i.an());
        this.k = new Handler();
        aVar.setTaskDecisionListener(new com.estrongs.android.pop.g(activity));
        this.e = new fs(this);
        this.f = new ft(this, aVar);
        this.g = new fu(this, aVar);
        this.h = new fv(this, aVar);
        if (aVar.canPause()) {
            setLeftButton(getString(C0000R.string.action_hide), this.e);
            if (aVar.getTaskStatus() == 3) {
                setMiddleButton(getString(C0000R.string.overwrite_resume_title), this.h);
            } else {
                setMiddleButton(getString(C0000R.string.action_pause), this.g);
            }
            setRightButton(getString(C0000R.string.confirm_cancel), this.f);
        } else {
            setConfirmButton(getString(C0000R.string.action_hide), this.e);
            setCancelButton(getString(C0000R.string.confirm_cancel), this.f);
        }
        aVar.addProgressListener(this.i.c);
        aVar.addTaskStatusChangeListener(this.c);
        this.j = aVar;
        if (aVar.processData != null) {
            this.i.c.a(aVar, aVar.processData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        this.k.post(new fz(this, str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a() {
        return this.j.getDescription() + " " + getString(C0000R.string.progress_success);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(com.estrongs.a.p pVar) {
        if (pVar == null || pVar.f230b == null) {
            return null;
        }
        return ((com.estrongs.a.q) pVar.f230b).f231a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.estrongs.a.a aVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object b(com.estrongs.a.p pVar) {
        if (pVar == null || pVar.f230b == null) {
            return -1;
        }
        return ((com.estrongs.a.q) pVar.f230b).f232b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b() {
        return this.j.getDescription() + " " + getString(C0000R.string.progress_cancel);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(com.estrongs.a.a aVar) {
    }

    @Override // com.estrongs.android.ui.b.ag, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (isShowing()) {
            this.f1829b = true;
            this.j.removeProgressListener(this.i.c);
            super.dismiss();
        } else if (this.d != null) {
            this.d.onDismiss(this);
        }
    }

    @Override // android.app.Dialog
    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.d = onDismissListener;
        super.setOnDismissListener(onDismissListener);
    }
}
