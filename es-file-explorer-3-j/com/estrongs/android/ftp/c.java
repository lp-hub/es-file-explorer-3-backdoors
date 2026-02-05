package com.estrongs.android.ftp;

import java.net.ServerSocket;
import java.net.Socket;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f312a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f312a = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        ServerSocket serverSocket;
        ServerSocket serverSocket2;
        ServerSocket serverSocket3;
        ServerSocket serverSocket4;
        ServerSocket serverSocket5;
        ServerSocket serverSocket6;
        ServerSocket serverSocket7;
        try {
            try {
                this.f312a.e = true;
                while (!a.d) {
                    serverSocket7 = this.f312a.o;
                    Socket accept = serverSocket7.accept();
                    if (a.i) {
                        try {
                            accept.close();
                        } catch (Exception e) {
                        }
                    } else if (!a.d) {
                        h hVar = new h(accept, this.f312a);
                        hVar.a(a.f);
                        hVar.start();
                    }
                }
                try {
                    serverSocket5 = this.f312a.o;
                    if (serverSocket5 != null) {
                        serverSocket6 = this.f312a.o;
                        serverSocket6.close();
                    }
                } catch (Exception e2) {
                }
                this.f312a.e = false;
                a.d = false;
            } catch (Exception e3) {
                e3.printStackTrace();
                try {
                    serverSocket = this.f312a.o;
                    if (serverSocket != null) {
                        serverSocket2 = this.f312a.o;
                        serverSocket2.close();
                    }
                } catch (Exception e4) {
                }
                this.f312a.e = false;
                a.d = false;
            }
        } catch (Throwable th) {
            try {
                serverSocket3 = this.f312a.o;
                if (serverSocket3 != null) {
                    serverSocket4 = this.f312a.o;
                    serverSocket4.close();
                }
            } catch (Exception e5) {
            }
            this.f312a.e = false;
            a.d = false;
            throw th;
        }
    }
}
