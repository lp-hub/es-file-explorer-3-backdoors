package jcifs.util;

import java.io.PrintStream;

/* loaded from: classes.dex */
public class Hexdump {
    private static final String NL = System.getProperty("line.separator");
    private static final int NL_LENGTH = NL.length();
    private static final char[] SPACE_CHARS = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '};
    public static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static void hexdump(PrintStream printStream, byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return;
        }
        int i3 = i2 % 16;
        char[] cArr = new char[(i3 == 0 ? i2 / 16 : (i2 / 16) + 1) * (NL_LENGTH + 74)];
        char[] cArr2 = new char[16];
        int i4 = 0;
        int i5 = 0;
        do {
            toHexChars(i5, cArr, i4, 5);
            int i6 = i4 + 5;
            int i7 = i6 + 1;
            cArr[i6] = ':';
            while (true) {
                if (i5 == i2) {
                    int i8 = 16 - i3;
                    System.arraycopy(SPACE_CHARS, 0, cArr, i7, i8 * 3);
                    i7 += i8 * 3;
                    System.arraycopy(SPACE_CHARS, 0, cArr2, i3, i8);
                    break;
                }
                int i9 = i7 + 1;
                cArr[i7] = ' ';
                int i10 = bArr[i + i5] & 255;
                toHexChars(i10, cArr, i9, 2);
                i7 = i9 + 2;
                if (i10 < 0 || Character.isISOControl((char) i10)) {
                    cArr2[i5 % 16] = '.';
                } else {
                    cArr2[i5 % 16] = (char) i10;
                }
                i5++;
                if (i5 % 16 == 0) {
                    break;
                }
            }
            int i11 = i7 + 1;
            cArr[i7] = ' ';
            int i12 = i11 + 1;
            cArr[i11] = ' ';
            int i13 = i12 + 1;
            cArr[i12] = '|';
            System.arraycopy(cArr2, 0, cArr, i13, 16);
            int i14 = i13 + 16;
            int i15 = i14 + 1;
            cArr[i14] = '|';
            NL.getChars(0, NL_LENGTH, cArr, i15);
            i4 = NL_LENGTH + i15;
        } while (i5 < i2);
        printStream.println(cArr);
    }

    public static void toHexChars(int i, char[] cArr, int i2, int i3) {
        int i4 = i;
        while (i3 > 0) {
            int i5 = (i2 + i3) - 1;
            if (i5 < cArr.length) {
                cArr[i5] = HEX_DIGITS[i4 & 15];
            }
            if (i4 != 0) {
                i4 >>>= 4;
            }
            i3--;
        }
    }

    public static void toHexChars(long j, char[] cArr, int i, int i2) {
        long j2 = j;
        while (i2 > 0) {
            cArr[(i + i2) - 1] = HEX_DIGITS[(int) (15 & j2)];
            if (j2 != 0) {
                j2 >>>= 4;
            }
            i2--;
        }
    }

    public static String toHexString(int i, int i2) {
        char[] cArr = new char[i2];
        toHexChars(i, cArr, 0, i2);
        return new String(cArr);
    }

    public static String toHexString(long j, int i) {
        char[] cArr = new char[i];
        toHexChars(j, cArr, 0, i);
        return new String(cArr);
    }

    public static String toHexString(byte[] bArr, int i, int i2) {
        int i3 = 0;
        char[] cArr = new char[i2];
        int i4 = i2 % 2 == 0 ? i2 / 2 : (i2 / 2) + 1;
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i3 + 1;
            cArr[i3] = HEX_DIGITS[(bArr[i5] >> 4) & 15];
            if (i6 == cArr.length) {
                break;
            }
            i3 = i6 + 1;
            cArr[i6] = HEX_DIGITS[bArr[i5] & 15];
        }
        return new String(cArr);
    }
}
