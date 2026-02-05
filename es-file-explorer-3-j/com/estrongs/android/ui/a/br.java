package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import android.content.Intent;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.HideListActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class br implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1536a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public br(FileExplorerActivity fileExplorerActivity) {
        this.f1536a = fileExplorerActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.b.ag agVar = (com.estrongs.android.ui.b.ag) dialogInterface;
        String obj = ((EditText) agVar.findViewById(C0000R.id.pincode_new_passwd)).getText().toString();
        String J = com.estrongs.android.pop.q.a(this.f1536a).J();
        if (obj == null || obj.length() == 0 || !obj.equals(J)) {
            com.estrongs.android.ui.view.z.a(this.f1536a, C0000R.string.msg_wrong_password, 1).show();
            return;
        }
        agVar.dismiss();
        this.f1536a.startActivityForResult(new Intent(this.f1536a, (Class<?>) HideListActivity.class), 268439580);
    }
}
