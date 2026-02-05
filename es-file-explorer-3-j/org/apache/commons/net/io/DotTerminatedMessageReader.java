package org.apache.commons.net.io;

import java.io.BufferedReader;
import java.io.Reader;

/* loaded from: classes.dex */
public final class DotTerminatedMessageReader extends BufferedReader {
    private static final char CR = '\r';
    private static final int DOT = 46;
    private static final char LF = '\n';
    private boolean atBeginning;
    private boolean eof;
    private boolean seenCR;

    public DotTerminatedMessageReader(Reader reader) {
        super(reader);
        this.atBeginning = true;
        this.eof = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x000e, code lost:
    
        r3.eof = true;
        r3.atBeginning = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0005, code lost:
    
        if (r3.eof == false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000c, code lost:
    
        if (read() != (-1)) goto L17;
     */
    @Override // java.io.BufferedReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() {
        synchronized (this.lock) {
        }
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public int read() {
        synchronized (this.lock) {
            if (this.eof) {
                return -1;
            }
            int read = super.read();
            if (read == -1) {
                this.eof = true;
                return -1;
            }
            if (this.atBeginning) {
                this.atBeginning = false;
                if (read == DOT) {
                    mark(2);
                    int read2 = super.read();
                    if (read2 == -1) {
                        this.eof = true;
                        return DOT;
                    }
                    if (read2 == DOT) {
                        return read2;
                    }
                    if (read2 == 13) {
                        int read3 = super.read();
                        if (read3 == -1) {
                            reset();
                            return DOT;
                        }
                        if (read3 == 10) {
                            this.atBeginning = true;
                            this.eof = true;
                            return -1;
                        }
                    }
                    reset();
                    return DOT;
                }
            }
            if (this.seenCR) {
                this.seenCR = false;
                if (read == 10) {
                    this.atBeginning = true;
                }
            }
            if (read == 13) {
                this.seenCR = true;
            }
            return read;
        }
    }

    @Override // java.io.Reader
    public int read(char[] cArr) {
        return read(cArr, 0, cArr.length);
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        int i3;
        synchronized (this.lock) {
            if (i2 < 1) {
                return 0;
            }
            int read = read();
            if (read == -1) {
                return -1;
            }
            int i4 = i;
            while (true) {
                i3 = i4 + 1;
                cArr[i4] = (char) read;
                i2--;
                if (i2 <= 0 || (read = read()) == -1) {
                    break;
                }
                i4 = i3;
            }
            return i3 - i;
        }
    }

    @Override // java.io.BufferedReader
    public String readLine() {
        StringBuilder sb = new StringBuilder();
        synchronized (this.lock) {
            while (true) {
                int read = read();
                if (read == -1) {
                    String sb2 = sb.toString();
                    if (sb2.length() == 0) {
                        return null;
                    }
                    return sb2;
                }
                if (read == 10 && this.atBeginning) {
                    return sb.substring(0, sb.length() - 1);
                }
                sb.append((char) read);
            }
        }
    }
}
