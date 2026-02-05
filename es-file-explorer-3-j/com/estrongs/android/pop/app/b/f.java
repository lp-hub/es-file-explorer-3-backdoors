package com.estrongs.android.pop.app.b;

import com.estrongs.android.pop.FexApplication;
import java.net.InetAddress;
import java.util.Observable;
import java.util.Observer;
import java.util.Vector;

/* loaded from: classes.dex */
public class f extends Observable implements Runnable, Observer {

    /* renamed from: a, reason: collision with root package name */
    protected static int f485a = 32;
    private int[] c;
    private c g;
    private int d = 0;
    private int e = 0;
    private boolean f = false;
    private boolean h = false;

    /* renamed from: b, reason: collision with root package name */
    public h f486b = new h();

    public f(c cVar, int[] iArr) {
        this.c = iArr;
        this.g = cVar;
    }

    public boolean a() {
        return this.h;
    }

    public void b() {
        this.f = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.h = true;
        int i = this.c[0];
        Vector<InetAddress> a2 = this.g.a();
        for (int i2 = 0; i2 < a2.size(); i2++) {
            com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
            if (currentTask != null && currentTask.taskStopped()) {
                c.a(FexApplication.a()).c();
            }
            if (this.f) {
                break;
            }
            InetAddress inetAddress = a2.get(i2);
            while (this.e - this.d > f485a) {
                try {
                    Thread.sleep(1200L);
                } catch (InterruptedException e) {
                }
            }
            g gVar = new g(inetAddress, i);
            gVar.addObserver(this);
            Thread thread = new Thread(gVar);
            thread.setPriority(10);
            thread.start();
            this.e++;
        }
        while (!this.f && this.e - this.d > 0) {
            try {
                Thread.sleep(600L);
            } catch (InterruptedException e2) {
            }
        }
        setChanged();
        notifyObservers();
        this.e = 0;
        this.d = 0;
        this.f = false;
        this.h = false;
    }

    @Override // java.util.Observer
    public synchronized void update(Observable observable, Object obj) {
        this.d++;
        if ((observable instanceof g) && obj != null) {
            Object[] objArr = (Object[]) obj;
            int intValue = ((Integer) objArr[0]).intValue();
            this.f486b.a((String) objArr[1], (String) objArr[2], intValue);
            if (intValue == 0) {
                setChanged();
                notifyObservers(this.f486b);
            }
        }
    }
}
