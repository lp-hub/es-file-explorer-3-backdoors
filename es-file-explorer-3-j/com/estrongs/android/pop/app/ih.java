package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import java.util.Map;

/* loaded from: classes.dex */
class ih implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a.b f903a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f904b;
    final /* synthetic */ ShowDialogActivity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ih(ShowDialogActivity showDialogActivity, com.estrongs.a.a.b bVar, com.estrongs.a.a aVar) {
        this.c = showDialogActivity;
        this.f903a = bVar;
        this.f904b = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        long j;
        Map<Long, com.estrongs.android.a.a> map = com.estrongs.android.a.a.f233a;
        j = this.c.f379a;
        map.remove(Long.valueOf(j));
        this.f903a.d = true;
        this.f904b.sendMessage(5, this.f903a);
        dialogInterface.dismiss();
    }
}
