package org.apache.tika.parser.mp3;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import org.apache.commons.net.ftp.FTP;
import org.apache.tika.parser.mp3.ID3Tags;

/* loaded from: classes.dex */
public class ID3v2Frame implements MP3Frame {
    protected static final TextEncoding[] encodings;
    private byte[] data;
    private byte[] extendedHeader;
    private int flags;
    private int length;
    private int majorVersion;
    private int minorVersion;

    /* loaded from: classes.dex */
    public class RawTag {
        protected byte[] data;
        protected int flag;
        private int headerSize;
        protected String name;

        private RawTag(int i, int i2, int i3, int i4, byte[] bArr, int i5) {
            this.headerSize = i + i2 + i4;
            this.name = ID3v2Frame.getString(bArr, i5, i);
            int int3 = (i2 == 3 ? ID3v2Frame.getInt3(bArr, i5 + i) : ID3v2Frame.getInt(bArr, i5 + i)) * i3;
            if (i4 > 0) {
                if (i4 == 1) {
                    this.flag = bArr[i5 + i + i2];
                } else {
                    this.flag = ID3v2Frame.getInt2(bArr, i5 + i + i2);
                }
            }
            int i6 = i5 + i + i2 + i4;
            int min = Math.min(int3, bArr.length - i6);
            this.data = new byte[min];
            System.arraycopy(bArr, i6, this.data, 0, min);
        }

        protected int getSize() {
            return this.headerSize + this.data.length;
        }
    }

    /* loaded from: classes.dex */
    public class RawTagIterator implements Iterator<RawTag> {
        private int flagLength;
        private int nameLength;
        private int offset = 0;
        private int sizeLength;
        private int sizeMultiplier;

        /* JADX INFO: Access modifiers changed from: protected */
        public RawTagIterator(int i, int i2, int i3, int i4) {
            this.nameLength = i;
            this.sizeLength = i2;
            this.sizeMultiplier = i3;
            this.flagLength = i4;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.offset < ID3v2Frame.this.data.length && ID3v2Frame.this.data[this.offset] != 0;
        }

        @Override // java.util.Iterator
        public RawTag next() {
            RawTag rawTag = new RawTag(this.nameLength, this.sizeLength, this.sizeMultiplier, this.flagLength, ID3v2Frame.this.data, this.offset);
            this.offset += rawTag.getSize();
            return rawTag;
        }

        @Override // java.util.Iterator
        public void remove() {
        }
    }

    /* loaded from: classes.dex */
    public class TextEncoding {
        public final boolean doubleByte;
        public final String encoding;

        private TextEncoding(String str, boolean z) {
            this.doubleByte = z;
            this.encoding = str;
        }
    }

    static {
        boolean z = true;
        boolean z2 = false;
        encodings = new TextEncoding[]{new TextEncoding("GBK", z2), new TextEncoding("UTF-16", z), new TextEncoding("UTF-16BE", z), new TextEncoding("UTF-8", z2)};
    }

    private ID3v2Frame(int i, int i2, InputStream inputStream) {
        this.majorVersion = i;
        this.minorVersion = i2;
        this.flags = inputStream.read();
        this.length = get7BitsInt(readFully(inputStream, 4), 0);
        if ((this.flags & 2) == 2) {
            this.extendedHeader = readFully(inputStream, getInt(readFully(inputStream, 4)));
        }
        this.data = readFully(inputStream, this.length, false);
    }

    public static MP3Frame createFrameIfPresent(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        if (read != 73 || read2 != 68 || read3 != 51) {
            int read4 = inputStream.read();
            if (AudioFrame.isAudioHeader(read, read2, read3, read4)) {
                return new AudioFrame(read, read2, read3, read4, inputStream);
            }
            return null;
        }
        int read5 = inputStream.read();
        int read6 = inputStream.read();
        if (read5 == -1 || read6 == -1) {
            return null;
        }
        return new ID3v2Frame(read5, read6, inputStream);
    }

