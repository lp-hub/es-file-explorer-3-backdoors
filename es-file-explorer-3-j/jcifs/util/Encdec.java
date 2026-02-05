package jcifs.util;

import java.io.IOException;
import java.util.Date;

/* loaded from: classes.dex */
public class Encdec {
    public static final long MILLISECONDS_BETWEEN_1970_AND_1601 = 11644473600000L;
    public static final long SEC_BETWEEEN_1904_AND_1970 = 2082844800;
    public static final int TIME_1601_NANOS_64BE = 6;
    public static final int TIME_1601_NANOS_64LE = 5;
    public static final int TIME_1904_SEC_32BE = 3;
    public static final int TIME_1904_SEC_32LE = 4;
    public static final int TIME_1970_MILLIS_64BE = 7;
    public static final int TIME_1970_MILLIS_64LE = 8;
    public static final int TIME_1970_SEC_32BE = 1;
    public static final int TIME_1970_SEC_32LE = 2;

    public static double dec_doublebe(byte[] bArr, int i) {
        return Double.longBitsToDouble(dec_uint64be(bArr, i));
    }

    public static double dec_doublele(byte[] bArr, int i) {
        return Double.longBitsToDouble(dec_uint64le(bArr, i));
    }

    public static float dec_floatbe(byte[] bArr, int i) {
        return Float.intBitsToFloat(dec_uint32be(bArr, i));
    }

    public static float dec_floatle(byte[] bArr, int i) {
        return Float.intBitsToFloat(dec_uint32le(bArr, i));
    }

    public static Date dec_time(byte[] bArr, int i, int i2) {
        switch (i2) {
            case 1:
                return new Date(dec_uint32be(bArr, i) * 1000);
            case 2:
                return new Date(dec_uint32le(bArr, i) * 1000);
            case 3:
                return new Date(((dec_uint32be(bArr, i) & 4294967295L) - SEC_BETWEEEN_1904_AND_1970) * 1000);
            case 4:
                return new Date(((dec_uint32le(bArr, i) & 4294967295L) - SEC_BETWEEEN_1904_AND_1970) * 1000);
            case 5:
                return new Date((dec_uint64le(bArr, i) / 10000) - 11644473600000L);
            case 6:
                return new Date((dec_uint64be(bArr, i) / 10000) - 11644473600000L);
            case 7:
                return new Date(dec_uint64be(bArr, i));
            case 8:
                return new Date(dec_uint64le(bArr, i));
            default:
                throw new IllegalArgumentException("Unsupported time encoding");
        }
    }

    public static String dec_ucs2le(byte[] bArr, int i, int i2, char[] cArr) {
        int i3 = 0;
        while (i + 1 < i2) {
            cArr[i3] = (char) dec_uint16le(bArr, i);
            if (cArr[i3] == 0) {
                break;
            }
            i3++;
            i += 2;
        }
        return new String(cArr, 0, i3);
    }

    public static short dec_uint16be(byte[] bArr, int i) {
        return (short) (((bArr[i] & 255) << 8) | (bArr[i + 1] & 255));
    }

    public static short dec_uint16le(byte[] bArr, int i) {
        return (short) ((bArr[i] & 255) | ((bArr[i + 1] & 255) << 8));
    }

