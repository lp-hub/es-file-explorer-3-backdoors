package com.estrongs.android.widget;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class r implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f2933a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ p f2934b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(p pVar, com.estrongs.fs.g gVar) {
        this.f2934b = pVar;
        this.f2933a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Activity activity;
        Activity activity2;
        Activity activity3;
        Activity activity4;
        com.estrongs.android.ui.b.ag agVar = (com.estrongs.android.ui.b.ag) dialogInterface;
        String obj = ((EditText) agVar.findViewById(C0000R.id.pincode_new_passwd)).getText().toString();
        activity = this.f2934b.f2931a.r;
        String J = com.estrongs.android.pop.q.a(activity).J();
        if (obj == null || obj.length() == 0 || !obj.equals(J)) {
            activity2 = this.f2934b.f2931a.r;
            com.estrongs.android.ui.view.z.a(activity2, C0000R.string.msg_wrong_password, 1).show();
            return;
        }
        this.f2934b.f2931a.f2918a = true;
        activity3 = this.f2934b.f2931a.r;
        if (activity3 instanceof FileExplorerActivity) {
            activity4 = this.f2934b.f2931a.r;
            ((FileExplorerActivity) activity4).g(true);
        }
        agVar.dismiss();
        this.f2934b.b(this.f2933a);
    }
}
