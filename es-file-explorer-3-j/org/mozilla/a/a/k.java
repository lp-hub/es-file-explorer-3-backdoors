package org.mozilla.a.a;

/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    int f3487a = 0;

    /* renamed from: b, reason: collision with root package name */
    int f3488b = 200;
    int c = 0;
    public int[] d = new int[94];
    public int[] e = new int[94];
    public float[] f = new float[94];
    public float[] g = new float[94];

    public k() {
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a(float[] fArr, float f, float[] fArr2, float f2) {
        return (a(fArr, this.f) * f) + (a(fArr2, this.g) * f2);
    }

    float a(float[] fArr, float[] fArr2) {
        float f = 0.0f;
        for (int i = 0; i < 94; i++) {
            float f2 = fArr[i] - fArr2[i];
            f += f2 * f2;
        }
        return ((float) Math.sqrt(f)) / 94.0f;
    }

    public void a() {
        this.f3487a = 0;
        this.c = 0;
        for (int i = 0; i < 94; i++) {
            int[] iArr = this.d;
            this.e[i] = 0;
            iArr[i] = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(byte[] bArr, int i) {
        if (this.c == 1) {
            return false;
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < i && 1 != this.c) {
            switch (this.c) {
                case 0:
                    if ((bArr[i3] & 128) != 0) {
                        if (255 != (bArr[i3] & 255) && 161 <= (bArr[i3] & 255)) {
                            this.f3487a++;
                            int[] iArr = this.d;
                            int i4 = (bArr[i3] & 255) - 161;
                            iArr[i4] = iArr[i4] + 1;
                            this.c = 2;
                            break;
                        } else {
                            this.c = 1;
                            break;
                        }
                    } else {
                        break;
                    }
                    break;
                case 1:
                    break;
                case 2:
                    if ((bArr[i3] & 128) == 0) {
                        this.c = 1;
                        break;
                    } else if (255 != (bArr[i3] & 255) && 161 <= (bArr[i3] & 255)) {
                        this.f3487a++;
                        int[] iArr2 = this.e;
                        int i5 = (bArr[i3] & 255) - 161;
                        iArr2[i5] = iArr2[i5] + 1;
                        this.c = 0;
                        break;
                    } else {
                        this.c = 1;
                        break;
                    }
                    break;
                default:
                    this.c = 1;
                    break;
            }
            i2++;
            i3++;
        }
        return 1 != this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f3487a > this.f3488b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.f3487a > 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        for (int i = 0; i < 94; i++) {
            this.f[i] = this.d[i] / this.f3487a;
            this.g[i] = this.e[i] / this.f3487a;
        }
    }
}
