package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes.dex */
public interface SocketFactory {
    InputStream a(Socket socket);

    Socket a(String str, int i);

    OutputStream b(Socket socket);
}
