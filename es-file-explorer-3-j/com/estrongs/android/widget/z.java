package com.estrongs.android.widget;

import java.io.File;

/* loaded from: classes.dex */
public class z {

    /* renamed from: a, reason: collision with root package name */
    private File[] f2942a;
    int j = 0;

    protected Object a(File file, String str) {
        return null;
    }

    public Object a(String str) {
        if (this.j >= b()) {
            this.j = b() - 1;
        }
        return a(this.f2942a[this.j], str);
    }

    public boolean a(File[] fileArr) {
        this.f2942a = fileArr;
        return true;
    }

    public int b() {
        if (this.f2942a == null) {
            return 0;
        }
        return this.f2942a.length;
    }

    public void b(int i) {
        this.j = i;
    }

    public void b(String str) {
        int i = 0;
        while (i < this.f2942a.length && !str.equals(this.f2942a[i].getAbsolutePath())) {
            i++;
        }
        if (i == this.f2942a.length) {
            return;
        }
        File[] fileArr = new File[this.f2942a.length - 1];
        for (int i2 = 0; i2 < i; i2++) {
            fileArr[i2] = this.f2942a[i2];
        }
        while (true) {
            i++;
            if (i >= this.f2942a.length) {
                this.f2942a = fileArr;
                return;
            }
            fileArr[i - 1] = this.f2942a[i];
        }
    }

    public Object c(int i) {
        return this.f2942a[i];
    }

    public File[] c() {
        return this.f2942a;
    }
}
