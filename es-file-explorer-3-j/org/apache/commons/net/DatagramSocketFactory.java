package org.apache.commons.net;

import java.net.DatagramSocket;
import java.net.InetAddress;

/* loaded from: classes.dex */
public interface DatagramSocketFactory {
    DatagramSocket createDatagramSocket();

    DatagramSocket createDatagramSocket(int i);

    DatagramSocket createDatagramSocket(int i, InetAddress inetAddress);
}
