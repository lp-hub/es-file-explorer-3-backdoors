package jcifs.util;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class MimeMap {
    private static final int IN_SIZE = 7000;
    private static final int ST_COMM = 2;
    private static final int ST_EXT = 5;
    private static final int ST_GAP = 4;
    private static final int ST_START = 1;
    private static final int ST_TYPE = 3;
    private byte[] in = new byte[IN_SIZE];
    private int inLen;

    public MimeMap() {
        InputStream resourceAsStream = getClass().getClassLoader().getResourceAsStream("jcifs/util/mime.map");
        this.inLen = 0;
        while (true) {
            int read = resourceAsStream.read(this.in, this.inLen, 7000 - this.inLen);
            if (read == -1) {
                break;
            } else {
                this.inLen = read + this.inLen;
            }
        }
        if (this.inLen < 100 || this.inLen == IN_SIZE) {
            throw new IOException("Error reading jcifs/util/mime.map resource");
        }
        resourceAsStream.close();
    }

    public String getMimeType(String str) {
        return getMimeType(str, "application/octet-stream");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001f. Please report as an issue. */
    public String getMimeType(String str, String str2) {
        char c;
        char c2;
        byte[] bArr = new byte[128];
        byte[] bArr2 = new byte[16];
        byte[] bytes = str.toLowerCase().getBytes("ASCII");
        int i = 0;
        char c3 = 1;
        int i2 = 0;
        for (int i3 = 0; i3 < this.inLen; i3++) {
            byte b2 = this.in[i3];
            switch (c3) {
                case 1:
                    if (b2 != 32 && b2 != 9) {
                        if (b2 == 35) {
                            c3 = 2;
                        } else {
                            c = 3;
                            if (b2 != 32 || b2 == 9) {
                                c3 = 4;
                            } else {
                                bArr[i2] = b2;
                                i2++;
                                c3 = c;
                            }
                        }
                    }
                    break;
                case 2:
                    if (b2 == 10) {
                        i = 0;
                        c3 = 1;
                        i2 = 0;
                    }
                case 3:
                    c = c3;
                    if (b2 != 32) {
                        break;
                    }
                    c3 = 4;
                case 4:
                    if (b2 != 32 && b2 != 9) {
                        c3 = 5;
                    }
                    break;
                case 5:
                    switch (b2) {
                        case 9:
                        case 10:
                        case 32:
                        case 35:
                            int i4 = 0;
                            while (i4 < i && i == bytes.length && bArr2[i4] == bytes[i4]) {
                                i4++;
                            }
                            if (i4 == bytes.length) {
                                return new String(bArr, 0, i2, "ASCII");
                            }
                            if (b2 == 35) {
                                c2 = 2;
                            } else if (b2 == 10) {
                                i2 = 0;
                                c2 = 1;
                            } else {
                                c2 = c3;
                            }
                            c3 = c2;
                            i = 0;
                            break;
                        default:
                            bArr2[i] = b2;
                            i++;
                            break;
                    }
                default:
            }
        }
        return str2;
    }
}