    protected static int get7BitsInt(byte[] bArr, int i) {
        return ((bArr[i + 0] & Byte.MAX_VALUE) << 21) + ((bArr[i + 1] & Byte.MAX_VALUE) << 14) + ((bArr[i + 2] & Byte.MAX_VALUE) << 7) + ((bArr[i + 3] & Byte.MAX_VALUE) << 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ID3Tags.ID3Comment getComment(byte[] bArr, int i, int i2) {
        String str;
        int i3;
        byte b2 = bArr[i];
        if (b2 < 0 || b2 >= encodings.length) {
            return null;
        }
        TextEncoding textEncoding = encodings[b2];
        String string = getString(bArr, i + 1, 3);
        int i4 = i + 4;
        int i5 = i4;
        while (true) {
            if (i5 >= i + i2) {
                str = null;
                i3 = -1;
                break;
            }
            try {
                if (!textEncoding.doubleByte || bArr[i5] != 0 || bArr[i5 + 1] != 0) {
                    if (!textEncoding.doubleByte && bArr[i5] == 0) {
                        i3 = i5 + 1;
                        str = new String(bArr, i4, i5 - i4, textEncoding.encoding);
                        break;
                    }
                    i5++;
                } else {
                    if (i5 + 2 < i + i2 && bArr[i5 + 1] == 0 && bArr[i5 + 2] == 0) {
                        i5++;
                    }
                    i3 = i5 + 2;
                    str = new String(bArr, i4, i5 - i4, textEncoding.encoding);
                }
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException("Core encoding " + textEncoding.encoding + " is not available", e);
            }
        }
        return new ID3Tags.ID3Comment(string, str, i3 > -1 ? new String(bArr, i3, (i + i2) - i3, textEncoding.encoding) : new String(bArr, i4, (i + i2) - i4, textEncoding.encoding));
    }

    protected static int getInt(byte[] bArr) {
        return getInt(bArr, 0);
    }

    protected static int getInt(byte[] bArr, int i) {
        return ((bArr[i + 0] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + ((bArr[i + 3] & 255) << 0);
    }

    protected static int getInt2(byte[] bArr, int i) {
        return ((bArr[i + 0] & 255) << 8) + ((bArr[i + 1] & 255) << 0);
    }

    protected static int getInt3(byte[] bArr, int i) {
        return ((bArr[i + 0] & 255) << 16) + ((bArr[i + 1] & 255) << 8) + ((bArr[i + 2] & 255) << 0);
    }

    protected static String getString(byte[] bArr, int i, int i2) {
        try {
            return new String(bArr, i, i2, FTP.DEFAULT_CONTROL_ENCODING);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Core encoding ISO-8859-1 encoding is not available", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0054, code lost:
    
        return "";
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getTagString(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return "";
        }
        if (i2 == 1 && bArr[i] == 0) {
            return "";
        }
        TextEncoding textEncoding = encodings[0];
        byte b2 = bArr[i];
        if (b2 >= 0 && b2 < encodings.length) {
            i++;
            i2--;
            textEncoding = encodings[b2];
        }
        while (textEncoding.doubleByte && i2 >= 2 && bArr[(i + i2) - 1] == 0 && bArr[(i + i2) - 2] == 0) {
            i2 -= 2;
        }
        while (!textEncoding.doubleByte && i2 >= 1 && bArr[(i + i2) - 1] == 0) {
            i2--;
        }
        if (textEncoding.encoding.equals("UTF-16") && i2 == 2 && ((bArr[i] == -1 && bArr[i + 1] == -2) || (bArr[i] == -2 && bArr[i + 1] == -1))) {
            return "";
        }
        try {
            return new String(bArr, i, i2, textEncoding.encoding);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Core encoding " + textEncoding.encoding + " is not available", e);
        }
    }

    protected static byte[] readFully(InputStream inputStream, int i) {
        return readFully(inputStream, i, true);
    }

    protected static byte[] readFully(InputStream inputStream, int i, boolean z) {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            int read = inputStream.read(bArr, i2, i - i2);
            if (read != -1) {
                i2 += read;
            } else if (z) {
                throw new IOException("Tried to read " + i + " bytes, but only " + i2 + " bytes present");
            }
        }
        return bArr;
    }

    public byte[] getData() {
        return this.data;
    }

    public byte[] getExtendedHeader() {
        return this.extendedHeader;
    }

    public int getFlags() {
        return this.flags;
    }

    public int getLength() {
        return this.length;
    }

    public int getMajorVersion() {
        return this.majorVersion;
    }

    public int getMinorVersion() {
        return this.minorVersion;
    }
}
