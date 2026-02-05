package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class IO {

    /* renamed from: a, reason: collision with root package name */
    InputStream f3312a;

    /* renamed from: b, reason: collision with root package name */
    OutputStream f3313b;
    OutputStream c;
    private boolean d = false;
    private boolean e = false;
    private boolean f = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.f3312a.read();
    }

    public void a(Packet packet) {
        this.f3313b.write(packet.f3324a.f3290b, 0, packet.f3324a.c);
        this.f3313b.flush();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(InputStream inputStream) {
        this.f3312a = inputStream;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(InputStream inputStream, boolean z) {
        this.d = z;
        a(inputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(OutputStream outputStream) {
        this.f3313b = outputStream;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(OutputStream outputStream, boolean z) {
        this.e = z;
        a(outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(byte[] bArr, int i, int i2) {
        this.f3313b.write(bArr, i, i2);
        this.f3313b.flush();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        try {
            if (this.f3313b != null && !this.e) {
                this.f3313b.close();
            }
            this.f3313b = null;
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(byte[] bArr, int i, int i2) {
        this.c.write(bArr, i, i2);
        this.c.flush();
    }

    public void c() {
        try {
            if (this.f3312a != null && !this.d) {
                this.f3312a.close();
            }
            this.f3312a = null;
        } catch (Exception e) {
        }
        b();
        try {
            if (this.c != null && !this.f) {
                this.c.close();
            }
            this.c = null;
        } catch (Exception e2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(byte[] bArr, int i, int i2) {
        do {
            int read = this.f3312a.read(bArr, i, i2);
            if (read < 0) {
                throw new IOException("End of IO Stream Read");
            }
            i += read;
            i2 -= read;
        } while (i2 > 0);
    }
}
