package com.estrongs.fs.b;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
class ai implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2974a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(ah ahVar) {
        this.f2974a = ahVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ESActivity.x() == null) {
            return;
        }
        com.estrongs.android.ui.b.ag agVar = new com.estrongs.android.ui.b.ag(ESActivity.x());
        View inflate = com.estrongs.android.pop.esclasses.e.a(ESActivity.x()).inflate(C0000R.layout.dialog_recv_result, (ViewGroup) null);
        agVar.setContentView(inflate);
        agVar.setTitle(C0000R.string.file_recv_result_title);
        TextView textView = (TextView) inflate.findViewById(C0000R.id.message);
        if (this.f2974a.g.c == 1) {
            textView.setText(String.format(this.f2974a.f.getString(C0000R.string.file_recv_result1), this.f2974a.f2973b, com.estrongs.fs.c.d.c(this.f2974a.g.e)));
        } else {
            textView.setText(String.format(this.f2974a.f.getString(C0000R.string.file_recv_result2), this.f2974a.f2973b, Integer.valueOf(this.f2974a.g.c), com.estrongs.fs.c.d.c(this.f2974a.g.e)));
        }
        ((TextView) inflate.findViewById(C0000R.id.ip)).setText("" + this.f2974a.g.g);
        ((TextView) inflate.findViewById(C0000R.id.path)).setText(this.f2974a.c);
        if (this.f2974a.g.c != 1 || this.f2974a.g.f2985b == 2) {
            agVar.setConfirmButton(this.f2974a.f.getString(C0000R.string.action_open_location), new am(this));
            agVar.setCancelButton(this.f2974a.f.getString(C0000R.string.confirm_cancel), new an(this));
        } else {
            agVar.setLeftButton(this.f2974a.f.getString(C0000R.string.confirm_cancel), new aj(this));
            agVar.setMiddleButton(this.f2974a.f.getString(C0000R.string.action_open), new ak(this));
            agVar.setRightButton(this.f2974a.f.getString(C0000R.string.action_open_location), new al(this));
        }
        agVar.show();
    }
}
