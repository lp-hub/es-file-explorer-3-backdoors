package com.estrongs.android.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.ag;

/* loaded from: classes.dex */
public class e extends ag {

    /* renamed from: a, reason: collision with root package name */
    private View f237a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f238b;
    private h c;
    private CheckBox d;

    public e(Context context, h hVar, boolean z) {
        super(context);
        this.f238b = false;
        this.c = null;
        this.c = hVar;
        this.f237a = com.estrongs.android.pop.esclasses.e.a(context).inflate(C0000R.layout.file_overwrite_option, (ViewGroup) null);
        setContentView(this.f237a);
        this.d = (CheckBox) this.f237a.findViewById(C0000R.id.cbxApplyToAll);
        if (!z) {
            this.d.setVisibility(8);
        }
        setConfirmButton(context.getText(C0000R.string.message_overwrite), new f(this));
        setCancelButton(context.getText(C0000R.string.confirm_skip), new g(this));
        setCancelable(false);
    }

    @Override // com.estrongs.android.ui.b.ag, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.c.a(this.f238b, this.d.isChecked());
    }
}
