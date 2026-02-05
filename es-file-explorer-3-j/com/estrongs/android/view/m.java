package com.estrongs.android.view;

import android.os.Handler;
import android.util.Log;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m extends Thread {

    /* renamed from: a, reason: collision with root package name */
    boolean f2843a = false;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ e f2844b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(e eVar) {
        this.f2844b = eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        this.f2843a = true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Handler handler;
        Handler handler2;
        com.estrongs.io.archive.h hVar;
        com.estrongs.io.archive.h hVar2;
        Handler handler3;
        String aF = com.estrongs.android.util.ak.aF(this.f2844b.f2833a);
        try {
            this.f2844b.ac = com.estrongs.io.archive.c.a(aF, this.f2844b.f2834b, true);
            this.f2844b.q();
            if (this.f2843a) {
                return;
            }
            hVar = this.f2844b.ac;
            hVar.b();
            if (this.f2843a) {
                return;
            }
            e eVar = this.f2844b;
            hVar2 = this.f2844b.ac;
            eVar.an = hVar2.h();
            if (this.f2843a) {
                return;
            }
            handler3 = this.f2844b.am;
            handler3.sendEmptyMessage(0);
        } catch (Throwable th) {
            Log.e("ArchiveFileGridViewWrapper", "Failed to open the archive file: " + aF, th);
            if (this.f2843a) {
                return;
            }
            String message = th.getMessage();
            if (message != null) {
                if (message.contains("NOT_SUPPORTED_ENC_ALG")) {
                    message = message.replaceAll("NOT_SUPPORTED_ENC_ALG", this.f2844b.m(C0000R.string.msg_not_supported_crypto_alg));
                } else if (message.contains("NOT_SUPPORTED_ENC_ALG_STRENGTH")) {
                    message = message.replaceAll("NOT_SUPPORTED_ENC_ALG", this.f2844b.m(C0000R.string.msg_not_supported_crypto_alg_strength));
                } else if (message.contains("not a WinZip AES")) {
                    message = this.f2844b.m(C0000R.string.msg_not_supported_crypto_alg);
                }
            }
            String str = message + ": " + aF;
            handler = this.f2844b.am;
            handler2 = this.f2844b.am;
            handler.sendMessage(handler2.obtainMessage(2, str));
        }
    }
}
