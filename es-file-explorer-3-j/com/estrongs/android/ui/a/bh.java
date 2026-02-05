package com.estrongs.android.ui.a;

import android.view.View;
import java.io.File;

/* loaded from: classes.dex */
class bh implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1520a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ s f1521b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bh(s sVar, a aVar) {
        this.f1521b = sVar;
        this.f1520a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        File file = new File("/sdcard/.estrongs/bookmark", this.f1520a.f1488b);
        if (file.exists()) {
            com.estrongs.android.util.at.c(file);
            this.f1521b.notifyDataSetChanged();
        }
    }
}
