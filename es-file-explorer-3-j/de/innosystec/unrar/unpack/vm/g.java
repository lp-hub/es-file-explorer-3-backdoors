package de.innosystec.unrar.unpack.vm;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

/* loaded from: classes.dex */
public class g {

    /* renamed from: b, reason: collision with root package name */
    private List<e> f3446b;
    private int c;
    private int g;
    private int h;

    /* renamed from: a, reason: collision with root package name */
    private List<e> f3445a = new ArrayList();
    private Vector<Byte> d = new Vector<>();
    private Vector<Byte> e = new Vector<>();
    private int[] f = new int[7];

    public g() {
        this.f3446b = new ArrayList();
        this.f3446b = null;
    }

    public List<e> a() {
        return this.f3446b;
    }

    public void a(int i) {
        this.c = i;
    }

    public void a(List<e> list) {
        this.f3446b = list;
    }

    public void a(Vector<Byte> vector) {
        this.e = vector;
    }

    public List<e> b() {
        return this.f3445a;
    }

    public void b(int i) {
        this.g = i;
    }

    public int c() {
        return this.c;
    }

    public void c(int i) {
        this.h = i;
    }

    public int d() {
        return this.g;
    }

    public int e() {
        return this.h;
    }

    public Vector<Byte> f() {
        return this.d;
    }

    public int[] g() {
        return this.f;
    }

    public Vector<Byte> h() {
        return this.e;
    }
}
