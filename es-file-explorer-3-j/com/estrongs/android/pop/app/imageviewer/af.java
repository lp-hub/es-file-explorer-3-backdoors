package com.estrongs.android.pop.app.imageviewer;

import android.text.format.Formatter;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class af implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ae f939a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(ae aeVar) {
        this.f939a = aeVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        long m = this.f939a.f937a.m();
        ((TextView) this.f939a.d.findViewById(C0000R.id.details_file_size_value)).setText(m < 0 ? "" : Formatter.formatFileSize(this.f939a.c, m));
        ac.b(this.f939a.d, this.f939a.f937a, this.f939a.c);
    }
}
