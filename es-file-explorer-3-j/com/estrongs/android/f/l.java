package com.estrongs.android.f;

import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f305a;

    /* renamed from: b, reason: collision with root package name */
    private int f306b;

    private l(h hVar) {
        this.f305a = hVar;
        this.f306b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ l(h hVar, i iVar) {
        this(hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (hasMessages(0)) {
            return;
        }
        sendEmptyMessage(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f306b = 0;
        removeMessages(0);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        WifiManager wifiManager;
        wifiManager = this.f305a.e;
        if (wifiManager.startScan()) {
            this.f306b = 0;
        } else {
            int i = this.f306b + 1;
            this.f306b = i;
            if (i >= 3) {
                this.f306b = 0;
                return;
            }
        }
        sendEmptyMessageDelayed(0, 6000L);
    }
}
