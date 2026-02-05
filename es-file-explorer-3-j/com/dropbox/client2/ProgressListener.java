package com.dropbox.client2;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

/* loaded from: classes.dex */
public abstract class ProgressListener {

    /* loaded from: classes.dex */
    public final class Adjusted extends ProgressListener {
        private final long adjustedTotal;
        private final long bytesOffset;
        private final ProgressListener relay;

        public Adjusted(ProgressListener progressListener, long j, long j2) {
            this.relay = progressListener;
            this.bytesOffset = j;
            this.adjustedTotal = j2;
        }

        @Override // com.dropbox.client2.ProgressListener
        public void onProgress(long j, long j2) {
            this.relay.onProgress(this.bytesOffset + j, this.adjustedTotal);
        }

        @Override // com.dropbox.client2.ProgressListener
        public long progressInterval() {
            return this.relay.progressInterval();
        }
    }

    /* loaded from: classes.dex */
    public class ProgressHttpEntity extends HttpEntityWrapper {
        private final long length;
        private final ProgressListener listener;

        /* loaded from: classes.dex */
        class CountingOutputStream extends FilterOutputStream {
            private long intervalMs;
            private long lastListened;
            private long transferred;

            public CountingOutputStream(OutputStream outputStream) {
                super(outputStream);
                this.lastListened = 0L;
                this.intervalMs = 0L;
                this.transferred = 0L;
                this.intervalMs = ProgressHttpEntity.this.listener.progressInterval();
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                super.write(i);
                this.transferred++;
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.lastListened > this.intervalMs) {
                    this.lastListened = currentTimeMillis;
                    ProgressHttpEntity.this.listener.onProgress(this.transferred, ProgressHttpEntity.this.length);
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                this.out.write(bArr, i, i2);
                this.transferred += i2;
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.lastListened > this.intervalMs) {
                    this.lastListened = currentTimeMillis;
                    ProgressHttpEntity.this.listener.onProgress(this.transferred, ProgressHttpEntity.this.length);
                }
            }
        }

        public ProgressHttpEntity(HttpEntity httpEntity, ProgressListener progressListener) {
            super(httpEntity);
            this.listener = progressListener;
            this.length = httpEntity.getContentLength();
        }

        @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
        public void writeTo(OutputStream outputStream) {
            this.wrappedEntity.writeTo(new CountingOutputStream(outputStream));
        }
    }

    public abstract void onProgress(long j, long j2);

    public long progressInterval() {
        return 500L;
    }
}
