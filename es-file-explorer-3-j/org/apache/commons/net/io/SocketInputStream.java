package org.apache.commons.net.io;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.net.Socket;

/* loaded from: classes.dex */
public class SocketInputStream extends FilterInputStream {
    private final Socket __socket;

    public SocketInputStream(Socket socket, InputStream inputStream) {
        super(inputStream);
        this.__socket = socket;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        this.__socket.close();
    }
}
