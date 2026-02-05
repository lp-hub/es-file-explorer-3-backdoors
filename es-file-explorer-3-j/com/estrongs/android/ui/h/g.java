package com.estrongs.android.ui.h;

import java.io.IOException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

/* loaded from: classes.dex */
class g extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f2247a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar) {
        this.f2247a = fVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        int i;
        try {
            StringBuilder append = new StringBuilder().append("http://www.estrongs.com/console/service/0918/?iid=");
            i = this.f2247a.f2245a.f2240a;
            new DefaultHttpClient().execute(new HttpGet(append.append(i).toString()));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
