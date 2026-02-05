package com.estrongs.android.ui.b;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.estrongs.android.ui.view.CreateOAuthServiceProvider;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cp implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ co f1708a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cp(co coVar) {
        this.f1708a = coVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.estrongs.android.ui.a.d dVar = (com.estrongs.android.ui.a.d) adapterView.getAdapter();
        dVar.a(i);
        dVar.b(i);
        String c = dVar.c(i);
        Intent intent = new Intent(this.f1708a.mContext, (Class<?>) CreateOAuthServiceProvider.class);
        intent.putExtra("nettype", c);
        this.f1708a.mContext.startActivity(intent);
        this.f1708a.dismiss();
    }
}
