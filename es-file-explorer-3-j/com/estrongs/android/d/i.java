package com.estrongs.android.d;

import android.widget.ImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    k f283a;

    /* renamed from: b, reason: collision with root package name */
    private final ArrayList<k> f284b;
    private final Map<String, Integer> c;
    private boolean d;
    private Thread e;
    private String f;

    public i() {
        this(null);
    }

    public i(String str) {
        this.f284b = new ArrayList<>();
        this.c = new HashMap();
        this.f = "ThumnailLoader";
        if (str != null) {
            this.f = str;
        }
        c();
    }

    private void c() {
        if (this.e != null) {
            return;
        }
        this.d = false;
        Thread thread = new Thread(new l(this));
        thread.setName(this.f);
        this.e = thread;
        thread.start();
    }

    public void a() {
        this.d = true;
        synchronized (this.f284b) {
            this.f284b.notifyAll();
        }
        this.e = null;
    }

    public void a(int i, com.estrongs.fs.g gVar, ImageView imageView) {
        if (gVar == null) {
            return;
        }
        if (this.e == null) {
            c();
        }
        synchronized (this.f284b) {
            k kVar = new k(i, gVar, imageView);
            if (this.c.get(gVar.getPath()) == null) {
                this.f284b.add(kVar);
                this.c.put(gVar.getPath(), Integer.valueOf(i));
                this.f284b.notifyAll();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean a(k kVar);

    public void b() {
        if (this.f284b.size() >= 1) {
            synchronized (this.f284b) {
                this.f284b.clear();
                this.c.clear();
            }
        }
        if (this.f283a != null) {
            this.f283a.g = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean b(k kVar);
}
