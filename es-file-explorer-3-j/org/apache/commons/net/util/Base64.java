package org.apache.commons.net.util;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;

/* loaded from: classes.dex */
public class Base64 {
    static final int CHUNK_SIZE = 76;
    private static final int DEFAULT_BUFFER_RESIZE_FACTOR = 2;
    private static final int DEFAULT_BUFFER_SIZE = 8192;
    private static final int MASK_6BITS = 63;
    private static final int MASK_8BITS = 255;
    private byte[] buffer;
    private int currentLinePos;
    private final int decodeSize;
    private final int encodeSize;
    private final byte[] encodeTable;
    private boolean eof;
    private final int lineLength;
    private final byte[] lineSeparator;
    private int modulus;
    private int pos;
    private int readPos;
    private int x;
    static final byte[] CHUNK_SEPARATOR = {13, 10};
    private static final byte[] STANDARD_ENCODE_TABLE = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte[] URL_SAFE_ENCODE_TABLE = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
    private static final byte PAD = 61;
    private static final byte[] DECODE_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, PAD, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};

    public Base64() {
        this(false);
    }

    public Base64(int i) {
        this(i, CHUNK_SEPARATOR);
    }

    public Base64(int i, byte[] bArr) {
        this(i, bArr, false);
    }

    public Base64(int i, byte[] bArr, boolean z) {
        if (bArr == null) {
            bArr = CHUNK_SEPARATOR;
            i = 0;
        }
        this.lineLength = i > 0 ? (i / 4) * 4 : 0;
        this.lineSeparator = new byte[bArr.length];
        System.arraycopy(bArr, 0, this.lineSeparator, 0, bArr.length);
        if (i > 0) {
            this.encodeSize = bArr.length + 4;
        } else {
            this.encodeSize = 4;
        }
        this.decodeSize = this.encodeSize - 1;
        if (containsBase64Byte(bArr)) {
            throw new IllegalArgumentException("lineSeperator must not contain base64 characters: [" + newStringUtf8(bArr) + "]");
        }
        this.encodeTable = z ? URL_SAFE_ENCODE_TABLE : STANDARD_ENCODE_TABLE;
    }

    public Base64(boolean z) {
        this(CHUNK_SIZE, CHUNK_SEPARATOR, z);
    }

    private static boolean containsBase64Byte(byte[] bArr) {
        for (byte b2 : bArr) {
            if (isBase64(b2)) {
                return true;
            }
        }
        return false;
    }

    public static byte[] decodeBase64(String str) {
        return new Base64().decode(str);
    }

    public static byte[] decodeBase64(byte[] bArr) {
        return new Base64().decode(bArr);
    }

    public static BigInteger decodeInteger(byte[] bArr) {
        return new BigInteger(1, decodeBase64(bArr));
    }

    public static byte[] encodeBase64(byte[] bArr) {
        return encodeBase64(bArr, false);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z) {
        return encodeBase64(bArr, z, false);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z, boolean z2) {
        return encodeBase64(bArr, z, z2, Integer.MAX_VALUE);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z, boolean z2, int i) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        long encodeLength = getEncodeLength(bArr, CHUNK_SIZE, CHUNK_SEPARATOR);
        if (encodeLength > i) {
            throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + encodeLength + ") than the specified maxium size of " + i);
        }
        return (z ? new Base64(z2) : new Base64(0, CHUNK_SEPARATOR, z2)).encode(bArr);
    }

    public static byte[] encodeBase64Chunked(byte[] bArr) {
        return encodeBase64(bArr, true);
    }

    public static String encodeBase64String(byte[] bArr) {
        return newStringUtf8(encodeBase64(bArr, true));
    }

    public static byte[] encodeBase64URLSafe(byte[] bArr) {
        return encodeBase64(bArr, false, true);
    }

    public static String encodeBase64URLSafeString(byte[] bArr) {
        return newStringUtf8(encodeBase64(bArr, false, true));
    }

    public static byte[] encodeInteger(BigInteger bigInteger) {
        if (bigInteger == null) {
            throw new NullPointerException("encodeInteger called with null parameter");
        }
        return encodeBase64(toIntegerBytes(bigInteger), false);
    }

    private byte[] getBytesUtf8(String str) {
        try {
            return str.getBytes("UTF8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    private static long getEncodeLength(byte[] bArr, int i, byte[] bArr2) {
        int i2 = (i / 4) * 4;
        long length = (bArr.length * 4) / 3;
        long j = length % 4;
        if (j != 0) {
            length += 4 - j;
        }
        if (i2 > 0) {
            boolean z = length % ((long) i2) == 0;
            length += (length / i2) * bArr2.length;
            if (!z) {
                return length + bArr2.length;
            }
        }
        return length;
    }

    public static boolean isArrayByteBase64(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            if (!isBase64(bArr[i]) && !isWhiteSpace(bArr[i])) {
                return false;
            }
        }
        return true;
    }

    public static boolean isBase64(byte b2) {
        return b2 == 61 || (b2 >= 0 && b2 < DECODE_TABLE.length && DECODE_TABLE[b2] != -1);
    }

    private static boolean isWhiteSpace(byte b2) {
        switch (b2) {
            case 9:
            case 10:
            case 13:
            case 32:
                return true;
            default:
                return false;
        }
    }

    private static String newStringUtf8(byte[] bArr) {
        try {
            return new String(bArr, "UTF8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    private void reset() {
        this.buffer = null;
        this.pos = 0;
        this.readPos = 0;
        this.currentLinePos = 0;
        this.modulus = 0;
        this.eof = false;
    }

    private void resizeBuffer() {
        if (this.buffer == null) {
            this.buffer = new byte[8192];
            this.pos = 0;
            this.readPos = 0;
        } else {
            byte[] bArr = new byte[this.buffer.length * 2];
            System.arraycopy(this.buffer, 0, bArr, 0, this.buffer.length);
            this.buffer = bArr;
        }
    }

    static byte[] toIntegerBytes(BigInteger bigInteger) {
        int bitLength = ((bigInteger.bitLength() + 7) >> 3) << 3;
        byte[] byteArray = bigInteger.toByteArray();
        if (bigInteger.bitLength() % 8 != 0 && (bigInteger.bitLength() / 8) + 1 == bitLength / 8) {
            return byteArray;
        }
        int i = 0;
        int length = byteArray.length;
        if (bigInteger.bitLength() % 8 == 0) {
            i = 1;
            length--;
        }
        int i2 = (bitLength / 8) - length;
        byte[] bArr = new byte[bitLength / 8];
        System.arraycopy(byteArray, i, bArr, i2, length);
        return bArr;
    }

    int avail() {
        if (this.buffer != null) {
            return this.pos - this.readPos;
        }
        return 0;
    }

    public Object decode(Object obj) {
        if (obj instanceof byte[]) {
            return decode((byte[]) obj);
        }
        if (obj instanceof String) {
            return decode((String) obj);
        }
        throw new RuntimeException("Parameter supplied to Base64 decode is not a byte[] or a String");
    }

    void decode(byte[] bArr, int i, int i2) {
        byte b2;
        if (this.eof) {
            return;
        }
        if (i2 < 0) {
            this.eof = true;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            if (this.buffer == null || this.buffer.length - this.pos < this.decodeSize) {
                resizeBuffer();
            }
            int i4 = i + 1;
            byte b3 = bArr[i];
            if (b3 == 61) {
                this.eof = true;
                break;
            }
            if (b3 >= 0 && b3 < DECODE_TABLE.length && (b2 = DECODE_TABLE[b3]) >= 0) {
                int i5 = this.modulus + 1;
                this.modulus = i5;
                this.modulus = i5 % 4;
                this.x = b2 + (this.x << 6);
                if (this.modulus == 0) {
                    byte[] bArr2 = this.buffer;
                    int i6 = this.pos;
                    this.pos = i6 + 1;
                    bArr2[i6] = (byte) ((this.x >> 16) & MASK_8BITS);
                    byte[] bArr3 = this.buffer;
                    int i7 = this.pos;
                    this.pos = i7 + 1;
                    bArr3[i7] = (byte) ((this.x >> 8) & MASK_8BITS);
                    byte[] bArr4 = this.buffer;
                    int i8 = this.pos;
                    this.pos = i8 + 1;
                    bArr4[i8] = (byte) (this.x & MASK_8BITS);
                }
            }
            i3++;
            i = i4;
        }
        if (!this.eof || this.modulus == 0) {
            return;
        }
        this.x <<= 6;
        switch (this.modulus) {
            case 2:
                this.x <<= 6;
                byte[] bArr5 = this.buffer;
                int i9 = this.pos;
                this.pos = i9 + 1;
                bArr5[i9] = (byte) ((this.x >> 16) & MASK_8BITS);
                return;
            case 3:
                byte[] bArr6 = this.buffer;
                int i10 = this.pos;
                this.pos = i10 + 1;
                bArr6[i10] = (byte) ((this.x >> 16) & MASK_8BITS);
                byte[] bArr7 = this.buffer;
                int i11 = this.pos;
                this.pos = i11 + 1;
                bArr7[i11] = (byte) ((this.x >> 8) & MASK_8BITS);
                return;
            default:
                return;
        }
    }

    public byte[] decode(String str) {
        return decode(getBytesUtf8(str));
    }

    public byte[] decode(byte[] bArr) {
        reset();
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        byte[] bArr2 = new byte[(bArr.length * 3) / 4];
        setInitialBuffer(bArr2, 0, bArr2.length);
        decode(bArr, 0, bArr.length);
        decode(bArr, 0, -1);
        byte[] bArr3 = new byte[this.pos];
        readResults(bArr3, 0, bArr3.length);
        return bArr3;
    }

    public Object encode(Object obj) {
        if (obj instanceof byte[]) {
            return encode((byte[]) obj);
        }
        throw new RuntimeException("Parameter supplied to Base64 encode is not a byte[]");
    }

    void encode(byte[] bArr, int i, int i2) {
        if (this.eof) {
            return;
        }
        if (i2 >= 0) {
            int i3 = 0;
            while (i3 < i2) {
                if (this.buffer == null || this.buffer.length - this.pos < this.encodeSize) {
                    resizeBuffer();
                }
                int i4 = this.modulus + 1;
                this.modulus = i4;
                this.modulus = i4 % 3;
                int i5 = i + 1;
                int i6 = bArr[i];
                if (i6 < 0) {
                    i6 += 256;
                }
                this.x = i6 + (this.x << 8);
                if (this.modulus == 0) {
                    byte[] bArr2 = this.buffer;
                    int i7 = this.pos;
                    this.pos = i7 + 1;
                    bArr2[i7] = this.encodeTable[(this.x >> 18) & MASK_6BITS];
                    byte[] bArr3 = this.buffer;
                    int i8 = this.pos;
                    this.pos = i8 + 1;
                    bArr3[i8] = this.encodeTable[(this.x >> 12) & MASK_6BITS];
                    byte[] bArr4 = this.buffer;
                    int i9 = this.pos;
                    this.pos = i9 + 1;
                    bArr4[i9] = this.encodeTable[(this.x >> 6) & MASK_6BITS];
                    byte[] bArr5 = this.buffer;
                    int i10 = this.pos;
                    this.pos = i10 + 1;
                    bArr5[i10] = this.encodeTable[this.x & MASK_6BITS];
                    this.currentLinePos += 4;
                    if (this.lineLength > 0 && this.lineLength <= this.currentLinePos) {
                        System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
                        this.pos += this.lineSeparator.length;
                        this.currentLinePos = 0;
                    }
                }
                i3++;
                i = i5;
            }
            return;
        }
        this.eof = true;
        if (this.buffer == null || this.buffer.length - this.pos < this.encodeSize) {
            resizeBuffer();
        }
        switch (this.modulus) {
            case 1:
                byte[] bArr6 = this.buffer;
                int i11 = this.pos;
                this.pos = i11 + 1;
                bArr6[i11] = this.encodeTable[(this.x >> 2) & MASK_6BITS];
                byte[] bArr7 = this.buffer;
                int i12 = this.pos;
                this.pos = i12 + 1;
                bArr7[i12] = this.encodeTable[(this.x << 4) & MASK_6BITS];
                if (this.encodeTable == STANDARD_ENCODE_TABLE) {
                    byte[] bArr8 = this.buffer;
                    int i13 = this.pos;
                    this.pos = i13 + 1;
                    bArr8[i13] = PAD;
                    byte[] bArr9 = this.buffer;
                    int i14 = this.pos;
                    this.pos = i14 + 1;
                    bArr9[i14] = PAD;
                    break;
                }
                break;
            case 2:
                byte[] bArr10 = this.buffer;
                int i15 = this.pos;
                this.pos = i15 + 1;
                bArr10[i15] = this.encodeTable[(this.x >> 10) & MASK_6BITS];
                byte[] bArr11 = this.buffer;
                int i16 = this.pos;
                this.pos = i16 + 1;
                bArr11[i16] = this.encodeTable[(this.x >> 4) & MASK_6BITS];
                byte[] bArr12 = this.buffer;
                int i17 = this.pos;
                this.pos = i17 + 1;
                bArr12[i17] = this.encodeTable[(this.x << 2) & MASK_6BITS];
                if (this.encodeTable == STANDARD_ENCODE_TABLE) {
                    byte[] bArr13 = this.buffer;
                    int i18 = this.pos;
                    this.pos = i18 + 1;
                    bArr13[i18] = PAD;
                    break;
                }
                break;
        }
        if (this.lineLength <= 0 || this.pos <= 0) {
            return;
        }
        System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
        this.pos += this.lineSeparator.length;
    }

    public byte[] encode(byte[] bArr) {
        reset();
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        byte[] bArr2 = new byte[(int) getEncodeLength(bArr, this.lineLength, this.lineSeparator)];
        setInitialBuffer(bArr2, 0, bArr2.length);
        encode(bArr, 0, bArr.length);
        encode(bArr, 0, -1);
        if (this.buffer != bArr2) {
            readResults(bArr2, 0, bArr2.length);
        }
        if (!isUrlSafe() || this.pos >= bArr2.length) {
            return bArr2;
        }
        byte[] bArr3 = new byte[this.pos];
        System.arraycopy(bArr2, 0, bArr3, 0, this.pos);
        return bArr3;
    }

    public String encodeToString(byte[] bArr) {
        return newStringUtf8(encode(bArr));
    }

    boolean hasData() {
        return this.buffer != null;
    }

    public boolean isUrlSafe() {
        return this.encodeTable == URL_SAFE_ENCODE_TABLE;
    }

    int readResults(byte[] bArr, int i, int i2) {
        if (this.buffer == null) {
            return this.eof ? -1 : 0;
        }
        int min = Math.min(avail(), i2);
        if (this.buffer == bArr) {
            this.buffer = null;
            return min;
        }
        System.arraycopy(this.buffer, this.readPos, bArr, i, min);
        this.readPos += min;
        if (this.readPos < this.pos) {
            return min;
        }
        this.buffer = null;
        return min;
    }

    void setInitialBuffer(byte[] bArr, int i, int i2) {
        if (bArr == null || bArr.length != i2) {
            return;
        }
        this.buffer = bArr;
        this.pos = i;
        this.readPos = i;
    }
}
