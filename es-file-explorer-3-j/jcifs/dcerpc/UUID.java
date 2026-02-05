package jcifs.dcerpc;

import jcifs.dcerpc.rpc;

/* loaded from: classes.dex */
public class UUID extends rpc.uuid_t {
    static final char[] HEXCHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public UUID(String str) {
        char[] charArray = str.toCharArray();
        this.time_low = hex_to_bin(charArray, 0, 8);
        this.time_mid = S(hex_to_bin(charArray, 9, 4));
        this.time_hi_and_version = S(hex_to_bin(charArray, 14, 4));
        this.clock_seq_hi_and_reserved = B(hex_to_bin(charArray, 19, 2));
        this.clock_seq_low = B(hex_to_bin(charArray, 21, 2));
        this.node = new byte[6];
        this.node[0] = B(hex_to_bin(charArray, 24, 2));
        this.node[1] = B(hex_to_bin(charArray, 26, 2));
        this.node[2] = B(hex_to_bin(charArray, 28, 2));
        this.node[3] = B(hex_to_bin(charArray, 30, 2));
        this.node[4] = B(hex_to_bin(charArray, 32, 2));
        this.node[5] = B(hex_to_bin(charArray, 34, 2));
    }

    public UUID(rpc.uuid_t uuid_tVar) {
        this.time_low = uuid_tVar.time_low;
        this.time_mid = uuid_tVar.time_mid;
        this.time_hi_and_version = uuid_tVar.time_hi_and_version;
        this.clock_seq_hi_and_reserved = uuid_tVar.clock_seq_hi_and_reserved;
        this.clock_seq_low = uuid_tVar.clock_seq_low;
        this.node = new byte[6];
        this.node[0] = uuid_tVar.node[0];
        this.node[1] = uuid_tVar.node[1];
        this.node[2] = uuid_tVar.node[2];
        this.node[3] = uuid_tVar.node[3];
        this.node[4] = uuid_tVar.node[4];
        this.node[5] = uuid_tVar.node[5];
    }

    private static byte B(int i) {
        return (byte) (i & 255);
    }

    private static short S(int i) {
        return (short) (65535 & i);
    }

    public static String bin_to_hex(int i, int i2) {
        char[] cArr = new char[i2];
        int length = cArr.length;
        while (true) {
            int i3 = length - 1;
            if (length <= 0) {
                return new String(cArr);
            }
            cArr[i3] = HEXCHARS[i & 15];
            i >>>= 4;
            length = i3;
        }
    }

    public static int hex_to_bin(char[] cArr, int i, int i2) {
        int i3;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 < cArr.length && i4 < i2; i6++) {
            int i7 = i5 << 4;
            switch (cArr[i6]) {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    i3 = cArr[i6] - '0';
                    break;
                case 'A':
                case 'B':
                case 'C':
                case 'D':
                case 'E':
                case 'F':
                    i3 = (cArr[i6] - 'A') + 10;
                    break;
                case 'a':
                case 'b':
                case 'c':
                case 'd':
                case 'e':
                case 'f':
                    i3 = (cArr[i6] - 'a') + 10;
                    break;
                default:
                    throw new IllegalArgumentException(new String(cArr, i, i2));
            }
            i5 = i7 + i3;
            i4++;
        }
        return i5;
    }

    public String toString() {
        return bin_to_hex(this.time_low, 8) + '-' + bin_to_hex(this.time_mid, 4) + '-' + bin_to_hex(this.time_hi_and_version, 4) + '-' + bin_to_hex(this.clock_seq_hi_and_reserved, 2) + bin_to_hex(this.clock_seq_low, 2) + '-' + bin_to_hex(this.node[0], 2) + bin_to_hex(this.node[1], 2) + bin_to_hex(this.node[2], 2) + bin_to_hex(this.node[3], 2) + bin_to_hex(this.node[4], 2) + bin_to_hex(this.node[5], 2);
    }
}
