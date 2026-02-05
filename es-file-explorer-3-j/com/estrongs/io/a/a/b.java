package com.estrongs.io.a.a;

import android.os.Bundle;
import com.estrongs.io.a.d;

/* loaded from: classes.dex */
public class b implements d {
    protected com.estrongs.io.archive.d e;
    int c = 0;
    Bundle d = new Bundle();
    boolean f = false;
    boolean g = false;
    boolean h = false;
    Object i = new Object();
    int j = 0;

    public b(com.estrongs.io.archive.d dVar) {
        this.e = dVar;
    }

    @Override // com.estrongs.io.a.d
    public void a(long j) {
        if (this.h || this.g) {
            return;
        }
        this.e.f = j;
        this.e.sendEmptyMessage(6);
    }

    @Override // com.estrongs.io.a.d
    public void a(String str, long j) {
        if (this.h || this.g) {
            return;
        }
        this.e.e = str;
        com.estrongs.io.archive.d dVar = this.e;
        int i = this.j + 1;
        this.j = i;
        dVar.g = i;
        this.e.sendEmptyMessage(5);
    }

    @Override // com.estrongs.io.a.d
    public void a(String str, long j, int i) {
        if (this.h || this.g) {
            return;
        }
        this.e.f3214b = str;
        this.e.c = j;
        this.e.d = i;
        this.e.sendEmptyMessage(4);
    }

    @Override // com.estrongs.io.a.a
    public boolean b() {
        return this.g;
    }

    public void c(boolean z) {
        this.h = z;
    }

    public void d() {
        this.g = true;
    }
}
