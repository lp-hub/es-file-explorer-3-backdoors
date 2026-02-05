package a.a.a.a;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class a extends Charset {

    /* renamed from: a, reason: collision with root package name */
    protected char[] f0a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String[] strArr) {
        super(str, strArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char[] a() {
        return this.f0a;
    }

    @Override // java.nio.charset.Charset
    public boolean contains(Charset charset) {
        return charset.getClass() == charset.getClass();
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        return new b(this);
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        return new c(this);
    }
}
