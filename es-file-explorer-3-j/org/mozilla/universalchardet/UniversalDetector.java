package org.mozilla.universalchardet;

import org.mozilla.universalchardet.prober.CharsetProber;

/* loaded from: classes.dex */
public class UniversalDetector {

    /* renamed from: a, reason: collision with root package name */
    private InputState f3512a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f3513b;
    private boolean c;
    private boolean d;
    private byte e;
    private String f;
    private a i;
    private CharsetProber h = null;
    private CharsetProber[] g = new CharsetProber[1];

    /* loaded from: classes.dex */
    public enum InputState {
        PURE_ASCII,
        ESC_ASCII,
        HIGHBYTE;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static InputState[] valuesCustom() {
            InputState[] valuesCustom = values();
            int length = valuesCustom.length;
            InputState[] inputStateArr = new InputState[length];
            System.arraycopy(valuesCustom, 0, inputStateArr, 0, length);
            return inputStateArr;
        }
    }

    public UniversalDetector(a aVar) {
        this.i = aVar;
        for (int i = 0; i < this.g.length; i++) {
            this.g[i] = null;
        }
        c();
    }

    public String a() {
        return this.f;
    }

    public void a(byte[] bArr, int i, int i2) {
        if (this.f3513b) {
            return;
        }
        if (i2 > 0) {
            this.d = true;
        }
        if (this.c) {
            this.c = false;
            if (i2 > 3) {
                int i3 = bArr[i] & 255;
                int i4 = bArr[i + 1] & 255;
                int i5 = bArr[i + 2] & 255;
                int i6 = bArr[i + 3] & 255;
                switch (i3) {
                    case 0:
                        if (i4 != 0 || i5 != 254 || i6 != 255) {
                            if (i4 == 0 && i5 == 255 && i6 == 254) {
                                this.f = b.B;
                                break;
                            }
                        } else {
                            this.f = b.x;
                            break;
                        }
                        break;
                    case 239:
                        if (i4 == 187 && i5 == 191) {
                            this.f = b.u;
                            break;
                        }
                        break;
                    case 254:
                        if (i4 != 255 || i5 != 0 || i6 != 0) {
                            if (i4 == 255) {
                                this.f = b.v;
                                break;
                            }
                        } else {
                            this.f = b.A;
                            break;
                        }
                        break;
                    case 255:
                        if (i4 != 254 || i5 != 0 || i6 != 0) {
                            if (i4 == 254) {
                                this.f = b.w;
                                break;
                            }
                        } else {
                            this.f = b.y;
                            break;
                        }
                        break;
                }
                if (this.f != null) {
                    this.f3513b = true;
                    return;
                }
            }
        }
        int i7 = i + i2;
        for (int i8 = i; i8 < i7; i8++) {
            int i9 = bArr[i8] & 255;
            if ((i9 & 128) == 0 || i9 == 160) {
                if (this.f3512a == InputState.PURE_ASCII && (i9 == 27 || (i9 == 123 && this.e == 126))) {
                    this.f3512a = InputState.ESC_ASCII;
                }
                this.e = bArr[i8];
            } else if (this.f3512a != InputState.HIGHBYTE) {
                this.f3512a = InputState.HIGHBYTE;
                if (this.h != null) {
                    this.h = null;
                }
                if (this.g[0] == null) {
                    this.g[0] = new org.mozilla.universalchardet.prober.b();
                }
            }
        }
        if (this.f3512a == InputState.ESC_ASCII) {
            if (this.h.a(bArr, i, i2) == CharsetProber.ProbingState.FOUND_IT) {
                this.f3513b = true;
                this.f = this.h.a();
                return;
            }
            return;
        }
        if (this.f3512a == InputState.HIGHBYTE) {
            for (int i10 = 0; i10 < this.g.length; i10++) {
                if (this.g[i10].a(bArr, i, i2) == CharsetProber.ProbingState.FOUND_IT) {
                    this.f3513b = true;
                    this.f = this.g[i10].a();
                    return;
                }
            }
        }
    }

    public void b() {
        if (this.d) {
            if (this.f != null) {
                this.f3513b = true;
                if (this.i != null) {
                    this.i.a(this.f);
                    return;
                }
                return;
            }
            if (this.f3512a != InputState.HIGHBYTE) {
                InputState inputState = InputState.ESC_ASCII;
                return;
            }
            float f = 0.0f;
            int i = 0;
            for (int i2 = 0; i2 < this.g.length; i2++) {
                float b2 = this.g[i2].b();
                if (b2 > f) {
                    i = i2;
                    f = b2;
                }
            }
            if (f > 0.2f) {
                this.f = this.g[i].a();
                if (this.i != null) {
                    this.i.a(this.f);
                }
            }
        }
    }

    public void c() {
        this.f3513b = false;
        this.c = true;
        this.f = null;
        this.d = false;
        this.f3512a = InputState.PURE_ASCII;
        this.e = (byte) 0;
        if (this.h != null) {
            this.h.c();
        }
        for (int i = 0; i < this.g.length; i++) {
            if (this.g[i] != null) {
                this.g[i].c();
            }
        }
    }
}
