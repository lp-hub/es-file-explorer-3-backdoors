package de.a.a.a.a;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.Arrays;

/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    protected RandomAccessFile f3391a;

    public h(File file) {
        this.f3391a = new RandomAccessFile(file, "r");
    }

    public int a(long j) {
        this.f3391a.seek(j);
        return b();
    }

    public int a(byte[] bArr, int i, int i2) {
        return this.f3391a.read(bArr, i, i2);
    }

    public long a(byte[] bArr) {
        long j = -1;
        for (long length = (this.f3391a.length() - 1) - bArr.length; length > 3 && j == -1; length--) {
            if (Arrays.equals(bArr, a(length, bArr.length))) {
                j = length;
            }
        }
        return j;
    }

    public void a() {
        this.f3391a.close();
    }

    public byte[] a(long j, int i) {
        byte[] bArr = new byte[i];
        this.f3391a.seek(j);
        this.f3391a.read(bArr, 0, i);
        return bArr;
    }

    public int b() {
        byte[] bArr = new byte[4];
        this.f3391a.read(bArr, 0, 4);
        return f.a(bArr);
    }

    public short b(long j) {
        this.f3391a.seek(j);
        return c();
    }

    public byte c(long j) {
        this.f3391a.seek(j);
        return d();
    }

    public short c() {
        byte[] bArr = new byte[2];
        this.f3391a.read(bArr, 0, 2);
        return f.b(bArr);
    }

    public byte d() {
        byte[] bArr = new byte[1];
        this.f3391a.read(bArr, 0, 1);
        return bArr[0];
    }

    public void d(long j) {
        this.f3391a.seek(j);
    }
}
