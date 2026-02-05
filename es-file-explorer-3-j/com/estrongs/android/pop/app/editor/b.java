package com.estrongs.android.pop.app.editor;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

/* loaded from: classes.dex */
public class b extends Reader {

    /* renamed from: a, reason: collision with root package name */
    private a f742a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f743b;
    private CharsetDecoder c;
    private final ByteBuffer d;

    public b(Context context, File file, String str) {
        super(file);
        this.f743b = false;
        this.d = ByteBuffer.allocate(8192);
        if (str == null) {
            throw new NullPointerException();
        }
        try {
            this.f742a = a.a(context, file);
            this.c = Charset.forName(str).newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
            this.d.limit(0);
        } catch (IllegalArgumentException e) {
            throw ((UnsupportedEncodingException) new UnsupportedEncodingException(str).initCause(e));
        }
    }

    private boolean c() {
        return this.f742a != null;
    }

    public String a() {
        if (c()) {
            return this.c.charset().name();
        }
        return null;
    }

    public void a(long j) {
        synchronized (this.lock) {
            if (this.f742a == null) {
                throw new IOException("InputStreamReader is closed");
            }
            this.f742a.a(j);
            this.d.clear();
            this.d.limit(0);
        }
    }

    public long b() {
        long a2;
        synchronized (this.lock) {
            if (this.f742a == null) {
                throw new IOException("InputStreamReader is closed");
            }
            a2 = this.f742a.a() - (this.d.limit() - this.d.position());
        }
        return a2;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            if (this.c != null) {
                this.c.reset();
            }
            this.c = null;
            if (this.f742a != null) {
                this.f742a.d();
                this.f742a = null;
            }
        }
    }

    @Override // java.io.Reader
    public int read() {
        char c;
        synchronized (this.lock) {
            if (!c()) {
                throw new IOException("InputStreamReader is closed");
            }
            char[] cArr = new char[1];
            c = read(cArr, 0, 1) != -1 ? cArr[0] : (char) 65535;
        }
        return c;
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        synchronized (this.lock) {
            if (!c()) {
                throw new IOException("InputStreamReader is closed");
            }
            if (i2 != 0) {
                CharBuffer wrap = CharBuffer.wrap(cArr, i, i2);
                CoderResult coderResult = CoderResult.UNDERFLOW;
                int i3 = this.d.hasRemaining() ? 0 : 1;
                while (true) {
                    if (!wrap.hasRemaining()) {
                        break;
                    }
                    if (i3 != 0) {
                        int a2 = this.f742a.a(this.d.array(), this.d.arrayOffset() + this.d.limit(), this.d.capacity() - this.d.limit());
                        if (a2 != -1) {
                            if (a2 == 0) {
                                break;
                            }
                            this.d.limit(a2 + this.d.limit());
                        } else {
                            this.f743b = true;
                            break;
                        }
                    }
                    coderResult = this.c.decode(this.d, wrap, false);
                    if (!coderResult.isUnderflow()) {
                        break;
                    }
                    if (this.d.limit() == this.d.capacity()) {
                        this.d.compact();
                        this.d.limit(this.d.position());
                        this.d.position(0);
                    }
                    i3 = 1;
                }
                if (coderResult == CoderResult.UNDERFLOW && this.f743b) {
                    coderResult = this.c.decode(this.d, wrap, true);
                    this.c.flush(wrap);
                    this.c.reset();
                }
                if (coderResult.isMalformed() || coderResult.isUnmappable()) {
                    coderResult.throwException();
                }
                r0 = wrap.position() - i == 0 ? -1 : wrap.position() - i;
            }
            return r0;
        }
    }

    @Override // java.io.Reader
    public boolean ready() {
        throw new IOException();
    }
}
