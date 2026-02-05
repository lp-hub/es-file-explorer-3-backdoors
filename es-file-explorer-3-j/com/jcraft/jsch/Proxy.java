package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes.dex */
public interface Proxy {
    InputStream a();

    void a(SocketFactory socketFactory, String str, int i, int i2);

    OutputStream b();

    Socket c();

    void d();
}
