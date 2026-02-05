package com.estrongs.android.pop.app.imageviewer;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class r {

    /* renamed from: a */
    private final ArrayList<u> f1028a;

    /* renamed from: b */
    private boolean f1029b;
    private Thread c;
    private ContentResolver d;
    private String e;

    public r() {
        this.f1028a = new ArrayList<>();
        this.e = "Image Loader - Mini";
        c();
    }

    public r(String str) {
        this.f1028a = new ArrayList<>();
        this.e = "Image Loader - Mini";
        this.e = str;
        c();
    }

    private void c() {
        if (this.c != null) {
            return;
        }
        this.f1029b = false;
        Thread thread = new Thread(new v(this));
        thread.setName(this.e);
        this.c = thread;
        thread.start();
    }

    public Bitmap a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        return eVar.g();
    }

    public void a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar, t tVar, int i) {
        if (this.c == null) {
            c();
        }
        synchronized (this.f1028a) {
            this.f1028a.add(new u(eVar, tVar, i));
            this.f1028a.notifyAll();
        }
    }

    public int[] a() {
        int[] iArr;
        synchronized (this.f1028a) {
            int size = this.f1028a.size();
            iArr = new int[size];
            for (int i = 0; i < size; i++) {
                iArr[i] = this.f1028a.get(i).c;
            }
            this.f1028a.clear();
        }
        return iArr;
    }

    public void b() {
        synchronized (this.f1028a) {
            this.f1029b = true;
            this.f1028a.notifyAll();
        }
        if (this.c == null || this.d == null) {
            return;
        }
        try {
            Thread thread = this.c;
            BitmapManager.a().a(thread, this.d);
            thread.join();
            this.c = null;
        } catch (InterruptedException e) {
        }
    }
}
