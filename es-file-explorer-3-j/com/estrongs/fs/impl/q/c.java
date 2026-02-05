package com.estrongs.fs.impl.q;

import com.estrongs.android.pop.netfs.utils.UploadOutputStream;
import de.aflx.sardine.Sardine;
import java.io.PipedInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.InputStreamEntity;

/* loaded from: classes.dex */
final class c extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PipedInputStream f3177a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ long f3178b;
    final /* synthetic */ Sardine c;
    final /* synthetic */ String d;
    final /* synthetic */ UploadOutputStream e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(PipedInputStream pipedInputStream, long j, Sardine sardine, String str, UploadOutputStream uploadOutputStream) {
        this.f3177a = pipedInputStream;
        this.f3178b = j;
        this.c = sardine;
        this.d = str;
        this.e = uploadOutputStream;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.c.put(this.d, (HttpEntity) new InputStreamEntity(this.f3177a, this.f3178b), "application/octet-stream", false);
            this.e.setResult(true);
        } catch (Exception e) {
            try {
                this.c.abort();
                this.c.destroy();
                e.printStackTrace();
                this.e.setResult(false);
                this.f3177a.close();
            } catch (Exception e2) {
            }
        }
    }
}
