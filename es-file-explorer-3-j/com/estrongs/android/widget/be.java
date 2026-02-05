package com.estrongs.android.widget;

import android.widget.ProgressBar;
import android.widget.TextView;

/* loaded from: classes.dex */
public class be implements bd {
    @Override // com.estrongs.android.widget.bd
    public void a(ProgressBar progressBar, TextView textView, long j) {
        progressBar.setMax((int) j);
        textView.setText(String.valueOf(j));
    }

    @Override // com.estrongs.android.widget.bd
    public void b(ProgressBar progressBar, TextView textView, long j) {
        progressBar.setProgress((int) j);
        textView.setText(String.valueOf(j));
    }
}
