package org.apache.commons.net;

import java.net.DatagramSocket;
import java.net.InetAddress;

/* loaded from: classes.dex */
public class DefaultDatagramSocketFactory implements DatagramSocketFactory {
    @Override // org.apache.commons.net.DatagramSocketFactory
    public DatagramSocket createDatagramSocket() {
        return new DatagramSocket();
    }

    @Override // org.apache.commons.net.DatagramSocketFactory
    public DatagramSocket createDatagramSocket(int i) {
        return new DatagramSocket(i);
    }

    @Override // org.apache.commons.net.DatagramSocketFactory
    public DatagramSocket createDatagramSocket(int i, InetAddress inetAddress) {
        return new DatagramSocket(i, inetAddress);
    }
}
