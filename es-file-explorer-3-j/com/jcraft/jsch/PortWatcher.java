package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class PortWatcher implements Runnable {
    private static Vector f = new Vector();
    private static InetAddress g;

    /* renamed from: a, reason: collision with root package name */
    Session f3326a;

    /* renamed from: b, reason: collision with root package name */
    int f3327b;
    String c;
    Runnable d;
    ServerSocket e;

    static {
        g = null;
        try {
            g = InetAddress.getByName("0.0.0.0");
        } catch (UnknownHostException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Session session) {
        int i;
        synchronized (f) {
            PortWatcher[] portWatcherArr = new PortWatcher[f.size()];
            int i2 = 0;
            int i3 = 0;
            while (i2 < f.size()) {
                PortWatcher portWatcher = (PortWatcher) f.elementAt(i2);
                if (portWatcher.f3326a == session) {
                    portWatcher.a();
                    portWatcherArr[i3] = portWatcher;
                    i = i3 + 1;
                } else {
                    i = i3;
                }
                i2++;
                i3 = i;
            }
            for (int i4 = 0; i4 < i3; i4++) {
                f.removeElement(portWatcherArr[i4]);
            }
        }
    }

    void a() {
        this.d = null;
        try {
            if (this.e != null) {
                this.e.close();
            }
            this.e = null;
        } catch (Exception e) {
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.d = this;
        while (this.d != null) {
            try {
                Socket accept = this.e.accept();
                accept.setTcpNoDelay(true);
                InputStream inputStream = accept.getInputStream();
                OutputStream outputStream = accept.getOutputStream();
                ChannelDirectTCPIP channelDirectTCPIP = new ChannelDirectTCPIP();
                channelDirectTCPIP.b();
                channelDirectTCPIP.a(inputStream);
                channelDirectTCPIP.a(outputStream);
                this.f3326a.a(channelDirectTCPIP);
                channelDirectTCPIP.b(this.c);
                channelDirectTCPIP.j(this.f3327b);
                channelDirectTCPIP.c(accept.getInetAddress().getHostAddress());
                channelDirectTCPIP.k(accept.getPort());
                channelDirectTCPIP.c();
                int i = channelDirectTCPIP.p;
            } catch (Exception e) {
            }
        }
        a();
    }
}
