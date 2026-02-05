package com.estrongs.android.ui.c;

import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1894a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f1894a = aVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        ProgressBar progressBar;
        String str;
        boolean z;
        String str2;
        switch (message.what) {
            case 1:
                this.f1894a.h();
                return;
            case 2:
            default:
                return;
            case 3:
                this.f1894a.g();
                return;
            case 4:
                this.f1894a.i();
                return;
            case 5:
                z = this.f1894a.q;
                if (z) {
                    return;
                }
                TextView textView = this.f1894a.d;
                str2 = this.f1894a.p;
                textView.setText(str2);
                return;
            case 6:
                progressBar = this.f1894a.j;
                progressBar.setIndeterminate(true);
                return;
            case 7:
                this.f1894a.j();
                return;
            case 8:
                this.f1894a.k();
                return;
            case 9:
                this.f1894a.q = true;
                TextView textView2 = this.f1894a.d;
                str = this.f1894a.p;
                textView2.setText(str);
                return;
            case 10:
                this.f1894a.f();
                return;
        }
    }
}
