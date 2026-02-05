package de.aflx.sardine.impl.io;

import java.io.InputStream;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;

/* loaded from: classes.dex */
public class ConsumingInputStream extends InputStream {
    private InputStream delegate;
    private HttpGet req;
    private HttpResponse response;

    public ConsumingInputStream(HttpResponse httpResponse, HttpGet httpGet) {
        this.response = httpResponse;
        this.delegate = httpResponse.getEntity().getContent();
        this.req = httpGet;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.delegate.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.req.abort();
        this.delegate.close();
    }

    public long getContentLength() {
        return this.response.getEntity().getContentLength();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.delegate.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.delegate.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        return this.delegate.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return this.delegate.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        return this.delegate.read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public void reset() {
        this.delegate.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        return this.delegate.skip(j);
    }
}
