package de.innosystec.unrar.b;

import java.io.File;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public class c extends RandomAccessFile implements a {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f3401a;

    static {
        f3401a = !c.class.desiredAssertionStatus();
    }

    public c(File file) {
        super(file, "r");
    }

    @Override // de.innosystec.unrar.b.a
    public int a(byte[] bArr, int i) {
        if (!f3401a && i <= 0) {
            throw new AssertionError(i);
        }
        readFully(bArr, 0, i);
        return i;
    }

    @Override // de.innosystec.unrar.b.a
    public long a() {
        return getFilePointer();
    }

    @Override // de.innosystec.unrar.b.a
    public void a(long j) {
        seek(j);
    }
}
