package com.estrongs.android.ui.h;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f2250a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(h hVar) {
        this.f2250a = hVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Context context;
        TextView textView;
        TextView textView2;
        ProgressBar progressBar;
        ProgressBar progressBar2;
        super.handleMessage(message);
        switch (message.what) {
            case 1:
                int i = message.arg1;
                int i2 = message.arg2;
                if (i2 != 0) {
                    try {
                        String str = com.estrongs.fs.c.d.c(i) + "/" + com.estrongs.fs.c.d.c(i2);
                        textView = this.f2250a.f;
                        textView.setText(str);
                        textView2 = this.f2250a.g;
                        textView2.setText("" + ((i * 100) / i2) + "%");
                        progressBar = this.f2250a.i;
                        progressBar.setMax(i2);
                        progressBar2 = this.f2250a.i;
                        progressBar2.setProgress(i);
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                return;
            case 2:
                this.f2250a.b();
                return;
            case 3:
                this.f2250a.e();
                context = this.f2250a.f2248a;
                Toast.makeText(context, C0000R.string.network_fail, 0).show();
                return;
            default:
                return;
        }
    }
}