    public static int dec_uint32be(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8) | (bArr[i + 3] & 255);
    }

    public static int dec_uint32le(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }

    public static long dec_uint64be(byte[] bArr, int i) {
        return ((dec_uint32be(bArr, i) & 4294967295L) << 32) | (dec_uint32be(bArr, i + 4) & 4294967295L);
    }

    public static long dec_uint64le(byte[] bArr, int i) {
        return ((dec_uint32le(bArr, i + 4) & 4294967295L) << 32) | (dec_uint32le(bArr, i) & 4294967295L);
    }

    public static String dec_utf8(byte[] bArr, int i, int i2) {
        char[] cArr = new char[i2 - i];
        int i3 = 0;
        while (i < i2) {
            int i4 = i + 1;
            int i5 = bArr[i] & 255;
            if (i5 == 0) {
                break;
            }
            if (i5 < 128) {
                cArr[i3] = (char) i5;
            } else if ((i5 & 224) == 192) {
                if (i2 - i4 < 2) {
                    break;
                }
                cArr[i3] = (char) ((i5 & 31) << 6);
                int i6 = i4 + 1;
                int i7 = bArr[i4] & 255;
                cArr[i3] = (char) (cArr[i3] | (i7 & 63));
                if ((i7 & 192) != 128 || cArr[i3] < 128) {
                    throw new IOException("Invalid UTF-8 sequence");
                }
                i4 = i6;
            } else {
                if ((i5 & 240) != 224) {
                    throw new IOException("Unsupported UTF-8 sequence");
                }
                if (i2 - i4 < 3) {
                    break;
                }
                cArr[i3] = (char) ((i5 & 15) << 12);
                int i8 = i4 + 1;
                int i9 = bArr[i4] & 255;
                if ((i9 & 192) != 128) {
                    throw new IOException("Invalid UTF-8 sequence");
                }
                cArr[i3] = (char) (((i9 & 63) << 6) | cArr[i3]);
                i4 = i8 + 1;
                int i10 = bArr[i8] & 255;
                cArr[i3] = (char) (cArr[i3] | (i10 & 63));
                if ((i10 & 192) != 128 || cArr[i3] < 2048) {
                    throw new IOException("Invalid UTF-8 sequence");
                }
            }
            i3++;
            i = i4;
        }
        return new String(cArr, 0, i3);
    }

    public static int enc_doublebe(double d, byte[] bArr, int i) {
        return enc_uint64be(Double.doubleToLongBits(d), bArr, i);
    }

    public static int enc_doublele(double d, byte[] bArr, int i) {
        return enc_uint64le(Double.doubleToLongBits(d), bArr, i);
    }

    public static int enc_floatbe(float f, byte[] bArr, int i) {
        return enc_uint32be(Float.floatToIntBits(f), bArr, i);
    }

    public static int enc_floatle(float f, byte[] bArr, int i) {
        return enc_uint32le(Float.floatToIntBits(f), bArr, i);
    }

    public static int enc_time(Date date, byte[] bArr, int i, int i2) {
        switch (i2) {
            case 1:
                return enc_uint32be((int) (date.getTime() / 1000), bArr, i);
            case 2:
                return enc_uint32le((int) (date.getTime() / 1000), bArr, i);
            case 3:
                return enc_uint32be((int) (((date.getTime() / 1000) + SEC_BETWEEEN_1904_AND_1970) & (-1)), bArr, i);
            case 4:
                return enc_uint32le((int) (((date.getTime() / 1000) + SEC_BETWEEEN_1904_AND_1970) & (-1)), bArr, i);
            case 5:
                return enc_uint64le((date.getTime() + 11644473600000L) * 10000, bArr, i);
            case 6:
                return enc_uint64be((date.getTime() + 11644473600000L) * 10000, bArr, i);
            case 7:
                return enc_uint64be(date.getTime(), bArr, i);
            case 8:
                return enc_uint64le(date.getTime(), bArr, i);
            default:
                throw new IllegalArgumentException("Unsupported time encoding");
        }
    }

    public static int enc_uint16be(short s, byte[] bArr, int i) {
        bArr[i] = (byte) ((s >> 8) & 255);
        bArr[i + 1] = (byte) (s & 255);
        return 2;
    }

    public static int enc_uint16le(short s, byte[] bArr, int i) {
        bArr[i] = (byte) (s & 255);
        bArr[i + 1] = (byte) ((s >> 8) & 255);
        return 2;
    }

    public static int enc_uint32be(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >> 16) & 255);
        bArr[i4] = (byte) ((i >> 8) & 255);
        bArr[i4 + 1] = (byte) (i & 255);
        return 4;
    }

    public static int enc_uint32le(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >> 8) & 255);
        bArr[i4] = (byte) ((i >> 16) & 255);
        bArr[i4 + 1] = (byte) ((i >> 24) & 255);
        return 4;
    }

    public static int enc_uint64be(long j, byte[] bArr, int i) {
        enc_uint32be((int) (j & 4294967295L), bArr, i + 4);
        enc_uint32be((int) ((j >> 32) & 4294967295L), bArr, i);
        return 8;
    }

    public static int enc_uint64le(long j, byte[] bArr, int i) {
        enc_uint32le((int) (j & 4294967295L), bArr, i);
        enc_uint32le((int) ((j >> 32) & 4294967295L), bArr, i + 4);
        return 8;
    }

    public static int enc_utf8(String str, byte[] bArr, int i, int i2) {
        int i3;
        int length = str.length();
        int i4 = 0;
        int i5 = i;
        while (i5 < i2 && i4 < length) {
            char charAt = str.charAt(i4);
            if (charAt >= 1 && charAt <= 127) {
                i3 = i5 + 1;
                bArr[i5] = (byte) charAt;
            } else if (charAt <= 2047) {
                if (i2 - i5 < 2) {
                    break;
                }
                int i6 = i5 + 1;
                bArr[i5] = (byte) (((charAt >> 6) & 31) | 192);
                i3 = i6 + 1;
                bArr[i6] = (byte) (((charAt >> 0) & 63) | 128);
            } else {
                if (i2 - i5 < 3) {
                    break;
                }
                int i7 = i5 + 1;
                bArr[i5] = (byte) (((charAt >> '\f') & 15) | 224);
                int i8 = i7 + 1;
                bArr[i7] = (byte) (((charAt >> 6) & 63) | 128);
                i3 = i8 + 1;
                bArr[i8] = (byte) (((charAt >> 0) & 63) | 128);
            }
            i4++;
            i5 = i3;
        }
        return i5 - i;
    }
}
