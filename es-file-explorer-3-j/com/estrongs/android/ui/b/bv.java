package com.estrongs.android.ui.b;

import android.app.Activity;
import android.widget.Button;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class bv extends ag {

    /* renamed from: a, reason: collision with root package name */
    br f1680a;

    /* renamed from: b, reason: collision with root package name */
    Button f1681b;
    boolean c;

    public bv(Activity activity, String str, String str2) {
        super(activity);
        this.f1680a = null;
        this.c = false;
        this.f1680a = new br(activity, this, str2);
        setTitle(str);
        LinearLayout linearLayout = new LinearLayout(this.mContext);
        linearLayout.setFocusable(false);
        int a2 = com.estrongs.android.ui.d.a.a(this.mContext, 20.0f);
        linearLayout.setPadding(a2, a2 / 2, a2, a2 / 2);
        linearLayout.addView(this.f1680a.b(), new LinearLayout.LayoutParams(-1, -2));
        setContentView(linearLayout);
        this.f1681b = setConfirmButton(activity.getText(C0000R.string.confirm_ok), new bw(this));
        setCancelButton(activity.getText(C0000R.string.confirm_cancel), new bx(this));
        requestInputMethod();
    }

    public void a(by byVar) {
        this.f1680a.a(byVar);
    }

    public void a(boolean z) {
        this.c = z;
    }

    public void b(boolean z) {
        this.f1680a.a(z);
    }

    public void c(boolean z) {
        this.f1680a.b(z);
    }

    @Override // com.estrongs.android.ui.b.ag, android.app.Dialog
    public void show() {
        this.f1680a.c();
        super.show();
    }
}
