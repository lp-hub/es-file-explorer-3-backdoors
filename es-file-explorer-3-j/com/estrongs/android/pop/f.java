package com.estrongs.android.pop;

import android.content.DialogInterface;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1145a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ d f1146b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar, String str) {
        this.f1146b = dVar;
        this.f1145a = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.EMAIL", new String[]{"contact@estrongs.com"});
        intent.putExtra("android.intent.extra.SUBJECT", "Bug report - Net Access");
        intent.putExtra("android.intent.extra.TEXT", this.f1145a);
        intent.setType("message/rfc822");
        try {
            this.f1146b.f1113a.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
