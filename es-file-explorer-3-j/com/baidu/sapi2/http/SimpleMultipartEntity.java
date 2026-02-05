package com.baidu.sapi2.http;

import com.baidu.sapi2.log.Logger;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;
import org.apache.commons.net.SocketClient;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MIME;
import org.apache.http.message.BasicHeader;

/* loaded from: classes.dex */
class SimpleMultipartEntity implements HttpEntity {
    private static final char[] MULTIPART_CHARS = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    private String boundary;
    ByteArrayOutputStream out = new ByteArrayOutputStream();
    boolean isSetLast = false;
    boolean isSetFirst = false;

    public SimpleMultipartEntity() {
        this.boundary = null;
        StringBuffer stringBuffer = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < 30; i++) {
            stringBuffer.append(MULTIPART_CHARS[random.nextInt(MULTIPART_CHARS.length)]);
        }
        this.boundary = stringBuffer.toString();
    }

    public void addPart(String str, File file, boolean z) {
        try {
            addPart(str, file.getName(), new FileInputStream(file), z);
        } catch (FileNotFoundException e) {
            Logger.w(e);
        }
    }

    public void addPart(String str, String str2) {
        writeFirstBoundaryIfNeeds();
        try {
            this.out.write(("Content-Disposition: form-data; name=\"" + str + "\"\r\n\r\n").getBytes());
            this.out.write(str2.getBytes());
            this.out.write(("\r\n--" + this.boundary + SocketClient.NETASCII_EOL).getBytes());
        } catch (IOException e) {
            Logger.w(e);
        }
    }

    public void addPart(String str, String str2, InputStream inputStream, String str3, boolean z) {
        writeFirstBoundaryIfNeeds();
        try {
            try {
                String str4 = "Content-Type: " + str3 + SocketClient.NETASCII_EOL;
                this.out.write(("Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + str2 + "\"\r\n").getBytes());
                this.out.write(str4.getBytes());
                this.out.write("Content-Transfer-Encoding: binary\r\n\r\n".getBytes());
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    } else {
                        this.out.write(bArr, 0, read);
                    }
                }
                if (!z) {
                    this.out.write(("\r\n--" + this.boundary + SocketClient.NETASCII_EOL).getBytes());
                }
                this.out.flush();
                try {
                    inputStream.close();
                } catch (IOException e) {
                    Logger.w(e);
                }
            } catch (IOException e2) {
                Logger.w(e2);
            }
        } finally {
            try {
                inputStream.close();
            } catch (IOException e3) {
                Logger.w(e3);
            }
        }
    }

    public void addPart(String str, String str2, InputStream inputStream, boolean z) {
        addPart(str, str2, inputStream, "application/octet-stream", z);
    }

    @Override // org.apache.http.HttpEntity
    public void consumeContent() {
        if (isStreaming()) {
            throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
        }
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() {
        return new ByteArrayInputStream(this.out.toByteArray());
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentEncoding() {
        return null;
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        writeLastBoundaryIfNeeds();
        return this.out.toByteArray().length;
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentType() {
        return new BasicHeader(MIME.CONTENT_TYPE, "multipart/form-data; boundary=" + this.boundary);
    }

    @Override // org.apache.http.HttpEntity
    public boolean isChunked() {
        return false;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return false;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return false;
    }

    public void writeFirstBoundaryIfNeeds() {
        if (!this.isSetFirst) {
            try {
                this.out.write(("--" + this.boundary + SocketClient.NETASCII_EOL).getBytes());
            } catch (IOException e) {
                Logger.w(e);
            }
        }
        this.isSetFirst = true;
    }

    public void writeLastBoundaryIfNeeds() {
        if (this.isSetLast) {
            return;
        }
        try {
            this.out.write(("\r\n--" + this.boundary + "--\r\n").getBytes());
        } catch (IOException e) {
            Logger.w(e);
        }
        this.isSetLast = true;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) {
        outputStream.write(this.out.toByteArray());
    }
}
