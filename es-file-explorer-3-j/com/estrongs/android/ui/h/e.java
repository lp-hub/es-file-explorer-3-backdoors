package com.estrongs.android.ui.h;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.util.aa;
import java.io.IOException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements aa {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Handler f2243a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f2244b;
    final /* synthetic */ c c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(c cVar, Handler handler, Context context) {
        this.c = cVar;
        this.f2243a = handler;
        this.f2244b = context;
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, long j, long j2) {
        Message message = new Message();
        message.what = 1;
        message.arg1 = (int) j2;
        message.arg2 = (int) j;
        this.f2243a.sendMessage(message);
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, Throwable th) {
        this.c.l = false;
        this.f2243a.sendEmptyMessage(3);
    }

    @Override // com.estrongs.android.util.aa
    public void b(Object obj) {
        int i;
        this.c.l = false;
        this.f2243a.sendEmptyMessage(2);
        try {
            StringBuilder append = new StringBuilder().append("http://www.estrongs.com/console/service/0918/?aid=");
            i = this.c.f2240a;
            new DefaultHttpClient().execute(new HttpGet(append.append(i).toString()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.c.e(this.f2244b);
    }
}
