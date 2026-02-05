package com.estrongs.android.widget;

import android.widget.ProgressBar;
import android.widget.TextView;
import com.baidu.sapi2.callback.LoginCallBack;

/* loaded from: classes.dex */
public class bb implements bd {

    /* renamed from: a, reason: collision with root package name */
    private int f2904a;

    /* renamed from: b, reason: collision with root package name */
    private int f2905b = 1;

    @Override // com.estrongs.android.widget.bd
    public void a(ProgressBar progressBar, TextView textView, long j) {
        textView.setText(com.estrongs.fs.c.d.c(j).trim());
        if (j > 2147483647L) {
            this.f2905b = LoginCallBack.REQUEST_LOGINPROTECT;
        }
        this.f2904a = (int) (j / this.f2905b);
        progressBar.setMax(this.f2904a);
    }

    @Override // com.estrongs.android.widget.bd
    public void b(ProgressBar progressBar, TextView textView, long j) {
        progressBar.setProgress((int) (j / this.f2905b));
        textView.setText(com.estrongs.fs.c.d.c(j).trim());
    }
}
