package com.estrongs.android.pop.app.b;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NoRouteToHostException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.Observable;

/* loaded from: classes.dex */
public class g extends Observable implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private final InetAddress f487a;

    /* renamed from: b, reason: collision with root package name */
    private final int f488b;
    private int c = 1;
    private int d = 1;

    public g(InetAddress inetAddress, int i) {
        this.f487a = inetAddress;
        this.f488b = i;
    }

    public int a() {
        try {
            Socket socket = new Socket();
            socket.connect(new InetSocketAddress(this.f487a, this.f488b), 5000);
            socket.close();
            return 0;
        } catch (NoRouteToHostException e) {
            throw e;
        } catch (IOException e2) {
            if (e2 instanceof SocketTimeoutException) {
                if (this.c >= 1) {
                    return 2;
                }
                this.c++;
                try {
                    Thread.sleep(500L);
                } catch (Exception e3) {
                }
                return a();
            }
            System.out.println(e2);
            if (this.d >= 1) {
                return 1;
            }
            this.d++;
            try {
                Thread.sleep(500L);
            } catch (Exception e4) {
            }
            return a();
        } catch (Exception e5) {
            return 1;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            int a2 = a();
            setChanged();
            String hostName = this.f487a.getHostName();
            if (hostName.equalsIgnoreCase("localhost")) {
                hostName = this.f487a.getHostAddress();
            }
            notifyObservers(new Object[]{Integer.valueOf(a2), this.f487a.getHostAddress(), hostName});
        } catch (NoRouteToHostException e) {
            setChanged();
            notifyObservers();
        }
    }
}
