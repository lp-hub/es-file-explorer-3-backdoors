package de.a.a.a.a;

import com.baidu.sapi2.callback.LoginCallBack;
import java.util.zip.ZipException;

/* loaded from: classes.dex */
public class c extends a implements b {
    protected org.bouncycastle.crypto.b g;
    protected org.bouncycastle.crypto.e.a h;
    protected org.bouncycastle.crypto.d.a i;

    public c(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.f3387a = bArr2;
        org.bouncycastle.crypto.c.a aVar = new org.bouncycastle.crypto.c.a();
        aVar.a(bArr, bArr2, LoginCallBack.REQUEST_LOGINPROTECT);
        this.g = aVar.a(528);
        byte[] a2 = ((org.bouncycastle.crypto.f.a) this.g).a();
        this.f3388b = new byte[32];
        System.arraycopy(a2, 0, this.f3388b, 0, 32);
        this.c = new byte[32];
        System.arraycopy(a2, 32, this.c, 0, 32);
        this.d = new byte[2];
        System.arraycopy(a2, 64, this.d, 0, 2);
        if (!f.a(this.d, bArr3)) {
            throw new ZipException("WRONG PASSWORD - " + f.c(this.d) + "/ " + f.c(bArr3));
        }
        aVar.a(bArr, bArr2, LoginCallBack.REQUEST_LOGINPROTECT);
        this.g = aVar.a(256);
        this.i = new org.bouncycastle.crypto.d.a(new org.bouncycastle.crypto.a.b());
        this.i.a(new org.bouncycastle.crypto.f.a(this.c));
        this.h = new org.bouncycastle.crypto.e.a(new org.bouncycastle.crypto.b.a());
        this.e = this.h.a();
        this.f = 1;
    }

    @Override // de.a.a.a.a.b
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
        this.h.a(false, new org.bouncycastle.crypto.f.b(this.g, f.a(i3, 16)));
        int i4 = i2 - i;
        if (i4 >= this.e) {
            this.i.a(bArr, i, this.e);
            this.h.a(bArr, i, bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, i, this.e);
        } else {
            this.i.a(bArr, i, i4);
            byte[] bArr3 = new byte[this.e];
            System.arraycopy(bArr, i, bArr3, 0, i4);
            this.h.a(bArr3, 0, bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, i, i4);
        }
    }

    @Override // de.a.a.a.a.b
    public byte[] a() {
        byte[] bArr = new byte[this.i.a()];
        this.i.a(bArr, 0);
        byte[] bArr2 = new byte[10];
        System.arraycopy(bArr, 0, bArr2, 0, 10);
        return bArr2;
    }
}
