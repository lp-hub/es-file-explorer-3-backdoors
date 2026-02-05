package com.estrongs.old.fs.impl.a;

import org.apache.commons.net.ftp.FTPSClient;

/* loaded from: classes.dex */
public class f extends FTPSClient {

    /* renamed from: a, reason: collision with root package name */
    public boolean f3236a;

    /* renamed from: b, reason: collision with root package name */
    private g f3237b;
    private String c;

    public f(String str, g gVar, boolean z) {
        super(z);
        this.f3236a = false;
        this.c = str;
        this.f3237b = gVar;
    }

    @Override // org.apache.commons.net.ftp.FTPSClient, org.apache.commons.net.ftp.FTPClient, org.apache.commons.net.ftp.FTP, org.apache.commons.net.SocketClient
    public void disconnect() {
        if (this.f3236a) {
            super.disconnect();
        } else {
            c.b(this.c, this.f3237b);
        }
    }

    @Override // org.apache.commons.net.ftp.FTPClient
    public boolean logout() {
        if (this.f3236a) {
            return super.logout();
        }
        return true;
    }
}
