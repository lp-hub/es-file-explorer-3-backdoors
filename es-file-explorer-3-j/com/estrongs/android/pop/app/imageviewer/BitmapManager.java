package com.estrongs.android.pop.app.imageviewer;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.FileDescriptor;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class BitmapManager {

    /* renamed from: b, reason: collision with root package name */
    private static BitmapManager f911b = null;

    /* renamed from: a, reason: collision with root package name */
    private final WeakHashMap<Thread, d> f912a = new WeakHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum State {
        CANCEL,
        ALLOW
    }

    private BitmapManager() {
    }

    public static synchronized BitmapManager a() {
        BitmapManager bitmapManager;
        synchronized (BitmapManager.class) {
            if (f911b == null) {
                f911b = new BitmapManager();
            }
            bitmapManager = f911b;
        }
        return bitmapManager;
    }

    private synchronized void a(Thread thread, BitmapFactory.Options options) {
        c(thread).f994b = options;
    }

    private synchronized d c(Thread thread) {
        d dVar;
        dVar = this.f912a.get(thread);
        if (dVar == null) {
            dVar = new d();
            this.f912a.put(thread, dVar);
        }
        return dVar;
    }

    public Bitmap a(FileDescriptor fileDescriptor, BitmapFactory.Options options) {
        if (options.mCancel) {
            return null;
        }
        Thread currentThread = Thread.currentThread();
        if (!b(currentThread)) {
            Log.d("BitmapManager", "Thread " + currentThread + " is not allowed to decode.");
            return null;
        }
        a(currentThread, options);
        Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        a(currentThread);
        return decodeFileDescriptor;
    }

    synchronized void a(Thread thread) {
        this.f912a.get(thread).f994b = null;
    }

    public synchronized void a(Thread thread, ContentResolver contentResolver) {
        d c = c(thread);
        c.f993a = State.CANCEL;
        if (c.f994b != null) {
            c.f994b.requestCancelDecode();
        }
        notifyAll();
    }

    public synchronized boolean b(Thread thread) {
        boolean z = true;
        synchronized (this) {
            d dVar = this.f912a.get(thread);
            if (dVar != null) {
                z = dVar.f993a != State.CANCEL;
            }
        }
        return z;
    }
}
