package com.estrongs.android.ui.theme;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.widget.ProgressTextView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ak implements com.estrongs.android.util.aa {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Handler f2531a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f2532b;
    final /* synthetic */ ai c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(ai aiVar, Handler handler, Context context) {
        this.c = aiVar;
        this.f2531a = handler;
        this.f2532b = context;
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj) {
        if (this.f2531a != null) {
            Message message = new Message();
            message.what = 13;
            this.f2531a.sendMessage(message);
        }
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, long j, long j2) {
        ProgressTextView progressTextView;
        ProgressTextView progressTextView2;
        progressTextView = this.c.k;
        if (progressTextView != null) {
            progressTextView2 = this.c.k;
            progressTextView2.a((int) ((100 * j2) / j));
        }
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, Throwable th) {
        this.c.j = false;
        if (this.f2531a != null) {
            Message message = new Message();
            message.what = 13;
            this.f2531a.sendMessage(message);
        }
    }

    @Override // com.estrongs.android.util.aa
    public void b(Object obj) {
        this.c.j = false;
        if (this.f2531a != null) {
            Message message = new Message();
            message.what = 12;
            message.obj = this.c.f2528b;
            this.f2531a.sendMessage(message);
        }
        this.c.d(this.f2532b);
    }
}
