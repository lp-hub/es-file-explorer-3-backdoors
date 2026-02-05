package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.DialogInterface;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class fl implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f2134a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ File f2135b;
    final /* synthetic */ File c;
    final /* synthetic */ com.estrongs.android.ui.b.ag d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fl(Context context, File file, File file2, com.estrongs.android.ui.b.ag agVar) {
        this.f2134a = context;
        this.f2135b = file;
        this.c = file2;
        this.d = agVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        fk.b(this.f2134a, this.f2135b, this.c);
        this.d.dismiss();
    }
}
