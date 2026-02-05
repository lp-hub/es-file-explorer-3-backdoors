package com.estrongs.android.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.ag;
import java.text.DateFormat;

/* loaded from: classes.dex */
public class p extends ag {

    /* renamed from: a, reason: collision with root package name */
    com.estrongs.fs.g f248a;

    /* renamed from: b, reason: collision with root package name */
    s f249b;
    int c;
    CheckBox d;

    public p(Context context, com.estrongs.fs.g gVar, s sVar) {
        super(context);
        this.c = 0;
        this.f248a = gVar;
        this.f249b = sVar;
        View inflate = com.estrongs.android.pop.esclasses.e.a(context).inflate(C0000R.layout.recycle_file_failed_decision_dialog, (ViewGroup) null);
        setContentView(inflate);
        a(inflate.findViewById(C0000R.id.source_title), context.getString(C0000R.string.source_file_title) + context.getString(C0000R.string.colon));
        a(inflate.findViewById(C0000R.id.dest_title), context.getString(C0000R.string.dest_file_title) + context.getString(C0000R.string.colon));
        this.d = (CheckBox) inflate.findViewById(C0000R.id.cbxApplyToAll);
        setCancelButton(context.getText(C0000R.string.action_stop), new q(this));
        setConfirmButton(context.getText(C0000R.string.overwrite_resume_title), new r(this));
        setTitle(context.getString(C0000R.string.recycle_title));
        a(inflate.findViewById(C0000R.id.message), context.getString(C0000R.string.recycle_file_failed_message));
        a(inflate, gVar);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }

    public static void a(View view, String str) {
        if (view != null && (view instanceof TextView)) {
            ((TextView) view).setText(str);
        }
    }

    public void a(View view, com.estrongs.fs.g gVar) {
        DateFormat H = com.estrongs.android.pop.q.a(this.mContext).H();
        a(view.findViewById(C0000R.id.source_path), gVar.getPath());
        a(view.findViewById(C0000R.id.source_size), com.estrongs.fs.c.d.c(gVar.length()));
        a(view.findViewById(C0000R.id.source_last_modified), H.format(Long.valueOf(gVar.lastModified())));
    }

    @Override // com.estrongs.android.ui.b.ag, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.f249b.a(this.c, this.d.isChecked());
        super.dismiss();
    }
}
