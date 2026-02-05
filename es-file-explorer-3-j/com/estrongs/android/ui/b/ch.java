package com.estrongs.android.ui.b;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ch implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DialogInterface.OnClickListener f1697a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ cf f1698b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ch(cf cfVar, DialogInterface.OnClickListener onClickListener) {
        this.f1698b = cfVar;
        this.f1697a = onClickListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        String[] strArr;
        context = this.f1698b.c;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        strArr = this.f1698b.o;
        builder.setItems(strArr, this.f1697a);
        builder.setNegativeButton(C0000R.string.confirm_cancel, new ci(this));
        builder.setTitle(C0000R.string.s3_location_text);
        builder.show();
    }
}
