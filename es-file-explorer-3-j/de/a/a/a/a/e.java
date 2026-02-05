package de.a.a.a.a;

import com.baidu.sapi2.callback.LoginCallBack;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class e extends a implements d {
    private static final Logger j = Logger.getLogger(e.class.getName());
    protected org.bouncycastle.crypto.b g;
    protected org.bouncycastle.crypto.e.a h;
    protected org.bouncycastle.crypto.d.a i;

    public e(byte[] bArr) {
        org.bouncycastle.crypto.c.a aVar = new org.bouncycastle.crypto.c.a();
        this.f3387a = d();
        aVar.a(bArr, this.f3387a, LoginCallBack.REQUEST_LOGINPROTECT);
        this.g = aVar.a(528);
        byte[] a2 = ((org.bouncycastle.crypto.f.a) this.g).a();
        this.f3388b = new byte[32];
        System.arraycopy(a2, 0, this.f3388b, 0, 32);
        this.c = new byte[32];
        System.arraycopy(a2, 32, this.c, 0, 32);
        this.d = new byte[2];
        System.arraycopy(a2, 64, this.d, 0, 2);
        aVar.a(bArr, this.f3387a, LoginCallBack.REQUEST_LOGINPROTECT);
        this.g = aVar.a(256);
        this.i = new org.bouncycastle.crypto.d.a(new org.bouncycastle.crypto.a.b());
        this.i.a(new org.bouncycastle.crypto.f.a(this.c));
        this.h = new org.bouncycastle.crypto.e.a(new org.bouncycastle.crypto.b.a());
        this.e = this.h.a();
        this.f = 1;
        if (j.isLoggable(Level.FINEST)) {
            j.finest("pwBytes   = " + f.c(bArr) + " - " + bArr.length);
            j.finest("salt      = " + f.c(this.f3387a) + " - " + this.f3387a.length);
            j.finest("pwVerif   = " + f.c(this.d) + " - " + this.d.length);
        }
    }

    protected static byte[] d() {
        byte[] bArr = new byte[16];
        for (int i = 0; i < 2; i++) {
            int nextInt = new Random().nextInt();
            bArr[(i * 4) + 0] = (byte) (nextInt >> 24);
            bArr[(i * 4) + 1] = (byte) (nextInt >> 16);
            bArr[(i * 4) + 2] = (byte) (nextInt >> 8);
            bArr[(i * 4) + 3] = (byte) nextInt;
        }
        return bArr;
    }

    @Override // de.a.a.a.a.d
    public void a(byte[] bArr, int i) {
        int i2 = 0;
        while (i2 < bArr.length && i2 < i) {
            a(bArr, i2, i);
            i2 += this.e;
        }
    }

    protected void a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[this.e];
        int i3 = this.f;
        this.f = i3 + 1;
        this.h.a(true, new org.bouncycastle.crypto.f.b(this.g, f.a(i3, 16)));
        int i4 = i2 - i;
        if (i4 >= this.e) {
            this.h.a(bArr, i, bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, i, this.e);
            this.i.a(bArr2, 0, this.e);
        } else {
            byte[] bArr3 = new byte[this.e];
            System.arraycopy(bArr, i, bArr3, 0, i4);
            this.h.a(bArr3, 0, bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, i, i4);
            this.i.a(bArr2, 0, i4);
        }
    }

    @Override // de.a.a.a.a.d
    public byte[] a() {
        return this.f3387a;
    }

    @Override // de.a.a.a.a.d
    public byte[] b() {
        return this.d;
    }

    @Override // de.a.a.a.a.d
    public byte[] c() {
        byte[] bArr = new byte[this.i.a()];
        this.i.a(bArr, 0);
        byte[] bArr2 = new byte[10];
        System.arraycopy(bArr, 0, bArr2, 0, 10);
        return bArr2;
    }
}
