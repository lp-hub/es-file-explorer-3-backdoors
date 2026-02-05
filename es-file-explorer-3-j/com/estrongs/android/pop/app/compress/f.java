package com.estrongs.android.pop.app.compress;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f607a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(a aVar) {
        this.f607a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        Context context2;
        EditText editText;
        Context context3;
        Context context4;
        Context context5;
        context = this.f607a.f574a;
        g gVar = new g(this, com.estrongs.android.pop.q.a(context).p());
        context2 = this.f607a.f574a;
        editText = this.f607a.e;
        com.estrongs.android.widget.g gVar2 = new com.estrongs.android.widget.g((Activity) context2, editText.getText().toString(), gVar, true, false);
        context3 = this.f607a.f574a;
        gVar2.c(context3.getString(C0000R.string.confirm_cancel), (DialogInterface.OnClickListener) null);
        context4 = this.f607a.f574a;
        gVar2.a((CharSequence) context4.getString(C0000R.string.view_label_current_path));
        context5 = this.f607a.f574a;
        gVar2.b(context5.getString(C0000R.string.confirm_ok), new h(this, gVar2));
        gVar2.h();
    }
}
