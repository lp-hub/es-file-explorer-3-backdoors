package android.support.v4.b;

import android.util.Log;
import java.io.Writer;

/* loaded from: classes.dex */
public class b extends Writer {

    /* renamed from: a, reason: collision with root package name */
    private final String f35a;

    /* renamed from: b, reason: collision with root package name */
    private StringBuilder f36b = new StringBuilder(128);

    public b(String str) {
        this.f35a = str;
    }

    private void a() {
        if (this.f36b.length() > 0) {
            Log.d(this.f35a, this.f36b.toString());
            this.f36b.delete(0, this.f36b.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                a();
            } else {
                this.f36b.append(c);
            }
        }
    }
}
