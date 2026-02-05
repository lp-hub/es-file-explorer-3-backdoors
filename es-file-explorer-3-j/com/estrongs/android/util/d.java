package com.estrongs.android.util;

import android.content.Context;
import android.content.DialogInterface;
import java.io.PrintStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2693a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(b bVar) {
        this.f2693a = bVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        f fVar;
        f fVar2;
        int i3;
        Context context;
        int i4;
        int i5;
        PrintStream printStream = System.out;
        StringBuilder append = new StringBuilder().append("Ok clicked - ");
        i2 = this.f2693a.d;
        printStream.println(append.append(i2).toString());
        fVar = this.f2693a.e;
        if (fVar != null) {
            fVar2 = this.f2693a.e;
            String[] strArr = g.f2695a;
            i3 = this.f2693a.d;
            String str = strArr[i3];
            context = this.f2693a.f2691b;
            i4 = this.f2693a.d;
            String a2 = b.a(context, i4);
            i5 = this.f2693a.d;
            fVar2.a(str, a2, i5);
        }
        dialogInterface.dismiss();
    }
}
