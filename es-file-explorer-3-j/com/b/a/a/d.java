package com.b.a.a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
class d {

    /* renamed from: a, reason: collision with root package name */
    byte[] f98a;

    /* renamed from: b, reason: collision with root package name */
    byte[] f99b;
    byte[] c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(byte[] bArr) {
        int i = 0;
        while (i < bArr.length) {
            int i2 = bArr[i] & 255;
            int i3 = bArr[i + 1] & 255;
            int i4 = i + 2;
            switch (i2) {
                case 0:
                    if (i3 == 16) {
                        this.f98a = new byte[16];
                        System.arraycopy(bArr, i4, this.f98a, 0, 16);
                        break;
                    } else {
                        throw new IOException("OBEX Digest Response error in tag request-digest");
                    }
                case 1:
                    this.f99b = new byte[i3];
                    System.arraycopy(bArr, i4, this.f99b, 0, this.f99b.length);
                    break;
                case 2:
                    if (i3 == 16) {
                        this.c = new byte[16];
                        System.arraycopy(bArr, i4, this.c, 0, 16);
                        break;
                    } else {
                        throw new IOException("OBEX Digest Response error in tag Nonce");
                    }
            }
            i = i4 + i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] a() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(16);
        byteArrayOutputStream.write(this.f98a, 0, 16);
        if (this.f99b != null) {
            byteArrayOutputStream.write(1);
            byteArrayOutputStream.write(this.f99b.length);
            byteArrayOutputStream.write(this.f99b, 0, this.f99b.length);
        }
        byteArrayOutputStream.write(2);
        byteArrayOutputStream.write(16);
        byteArrayOutputStream.write(this.c, 0, 16);
        return byteArrayOutputStream.toByteArray();
    }
}
