package com.estrongs.android.pop.app.a;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ab {

    /* renamed from: a, reason: collision with root package name */
    ad f391a;

    /* renamed from: b, reason: collision with root package name */
    private final ArrayList<ad> f392b;
    private final Map<af, Integer> c;
    private boolean d;
    private Thread e;
    private String f;

    public ab() {
        this(null);
    }

    public ab(String str) {
        this.f392b = new ArrayList<>();
        this.c = new HashMap();
        this.f = "MusicTagLoader";
        if (str != null) {
            this.f = str;
        }
        a();
    }

    private void a() {
        if (this.e != null) {
            return;
        }
        this.d = false;
        Thread thread = new Thread(new ae(this));
        thread.setName(this.f);
        this.e = thread;
        thread.start();
    }

    public void a(int i, af afVar, View view) {
        if (afVar == null) {
            return;
        }
        if (this.e == null) {
            a();
        }
        synchronized (this.f392b) {
            ad adVar = new ad(i, afVar, view);
            if (this.c.get(adVar.f394b) == null) {
                this.f392b.add(adVar);
                this.c.put(adVar.f394b, Integer.valueOf(i));
                this.f392b.notifyAll();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean a(ad adVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean b(ad adVar);
}
