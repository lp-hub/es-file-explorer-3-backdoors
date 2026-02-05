package org.apache.commons.net;

import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import javax.net.SocketFactory;

/* loaded from: classes.dex */
public class DefaultSocketFactory extends SocketFactory {
    public ServerSocket createServerSocket(int i) {
        return new ServerSocket(i);
    }

    public ServerSocket createServerSocket(int i, int i2) {
        return new ServerSocket(i, i2);
    }

    public ServerSocket createServerSocket(int i, int i2, InetAddress inetAddress) {
        return new ServerSocket(i, i2, inetAddress);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        return new Socket(str, i);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return new Socket(str, i, inetAddress, i2);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        return new Socket(inetAddress, i);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return new Socket(inetAddress, i, inetAddress2, i2);
    }
}
