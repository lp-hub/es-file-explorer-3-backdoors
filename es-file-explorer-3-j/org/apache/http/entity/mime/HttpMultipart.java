package org.apache.http.entity.mime;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.net.SocketClient;
import org.apache.http.util.ByteArrayBuffer;

/* loaded from: classes.dex */
public class HttpMultipart {
    private final String boundary;
    private final Charset charset;
    private final HttpMultipartMode mode;
    private final List<FormBodyPart> parts;
    private final String subType;
    private static final ByteArrayBuffer FIELD_SEP = encode(MIME.DEFAULT_CHARSET, ": ");
    private static final ByteArrayBuffer CR_LF = encode(MIME.DEFAULT_CHARSET, SocketClient.NETASCII_EOL);
    private static final ByteArrayBuffer TWO_DASHES = encode(MIME.DEFAULT_CHARSET, "--");

    public HttpMultipart(String str, String str2) {
        this(str, null, str2);
    }

    public HttpMultipart(String str, Charset charset, String str2) {
        this(str, charset, str2, HttpMultipartMode.STRICT);
    }

    public HttpMultipart(String str, Charset charset, String str2, HttpMultipartMode httpMultipartMode) {
        if (str == null) {
            throw new IllegalArgumentException("Multipart subtype may not be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("Multipart boundary may not be null");
        }
        this.subType = str;
        this.charset = charset == null ? MIME.DEFAULT_CHARSET : charset;
        this.boundary = str2;
        this.parts = new ArrayList();
        this.mode = httpMultipartMode;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0035. Please report as an issue. */
    private void doWriteTo(HttpMultipartMode httpMultipartMode, OutputStream outputStream, boolean z) {
        ByteArrayBuffer encode = encode(this.charset, getBoundary());
        for (FormBodyPart formBodyPart : this.parts) {
            writeBytes(TWO_DASHES, outputStream);
            writeBytes(encode, outputStream);
            writeBytes(CR_LF, outputStream);
            Header header = formBodyPart.getHeader();
            switch (httpMultipartMode) {
                case STRICT:
                    Iterator<MinimalField> it = header.iterator();
                    while (it.hasNext()) {
                        writeField(it.next(), outputStream);
                    }
                    break;
                case BROWSER_COMPATIBLE:
                    writeField(formBodyPart.getHeader().getField(MIME.CONTENT_DISPOSITION), this.charset, outputStream);
                    if (formBodyPart.getBody().getFilename() != null) {
                        writeField(formBodyPart.getHeader().getField(MIME.CONTENT_TYPE), this.charset, outputStream);
                        break;
                    }
                    break;
            }
            writeBytes(CR_LF, outputStream);
            if (z) {
                formBodyPart.getBody().writeTo(outputStream);
            }
            writeBytes(CR_LF, outputStream);
        }
        writeBytes(TWO_DASHES, outputStream);
        writeBytes(encode, outputStream);
        writeBytes(TWO_DASHES, outputStream);
        writeBytes(CR_LF, outputStream);
    }

    private static ByteArrayBuffer encode(Charset charset, String str) {
        ByteBuffer encode = charset.encode(CharBuffer.wrap(str));
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(encode.remaining());
        byteArrayBuffer.append(encode.array(), encode.position(), encode.remaining());
        return byteArrayBuffer;
    }

    private static void writeBytes(String str, OutputStream outputStream) {
        writeBytes(encode(MIME.DEFAULT_CHARSET, str), outputStream);
    }

    private static void writeBytes(String str, Charset charset, OutputStream outputStream) {
        writeBytes(encode(charset, str), outputStream);
    }

    private static void writeBytes(ByteArrayBuffer byteArrayBuffer, OutputStream outputStream) {
        outputStream.write(byteArrayBuffer.buffer(), 0, byteArrayBuffer.length());
    }

    private static void writeField(MinimalField minimalField, OutputStream outputStream) {
        writeBytes(minimalField.getName(), outputStream);
        writeBytes(FIELD_SEP, outputStream);
        writeBytes(minimalField.getBody(), outputStream);
        writeBytes(CR_LF, outputStream);
    }

    private static void writeField(MinimalField minimalField, Charset charset, OutputStream outputStream) {
        writeBytes(minimalField.getName(), charset, outputStream);
        writeBytes(FIELD_SEP, outputStream);
        writeBytes(minimalField.getBody(), charset, outputStream);
        writeBytes(CR_LF, outputStream);
    }

    public void addBodyPart(FormBodyPart formBodyPart) {
        if (formBodyPart == null) {
            return;
        }
        this.parts.add(formBodyPart);
    }

    public List<FormBodyPart> getBodyParts() {
        return this.parts;
    }

    public String getBoundary() {
        return this.boundary;
    }

    public Charset getCharset() {
        return this.charset;
    }

    public HttpMultipartMode getMode() {
        return this.mode;
    }

    public String getSubType() {
        return this.subType;
    }

    public long getTotalLength() {
        Iterator<FormBodyPart> it = this.parts.iterator();
        long j = 0;
        while (it.hasNext()) {
            long contentLength = it.next().getBody().getContentLength();
            if (contentLength < 0) {
                return -1L;
            }
            j += contentLength;
        }
        try {
            doWriteTo(this.mode, new ByteArrayOutputStream(), false);
            return j + r0.toByteArray().length;
        } catch (IOException e) {
            return -1L;
        }
    }

    public void writeTo(OutputStream outputStream) {
        doWriteTo(this.mode, outputStream, true);
    }
}
