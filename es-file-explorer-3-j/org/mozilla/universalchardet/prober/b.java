package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.prober.CharsetProber;

/* loaded from: classes.dex */
public class b extends CharsetProber {

    /* renamed from: a, reason: collision with root package name */
    private CharsetProber.ProbingState f3520a;

    /* renamed from: b, reason: collision with root package name */
    private CharsetProber[] f3521b = new CharsetProber[1];
    private boolean[] c = new boolean[1];
    private int d;
    private int e;

    public b() {
        this.f3521b[0] = new a();
        c();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String a() {
        if (this.d == -1) {
            b();
            if (this.d == -1) {
                this.d = 0;
            }
        }
        return this.f3521b[this.d].a();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState a(byte[] bArr, int i, int i2) {
        boolean z;
        int i3;
        byte[] bArr2 = new byte[i2];
        int i4 = i + i2;
        int i5 = 0;
        boolean z2 = true;
        while (i < i4) {
            if ((bArr[i] & 128) != 0) {
                i3 = i5 + 1;
                bArr2[i5] = bArr[i];
                z = true;
            } else if (z2) {
                i3 = i5 + 1;
                bArr2[i5] = bArr[i];
                z = false;
            } else {
                int i6 = i5;
                z = z2;
                i3 = i6;
            }
            i++;
            int i7 = i3;
            z2 = z;
            i5 = i7;
        }
        int i8 = 0;
        while (true) {
            if (i8 >= this.f3521b.length) {
                break;
            }
            if (this.c[i8]) {
                CharsetProber.ProbingState a2 = this.f3521b[i8].a(bArr2, 0, i5);
                if (a2 == CharsetProber.ProbingState.FOUND_IT) {
                    this.d = i8;
                    this.f3520a = CharsetProber.ProbingState.FOUND_IT;
                    break;
                }
                if (a2 == CharsetProber.ProbingState.NOT_ME) {
                    this.c[i8] = false;
                    this.e--;
                    if (this.e <= 0) {
                        this.f3520a = CharsetProber.ProbingState.NOT_ME;
                        break;
                    }
                } else {
                    continue;
                }
            }
            i8++;
        }
        return this.f3520a;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float b() {
        float f = 0.0f;
        if (this.f3520a == CharsetProber.ProbingState.FOUND_IT) {
            return 0.99f;
        }
        if (this.f3520a == CharsetProber.ProbingState.NOT_ME) {
            return 0.01f;
        }
        for (int i = 0; i < this.f3521b.length; i++) {
            if (this.c[i]) {
                float b2 = this.f3521b[i].b();
                if (f < b2) {
                    this.d = i;
                    f = b2;
                }
            }
        }
        return f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void c() {
        this.e = 0;
        for (int i = 0; i < this.f3521b.length; i++) {
            this.f3521b[i].c();
            this.c[i] = true;
            this.e++;
        }
        this.d = -1;
        this.f3520a = CharsetProber.ProbingState.DETECTING;
    }
}
