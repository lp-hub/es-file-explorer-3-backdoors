package a.a.a.a;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;

/* loaded from: classes.dex */
final class b extends CharsetDecoder {

    /* renamed from: a, reason: collision with root package name */
    private char[] f1a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        super(aVar, 1.0f, 1.0f);
        this.f1a = aVar.a();
    }

    @Override // java.nio.charset.CharsetDecoder
    protected CoderResult decodeLoop(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        while (byteBuffer.hasRemaining()) {
            byte b2 = byteBuffer.get();
            if (!charBuffer.hasRemaining()) {
                byteBuffer.position(byteBuffer.position() - 1);
                return CoderResult.OVERFLOW;
            }
            char c = this.f1a[b2 & 255];
            if (c == 65533) {
            }
            charBuffer.put(c);
        }
        return CoderResult.UNDERFLOW;
    }
}
