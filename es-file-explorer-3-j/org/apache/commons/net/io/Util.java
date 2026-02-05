package org.apache.commons.net.io;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.net.Socket;

/* loaded from: classes.dex */
public final class Util {
    public static final int DEFAULT_COPY_BUFFER_SIZE = 1024;

    private Util() {
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static void closeQuietly(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (IOException e) {
            }
        }
    }

    public static final long copyReader(Reader reader, Writer writer) {
        return copyReader(reader, writer, 1024);
    }

    public static final long copyReader(Reader reader, Writer writer, int i) {
        return copyReader(reader, writer, i, -1L, null);
    }

    public static final long copyReader(Reader reader, Writer writer, int i, long j, CopyStreamListener copyStreamListener) {
        char[] cArr = new char[i];
        long j2 = 0;
        while (true) {
            try {
                int read = reader.read(cArr);
                if (read == -1) {
                    break;
                }
                if (read == 0) {
                    int read2 = reader.read();
                    if (read2 < 0) {
                        break;
                    }
                    writer.write(read2);
                    writer.flush();
                    j2++;
                    if (copyStreamListener != null) {
                        copyStreamListener.bytesTransferred(j2, read2, j);
                    }
                } else {
                    writer.write(cArr, 0, read);
                    writer.flush();
                    j2 += read;
                    if (copyStreamListener != null) {
                        copyStreamListener.bytesTransferred(j2, read, j);
                    }
                }
            } catch (IOException e) {
                throw new CopyStreamException("IOException caught while copying.", j2, e);
            }
        }
        return j2;
    }

    public static final long copyStream(InputStream inputStream, OutputStream outputStream) {
        return copyStream(inputStream, outputStream, 1024);
    }

    public static final long copyStream(InputStream inputStream, OutputStream outputStream, int i) {
        return copyStream(inputStream, outputStream, i, -1L, null);
    }

    public static final long copyStream(InputStream inputStream, OutputStream outputStream, int i, long j, CopyStreamListener copyStreamListener) {
        return copyStream(inputStream, outputStream, i, j, copyStreamListener, true);
    }

    public static final long copyStream(InputStream inputStream, OutputStream outputStream, int i, long j, CopyStreamListener copyStreamListener, boolean z) {
        byte[] bArr = new byte[i];
        long j2 = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                if (read == 0) {
                    int read2 = inputStream.read();
                    if (read2 < 0) {
                        break;
                    }
                    outputStream.write(read2);
                    if (z) {
                        outputStream.flush();
                    }
                    j2++;
                    if (copyStreamListener != null) {
                        copyStreamListener.bytesTransferred(j2, 1, j);
                    }
                } else {
                    outputStream.write(bArr, 0, read);
                    if (z) {
                        outputStream.flush();
                    }
                    j2 += read;
                    if (copyStreamListener != null) {
                        copyStreamListener.bytesTransferred(j2, read, j);
                    }
                }
            } catch (IOException e) {
                throw new CopyStreamException("IOException caught while copying.", j2, e);
            }
        }
        return j2;
    }
}
