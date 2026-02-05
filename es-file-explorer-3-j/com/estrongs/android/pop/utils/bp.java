package com.estrongs.android.pop.utils;

import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bp implements com.estrongs.a.a.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StringBuilder f1237a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1238b;
    final /* synthetic */ ESActivity c;
    final /* synthetic */ TextView d;
    final /* synthetic */ bg e;
    private long f = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(bg bgVar, StringBuilder sb, String str, ESActivity eSActivity, TextView textView) {
        this.e = bgVar;
        this.f1237a = sb;
        this.f1238b = str;
        this.c = eSActivity;
        this.d = textView;
    }

    @Override // com.estrongs.a.a.h
    public void a(com.estrongs.a.a aVar, com.estrongs.a.a.i iVar) {
        if (this.f == -1 || System.currentTimeMillis() - this.f > 300) {
            this.f = System.currentTimeMillis();
            this.f1237a.delete(0, this.f1237a.length());
            this.f1237a.append(this.f1238b).append("\n\n").append(this.c.getString(C0000R.string.property_contains)).append(iVar.d).append(" ").append(this.c.getString(C0000R.string.category_files)).append(", ").append(this.c.getString(C0000R.string.property_size)).append(com.estrongs.fs.c.d.c(iVar.f));
            this.c.runOnUiThread(new bq(this));
        }
    }
}
