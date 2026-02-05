package com.estrongs.android.c;

import java.io.IOException;
import java.net.ServerSocket;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f269a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar) {
        this.f269a = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean a2;
        ServerSocket serverSocket;
        while (true) {
            try {
                a2 = this.f269a.a();
                if (a2) {
                    return;
                }
                g gVar = this.f269a;
                serverSocket = this.f269a.f;
                new i(gVar, serverSocket.accept());
            } catch (IOException e) {
                return;
            }
        }
    }
}
