package com.estrongs.android.pop.utils;

import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bn implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StringBuilder f1234a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1235b;
    final /* synthetic */ ESActivity c;
    final /* synthetic */ TextView d;
    final /* synthetic */ bg e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(bg bgVar, StringBuilder sb, String str, ESActivity eSActivity, TextView textView) {
        this.e = bgVar;
        this.f1234a = sb;
        this.f1235b = str;
        this.c = eSActivity;
        this.d = textView;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        if (i2 == 5 || i2 == 4) {
            this.f1234a.delete(0, this.f1234a.length());
            this.f1234a.append(this.f1235b).append("\n\n").append(this.c.getString(C0000R.string.property_contains)).append(aVar.processData.d).append(" ").append(this.c.getString(C0000R.string.category_files)).append(", ").append(this.c.getString(C0000R.string.property_size)).append(com.estrongs.fs.c.d.c(aVar.processData.f));
            this.c.runOnUiThread(new bo(this));
        }
    }
}
