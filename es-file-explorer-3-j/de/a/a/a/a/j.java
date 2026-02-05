package de.a.a.a.a;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;

/* loaded from: classes.dex */
public class j extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    protected String f3394a;

    /* renamed from: b, reason: collision with root package name */
    protected OutputStream f3395b;
    protected int c;
    private List<i> d = new ArrayList();

    public j(OutputStream outputStream) {
        this.f3395b = outputStream;
    }

    private static byte[] a(String str) {
        int i;
        int i2 = 0;
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            char c = charArray[i4];
            i3 = c <= 127 ? i3 + 1 : c <= 2047 ? i3 + 2 : i3 + 3;
        }
        byte[] bArr = new byte[i3];
        int i5 = 0;
        while (i2 < length) {
            char c2 = charArray[i2];
            if (c2 <= 127) {
                i = i5 + 1;
                bArr[i5] = (byte) c2;
            } else if (c2 <= 2047) {
                int i6 = i5 + 1;
                bArr[i5] = (byte) ((c2 >> 6) | 192);
                i = i6 + 1;
                bArr[i6] = (byte) ((c2 & '?') | 128);
            } else {
                int i7 = i5 + 1;
                bArr[i5] = (byte) ((c2 >> '\f') | 224);
                int i8 = i7 + 1;
                bArr[i7] = (byte) (((c2 >> 6) & 63) | 128);
                i = i8 + 1;
                bArr[i8] = (byte) ((c2 & '?') | 128);
            }
            i2++;
            i5 = i;
        }
        return bArr;
    }

    public void a() {
        int i = this.c;
        int i2 = this.c;
        Iterator<i> it = this.d.iterator();
        while (it.hasNext()) {
            c(it.next());
        }
        int i3 = this.c - i2;
        a(101010256L);
        a(0);
        a(0);
        a(this.d.size());
        a(this.d.size());
        a(i3);
        a(i);
        byte[] bytes = this.f3394a != null ? this.f3394a.getBytes() : new byte[0];
        a(bytes.length);
        if (bytes.length > 0) {
            write(bytes);
        }
        this.f3395b.close();
    }

    public void a(int i) {
        this.f3395b.write((i >>> 0) & 255);
        this.f3395b.write((i >>> 8) & 255);
        this.c += 2;
    }

    public void a(long j) {
        this.f3395b.write((int) ((j >>> 0) & 255));
        this.f3395b.write((int) ((j >>> 8) & 255));
        this.f3395b.write((int) ((j >>> 16) & 255));
        this.f3395b.write((int) ((j >>> 24) & 255));
        this.c += 4;
    }

    public void a(i iVar) {
        a(134695760L);
        a(iVar.getCrc());
        a(iVar.getCompressedSize());
        a(iVar.getSize());
    }

    protected void a(ZipEntry zipEntry) {
        byte[] extra = zipEntry.getExtra();
        if (extra != null) {
            write(extra);
        }
    }

    protected void b(i iVar) {
        a(20);
        a(iVar.b());
        a(iVar.f());
        a(iVar.h());
        a(iVar.getCrc());
        a((int) iVar.getCompressedSize());
        a((int) iVar.getSize());
        a(a(iVar.getName()).length);
        if (iVar.getExtra() != null) {
            a(iVar.getExtra().length);
        } else {
            a(0);
        }
    }

    protected void c(i iVar) {
        a(33639248L);
        a(20);
        b(iVar);
        a(0);
        a(0);
        a(0);
        a(0L);
        a(iVar.e());
        write(a(iVar.getName()));
        a((ZipEntry) iVar);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3395b.close();
    }

    public void d(i iVar) {
        this.d.add(iVar);
        iVar.a(this.c);
        a(67324752L);
        b(iVar);
        write(a(iVar.getName()));
        a((ZipEntry) iVar);
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        this.f3395b.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        a(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.f3395b.write(bArr);
        this.c += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.f3395b.write(bArr, i, i2);
        this.c += i2;
    }
}
