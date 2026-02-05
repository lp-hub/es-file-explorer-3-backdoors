package com.estrongs.android.ui.drag;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.View;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    Map<String, p> f1953a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    DragGrid f1954b;
    Bitmap c;
    private int d;

    public int a() {
        return this.d;
    }

    public void a(int i) {
        this.d = i;
    }

    public void a(Bitmap bitmap) {
        if (bitmap != null) {
            try {
                this.c = Bitmap.createBitmap(bitmap);
            } catch (OutOfMemoryError e) {
                e.printStackTrace();
            }
        }
    }

    public void a(Rect rect, h hVar, View view) {
        String shortString = rect.toShortString();
        if (this.f1953a.containsKey(shortString)) {
            this.f1953a.get(shortString).f1962a++;
        } else {
            hVar.a(com.estrongs.android.ui.d.a.a(view));
            this.f1953a.put(shortString, new p(hVar));
        }
    }

    public void a(DragGrid dragGrid) {
        this.f1954b = dragGrid;
    }

    public DragGrid b() {
        h d;
        if (this.d == 0 && (d = d()) != null) {
            return d.f1954b;
        }
        return this.f1954b;
    }

    public Bitmap c() {
        h d;
        if (this.d == 0 && (d = d()) != null) {
            return d.c;
        }
        return this.c;
    }

    public h d() {
        for (p pVar : this.f1953a.values()) {
            if (pVar.f1962a == 1) {
                return pVar.f1963b;
            }
        }
        return null;
    }

    public void e() {
        if (this.d != 0) {
            if (this.c == null || this.c.isRecycled()) {
                return;
            }
            this.c.recycle();
            return;
        }
        Iterator<p> it = this.f1953a.values().iterator();
        while (it.hasNext()) {
            Bitmap bitmap = it.next().f1963b.c;
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
        }
    }
}
