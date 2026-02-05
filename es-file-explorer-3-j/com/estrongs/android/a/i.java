package com.estrongs.android.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.util.ak;
import java.text.DateFormat;

/* loaded from: classes.dex */
public class i extends ag {

    /* renamed from: a, reason: collision with root package name */
    public static int f241a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static int f242b = 2;
    public static int c = 3;
    private View d;
    private int e;
    private o f;
    private CheckBox g;

    public i(Context context, com.estrongs.fs.g gVar, com.estrongs.fs.g gVar2, o oVar, boolean z, boolean z2) {
        super(context);
        this.e = f241a;
        this.f = null;
        this.f = oVar;
        this.d = com.estrongs.android.pop.esclasses.e.a(context).inflate(C0000R.layout.file_overwrite_option_2, (ViewGroup) null);
        setContentView(this.d);
        a(this.d.findViewById(C0000R.id.source_title), context.getString(C0000R.string.source_file_title) + context.getString(C0000R.string.colon));
        a(this.d.findViewById(C0000R.id.dest_title), context.getString(C0000R.string.dest_file_title) + context.getString(C0000R.string.colon));
        this.g = (CheckBox) this.d.findViewById(C0000R.id.cbxApplyToAll);
        if (!z) {
            this.g.setVisibility(8);
        }
        if (z2) {
            Button leftButton = setLeftButton(context.getText(C0000R.string.message_overwrite), new j(this));
            Button middleButton = setMiddleButton(context.getText(C0000R.string.action_rename), new k(this));
            Button rightButton = setRightButton(context.getText(C0000R.string.confirm_skip), new l(this));
            leftButton.setBackgroundResource(C0000R.drawable.popupbox_button_confirm_left_selector);
            middleButton.setBackgroundResource(C0000R.drawable.popupbox_button_cancel_middle_selector);
            rightButton.setBackgroundResource(C0000R.drawable.popupbox_button_cancel_right_selector);
        } else {
            setConfirmButton(context.getText(C0000R.string.message_overwrite), new m(this));
            setCancelButton(context.getText(C0000R.string.confirm_skip), new n(this));
        }
        a(gVar, gVar2);
        setCancelable(false);
    }

    public static void a(View view, String str) {
        if (view != null && (view instanceof TextView)) {
            ((TextView) view).setText(str);
        }
    }

    public void a(com.estrongs.fs.g gVar, com.estrongs.fs.g gVar2) {
        this.e = f241a;
        long lastModified = gVar.lastModified() - gVar2.lastModified();
        DateFormat H = com.estrongs.android.pop.q.a(this.mContext).H();
        String path = gVar.getPath();
        String path2 = gVar2.getPath();
        String bv = ak.ao(path) ? ak.bv(path) : ak.C(path);
        String bv2 = ak.ao(path2) ? ak.bv(path2) : ak.C(path2);
        a(this.d.findViewById(C0000R.id.message), this.mContext.getString(C0000R.string.file_exists_overwrite_prompt_message, gVar.getName()));
        a(this.d.findViewById(C0000R.id.source_path), bv);
        a(this.d.findViewById(C0000R.id.source_size), com.estrongs.fs.c.d.c(gVar.length()));
        a(this.d.findViewById(C0000R.id.dest_path), bv2);
        a(this.d.findViewById(C0000R.id.dest_size), com.estrongs.fs.c.d.c(gVar2.length()));
        if (lastModified > 0) {
            a(this.d.findViewById(C0000R.id.source_last_modified), H.format(Long.valueOf(gVar.lastModified())) + "(" + this.mContext.getString(C0000R.string.fileobject_newer) + ")");
            a(this.d.findViewById(C0000R.id.dest_last_modified), H.format(Long.valueOf(gVar2.lastModified())));
        } else if (lastModified < 0) {
            a(this.d.findViewById(C0000R.id.source_last_modified), H.format(Long.valueOf(gVar.lastModified())));
            a(this.d.findViewById(C0000R.id.dest_last_modified), H.format(Long.valueOf(gVar.lastModified())) + "(" + this.mContext.getString(C0000R.string.fileobject_newer) + ")");
        } else {
            a(this.d.findViewById(C0000R.id.source_last_modified), H.format(Long.valueOf(gVar.lastModified())));
            a(this.d.findViewById(C0000R.id.dest_last_modified), H.format(Long.valueOf(gVar.lastModified())));
        }
    }

    @Override // com.estrongs.android.ui.b.ag, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.f.a(this.e, this.g.isChecked());
        super.dismiss();
    }

    @Override // com.estrongs.android.ui.b.ag
    public void setMessage(CharSequence charSequence) {
        a(this.d.findViewById(C0000R.id.message), charSequence.toString());
    }
}
