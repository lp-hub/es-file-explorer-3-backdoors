package com.estrongs.a.b;

import java.util.List;

/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private int f199a = 0;

    /* renamed from: b, reason: collision with root package name */
    private n[] f200b;

    public c(List<com.estrongs.fs.g> list) {
        int i = 0;
        this.f200b = new n[list.size()];
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return;
            }
            this.f200b[i2] = new n(list.get(i2));
            i = i2 + 1;
        }
    }

    public com.estrongs.fs.g a() {
        while (this.f199a < this.f200b.length) {
            com.estrongs.fs.g a2 = this.f200b[this.f199a].a();
            if (a2 != null) {
                return a2;
            }
            this.f199a++;
        }
        return null;
    }
}
