package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.b.d;

/* loaded from: classes.dex */
public class a extends CharsetProber {
    private static final d e = new org.mozilla.universalchardet.prober.b.a();

    /* renamed from: b, reason: collision with root package name */
    private CharsetProber.ProbingState f3517b;

    /* renamed from: a, reason: collision with root package name */
    private org.mozilla.universalchardet.prober.b.b f3516a = new org.mozilla.universalchardet.prober.b.b(e);
    private org.mozilla.universalchardet.prober.a.a c = new org.mozilla.universalchardet.prober.a.a();
    private byte[] d = new byte[2];

    public a() {
        c();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String a() {
        return org.mozilla.universalchardet.b.g;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState a(byte[] bArr, int i, int i2) {
        int i3 = i + i2;
        int i4 = i;
        while (true) {
            if (i4 >= i3) {
                break;
            }
            int a2 = this.f3516a.a(bArr[i4]);
            if (a2 == 1) {
                this.f3517b = CharsetProber.ProbingState.NOT_ME;
                break;
            }
            if (a2 == 2) {
                this.f3517b = CharsetProber.ProbingState.FOUND_IT;
                break;
            }
            if (a2 == 0) {
                int a3 = this.f3516a.a();
                if (i4 == i) {
                    this.d[1] = bArr[i];
                    this.c.a(this.d, 0, a3);
                } else {
                    this.c.a(bArr, i4 - 1, a3);
                }
            }
            i4++;
        }
        this.d[0] = bArr[i3 - 1];
        if (this.f3517b == CharsetProber.ProbingState.DETECTING && this.c.c() && b() > 0.95f) {
            this.f3517b = CharsetProber.ProbingState.FOUND_IT;
        }
        return this.f3517b;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float b() {
        return this.c.a();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void c() {
        this.f3516a.b();
        this.f3517b = CharsetProber.ProbingState.DETECTING;
        this.c.b();
        Arrays.fill(this.d, (byte) 0);
    }
}
