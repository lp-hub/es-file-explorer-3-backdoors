package com.estrongs.android.util;

import android.content.DialogInterface;
import java.io.PrintStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2694a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(b bVar) {
        this.f2694a = bVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        b bVar = this.f2694a;
        if (!this.f2694a.f2690a) {
            i++;
        }
        bVar.d = i;
        PrintStream printStream = System.out;
        StringBuilder append = new StringBuilder().append("Radio clicked - ");
        i2 = this.f2694a.d;
        printStream.println(append.append(i2).toString());
    }
}
