package a.a.a.a;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c extends CharsetEncoder {

    /* renamed from: a, reason: collision with root package name */
    private byte[] f2a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(a aVar) {
        super(aVar, 1.0f, 1.0f);
        char[] a2 = aVar.a();
        char c = 0;
        for (char c2 : a2) {
            if (c2 > c && c2 < 65533) {
                c = c2;
            }
        }
        this.f2a = new byte[c + 1];
        for (int i = 0; i < a2.length; i++) {
            char c3 = a2[i];
            if (c3 != 0 && c3 < 65533) {
                this.f2a[c3] = (byte) i;
            }
        }
    }

    @Override // java.nio.charset.CharsetEncoder
    protected CoderResult encodeLoop(CharBuffer charBuffer, ByteBuffer byteBuffer) {
        while (charBuffer.hasRemaining()) {
            char c = charBuffer.get();
            if (!byteBuffer.hasRemaining()) {
                charBuffer.position(charBuffer.position() - 1);
                return CoderResult.OVERFLOW;
            }
            byte b2 = c < this.f2a.length ? this.f2a[c] : (byte) 0;
            if (b2 == 0 && c != 0) {
                charBuffer.position(charBuffer.position() - 1);
                return CoderResult.unmappableForLength(1);
            }
            byteBuffer.put(b2);
        }
        return CoderResult.UNDERFLOW;
    }
}
