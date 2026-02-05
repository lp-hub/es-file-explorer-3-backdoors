package com.estrongs.android.pop.app.b;

import java.util.List;

/* loaded from: classes.dex */
public class n implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    private List<String> f497a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f498b = true;
    private int c;
    private boolean e;

    public n(String str, boolean z) {
        this.f497a = i.a(str);
        this.e = z;
        if (!this.f498b) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f497a.size()) {
                return;
            }
            this.f497a.set(i2, this.f497a.get(i2).toLowerCase());
            i = i2 + 1;
        }
    }

    public int a() {
        return this.c;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        this.c = 0;
        if (!this.f498b) {
            for (int i = 0; i < this.f497a.size(); i++) {
                if (gVar.getName().contains(this.f497a.get(i))) {
                    if (!this.e) {
                        return true;
                    }
                    this.c++;
                }
            }
            return this.c > 0;
        }
        String lowerCase = gVar.getName().toLowerCase();
        for (int i2 = 0; i2 < this.f497a.size(); i2++) {
            if (lowerCase.contains(this.f497a.get(i2))) {
                if (!this.e) {
                    return true;
                }
                this.c++;
            }
        }
        return this.c > 0;
    }
}
