package com.estrongs.old.fs.impl.a;

import org.apache.commons.net.ftp.FTPClient;

/* loaded from: classes.dex */
public class d extends FTPClient {

    /* renamed from: a, reason: collision with root package name */
    public boolean f3233a = false;

    /* renamed from: b, reason: collision with root package name */
    private g f3234b;
    private String c;

    public d(String str, g gVar) {
        this.c = str;
        this.f3234b = gVar;
    }

    @Override // org.apache.commons.net.ftp.FTPClient, org.apache.commons.net.ftp.FTP, org.apache.commons.net.SocketClient
    public void disconnect() {
        if (this.f3233a) {
            super.disconnect();
        } else {
            c.b(this.c, this.f3234b);
        }
    }

    @Override // org.apache.commons.net.ftp.FTPClient
    public boolean logout() {
        if (this.f3233a) {
            return super.logout();
        }
        return true;
    }
}
