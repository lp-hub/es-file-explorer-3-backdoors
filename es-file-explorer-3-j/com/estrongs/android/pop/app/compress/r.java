package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class r implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f622a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ q f623b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(q qVar, String str) {
        this.f623b = qVar;
        this.f622a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view;
        Context context;
        try {
            view = this.f623b.f621a.m;
            TextView textView = (TextView) view.findViewById(C0000R.id.message);
            context = this.f623b.f621a.c;
            textView.setText(context.getString(C0000R.string.task_progress_message_name, this.f622a));
        } catch (Exception e) {
        }
    }
}
