package com.estrongs.android.pop.app.editor;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class ai {

    /* renamed from: a, reason: collision with root package name */
    private static final String f731a = ai.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private int f732b = 10240;
    private ArrayList<aj> c = new ArrayList<>();

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
    
        r0 = r4.c.get(r4.c.size() - 1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized aj a(int i) {
        aj ajVar = null;
        synchronized (this) {
            if (i > 0) {
                if (this.c.size() != 0) {
                    int i2 = 0;
                    aj ajVar2 = null;
                    while (true) {
                        if (i2 >= this.c.size()) {
                            break;
                        }
                        aj ajVar3 = this.c.get(i2);
                        if (ajVar3.f733a > i) {
                            ajVar = ajVar2;
                            break;
                        }
                        i2++;
                        ajVar2 = ajVar3;
                    }
                }
            }
        }
        return ajVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        r0 = r5.c.get(r5.c.size() - 1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized aj a(long j) {
        aj ajVar = null;
        synchronized (this) {
            if (j > 0) {
                if (this.c.size() != 0) {
                    int i = 0;
                    aj ajVar2 = null;
                    while (true) {
                        if (i >= this.c.size()) {
                            break;
                        }
                        aj ajVar3 = this.c.get(i);
                        if (ajVar3.f734b > j) {
                            ajVar = ajVar2;
                            break;
                        }
                        i++;
                        ajVar2 = ajVar3;
                    }
                }
            }
        }
        return ajVar;
    }

    public synchronized void a(int i, long j) {
        if (this.c.size() == 0) {
            this.c.add(new aj(this, i, j));
        } else if (i < this.c.get(0).f733a && this.c.get(0).f734b - j >= this.f732b) {
            this.c.add(0, new aj(this, i, j));
        } else if (i > this.c.get(this.c.size() - 1).f733a && j - this.c.get(this.c.size() - 1).f734b >= this.f732b) {
            this.c.add(new aj(this, i, j));
        }
    }

    public synchronized void b(long j) {
        if (this.c.size() > 0 && j <= this.c.get(this.c.size() - 1).f734b) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.c.size()) {
                    break;
                }
                if (this.c.get(i2).f734b > j) {
                    this.c.remove(i2);
                }
                i = i2 + 1;
            }
        }
    }
}
