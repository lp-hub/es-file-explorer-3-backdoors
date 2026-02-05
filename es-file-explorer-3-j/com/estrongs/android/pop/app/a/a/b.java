package com.estrongs.android.pop.app.a.a;

import java.util.LinkedList;
import java.util.Random;

/* loaded from: classes.dex */
public class b extends c {
    private int d;
    private int e;
    private LinkedList<Integer> f = new LinkedList<>();

    @Override // com.estrongs.android.pop.app.a.a.c
    protected int a(int i) {
        if (this.f387a == 0) {
            return -1;
        }
        if (i == -1) {
            i = this.f387a - 1;
        }
        int size = (this.d + 1) % this.f.size();
        if (this.f.get(size).intValue() != this.e || this.c == 1) {
            return this.f.get(size).intValue();
        }
        c();
        if (this.c == 2) {
            return a(i);
        }
        return -1;
    }

    @Override // com.estrongs.android.pop.app.a.a.c
    protected void a() {
        c();
    }

    @Override // com.estrongs.android.pop.app.a.a.c
    protected void b() {
        if (this.f388b != -1) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.f.size()) {
                    break;
                }
                if (this.f.get(i2).intValue() == this.f388b) {
                    this.d = i2;
                    break;
                }
                i = i2 + 1;
            }
            if (this.e == -1) {
                this.e = this.f388b;
            }
        }
    }

    @Override // com.estrongs.android.pop.app.a.a.c
    public void c() {
        this.f.clear();
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < this.f387a; i++) {
            linkedList.add(Integer.valueOf(i));
        }
        Random random = new Random();
        while (linkedList.size() > 0) {
            this.f.add((Integer) linkedList.remove(random.nextInt(linkedList.size())));
        }
        this.e = -1;
    }

    @Override // com.estrongs.android.pop.app.a.a.c
    public int d() {
        if (this.f387a == 0) {
            return -1;
        }
        int i = (this.f388b + 1) % this.f387a;
        int a2 = a(i);
        if (a2 != -1) {
            return a2;
        }
        c();
        b();
        return a(i);
    }

    @Override // com.estrongs.android.pop.app.a.a.c
    public int e() {
        if (this.f387a == 0) {
            return -1;
        }
        return this.f.get(this.d <= 0 ? 0 : (this.d - 1) % this.f.size()).intValue();
    }

    @Override // com.estrongs.android.pop.app.a.a.c
    public int f() {
        if (this.e != -1) {
            return this.e;
        }
        return 0;
    }
}
