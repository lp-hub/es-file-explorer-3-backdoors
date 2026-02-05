package com.estrongs.android.pop.netfs.utils;

import android.util.Log;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.mime.MIME;
import org.apache.http.entity.mime.content.AbstractContentBody;

/* loaded from: classes.dex */
public class LengthStreamBody extends AbstractContentBody {
    private final String filename;
    private final InputStream in;
    private long left_data;
    private final long length;
    private long send_length;

    public LengthStreamBody(InputStream inputStream, String str, long j) {
        this(inputStream, "application/octet-stream", str, j);
    }

    public LengthStreamBody(InputStream inputStream, String str, long j, long j2) {
        this(inputStream, "application/octet-stream", str, j);
        this.send_length = j2;
        this.left_data = j;
    }

    public LengthStreamBody(InputStream inputStream, String str, String str2, long j) {
        super(str);
        this.send_length = -1L;
        this.left_data = 0L;
        if (inputStream == null) {
            throw new IllegalArgumentException("Input stream may not be null");
        }
        this.in = inputStream;
        this.filename = str2;
        this.length = j;
    }

    @Override // org.apache.http.entity.mime.content.ContentDescriptor
    public String getCharset() {
        return null;
    }

    @Override // org.apache.http.entity.mime.content.ContentDescriptor
    public long getContentLength() {
        return this.send_length == -1 ? this.length : this.left_data > this.send_length ? this.send_length : this.left_data;
    }

    @Override // org.apache.http.entity.mime.content.ContentBody
    public String getFilename() {
        return this.filename;
    }

    public InputStream getInputStream() {
        return this.in;
    }

    @Override // org.apache.http.entity.mime.content.ContentDescriptor
    public String getTransferEncoding() {
        return MIME.ENC_BINARY;
    }

    @Override // org.apache.http.entity.mime.content.ContentBody
    public void writeTo(OutputStream outputStream) {
        int read;
        if (this.send_length != -1) {
            writeTo2(outputStream);
            return;
        }
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        try {
            byte[] bArr = new byte[16384];
            long j = 0;
            int i = 0;
            while (j < this.length && (read = this.in.read(bArr, i, 16384 - i)) != -1) {
                if (read + i > 1024) {
                    outputStream.write(bArr, 0, i + read);
                    i = 0;
                } else {
                    i += read;
                }
                j += read;
                if (read == 1) {
                    try {
                        Thread.sleep(20L);
                    } catch (Exception e) {
                    }
                }
            }
            if (i != 0) {
                Log.e("LengthStream", "last send:" + i);
                outputStream.write(bArr, 0, i);
            }
            outputStream.flush();
        } catch (Exception e2) {
            Log.e("LengthStream", "occur exception");
            e2.printStackTrace();
        } finally {
            this.in.close();
        }
    }

    @Deprecated
    public void writeTo(OutputStream outputStream, int i) {
        writeTo(outputStream);
    }

    public void writeTo2(OutputStream outputStream) {
        long j;
        Throwable th;
        long j2;
        Exception e;
        int i;
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        long j3 = this.left_data > this.send_length ? this.send_length : this.left_data;
        try {
            byte[] bArr = new byte[16384];
            int i2 = 0;
            j = j3;
            while (j > 0) {
                try {
                    try {
                        int read = this.in.read(bArr, i2, (int) (((long) (16384 - i2)) > j ? j : 16384 - i2));
                        if (read == -1) {
                            break;
                        }
                        if (read + i2 > 1024) {
                            outputStream.write(bArr, 0, i2 + read);
                            i = 0;
                        } else {
                            i = i2 + read;
                        }
                        j -= read;
                        if (read == 1) {
                            try {
                                Thread.sleep(20L);
                                i2 = i;
                            } catch (Exception e2) {
                                i2 = i;
                            }
                        } else {
                            i2 = i;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        j2 = j;
                        try {
                            Log.e("LengthStream", "occur exception");
                            e.printStackTrace();
                            if (this.left_data == 0 || j2 > 0) {
                                this.in.close();
                                return;
                            }
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            j = j2;
                            if (this.left_data != 0 || j > 0) {
                                this.in.close();
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (this.left_data != 0) {
                    }
                    this.in.close();
                    throw th;
                }
            }
            if (j > 0) {
                throw new Exception();
            }
            if (i2 != 0) {
                outputStream.write(bArr, 0, i2);
            }
            outputStream.flush();
            this.left_data -= j3;
            if (this.left_data == 0 || j > 0) {
                this.in.close();
            }
        } catch (Exception e4) {
            j2 = j3;
            e = e4;
        } catch (Throwable th4) {
            j = j3;
            th = th4;
        }
    }
}
