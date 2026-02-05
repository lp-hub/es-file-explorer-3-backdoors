package jcifs.util;

import android.R;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.netfs.utils.TypeUtils;
import jcifs.netbios.NbtException;
import jcifs.ntlmssp.NtlmFlags;

/* loaded from: classes.dex */
public class DES {
    private int[] decryptKeys;
    private int[] encryptKeys;
    private int[] tempInts;
    private static byte[] bytebit = {Byte.MIN_VALUE, 64, 32, 16, 8, 4, 2, 1};
    private static int[] bigbyte = {NtlmFlags.NTLMSSP_NEGOTIATE_TARGET_INFO, NtlmFlags.NTLMSSP_REQUEST_NON_NT_SESSION_KEY, NtlmFlags.NTLMSSP_REQUEST_ACCEPT_RESPONSE, 1048576, 524288, 262144, 131072, 65536, 32768, 16384, 8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1};
    private static byte[] pc1 = {56, 48, 40, 32, 24, 16, 8, 0, 57, 49, 41, 33, 25, 17, 9, 1, 58, 50, 42, 34, 26, 18, 10, 2, 59, 51, 43, 35, 62, 54, 46, 38, 30, 22, 14, 6, 61, 53, 45, 37, 29, 21, 13, 5, 60, 52, 44, 36, 28, 20, 12, 4, 27, 19, 11, 3};
    private static int[] totrot = {1, 2, 4, 6, 8, 10, 12, 14, 15, 17, 19, 21, 23, 25, 27, 28};
    private static byte[] pc2 = {13, 16, 10, 23, 0, 4, 2, 27, 14, 5, 20, 9, 22, 18, 11, 3, 25, 7, 15, 6, 26, 19, 12, 1, 40, 51, 30, 36, 46, 54, 29, 39, 50, 44, 32, 47, 43, 48, 38, 55, 33, 52, 45, 41, 49, 35, 28, 31};
    private static int[] SP1 = {R.attr.transitionName, 0, 65536, R.attr.fillColor, R.attr.manageSpaceActivity, 66564, 4, 65536, 1024, R.attr.transitionName, R.attr.fillColor, 1024, 16778244, R.attr.manageSpaceActivity, 16777216, 4, 1028, 16778240, 16778240, 66560, 66560, C0000R.id.url, C0000R.id.url, 16778244, 65540, 16777220, 16777220, 65540, 0, 1028, 66564, 16777216, 65536, R.attr.fillColor, 4, C0000R.id.url, R.attr.transitionName, 16777216, 16777216, 1024, R.attr.manageSpaceActivity, 65536, 66560, 16777220, 1024, 4, 16778244, 66564, R.attr.fillColor, 65540, C0000R.id.url, 16778244, 16777220, 1028, 66564, R.attr.transitionName, 1028, 16778240, 16778240, 0, 65540, 66560, 0, R.attr.manageSpaceActivity};
    private static int[] SP2 = {-2146402272, -2147450880, 32768, 1081376, 1048576, 32, -2146435040, -2147450848, -2147483616, -2146402272, -2146402304, Integer.MIN_VALUE, -2147450880, 1048576, 32, -2146435040, 1081344, 1048608, -2147450848, 0, Integer.MIN_VALUE, 32768, 1081376, -2146435072, 1048608, -2147483616, 0, 1081344, 32800, -2146402304, -2146435072, 32800, 0, 1081376, -2146435040, 1048576, -2147450848, -2146435072, -2146402304, 32768, -2146435072, -2147450880, 32, -2146402272, 1081376, 32, 32768, Integer.MIN_VALUE, 32800, -2146402304, 1048576, -2147483616, 1048608, -2147450848, -2147483616, 1048608, 1081344, 0, -2147450880, 32800, Integer.MIN_VALUE, -2146435040, -2146402272, 1081344};
    private static int[] SP3 = {520, 134349312, 0, 134348808, 134218240, 0, 131592, 134218240, 131080, 134217736, 134217736, 131072, 134349320, 131080, 134348800, 520, 134217728, 8, 134349312, 512, 131584, 134348800, 134348808, 131592, 134218248, 131584, 131072, 134218248, 8, 134349320, 512, 134217728, 134349312, 134217728, 131080, 520, 131072, 134349312, 134218240, 0, 512, 131080, 134349320, 134218240, 134217736, 512, 0, 134348808, 134218248, 131072, 134217728, 134349320, 8, 131592, 131584, 134217736, 134348800, 134218248, 520, 134348800, 131592, 8, 134348808, 131584};
    private static int[] SP4 = {8396801, 8321, 8321, 128, 8396928, 8388737, 8388609, 8193, 0, 8396800, 8396800, 8396929, NbtException.NOT_LISTENING_CALLING, 0, 8388736, 8388609, 1, 8192, NtlmFlags.NTLMSSP_NEGOTIATE_TARGET_INFO, 8396801, 128, NtlmFlags.NTLMSSP_NEGOTIATE_TARGET_INFO, 8193, 8320, 8388737, 1, 8320, 8388736, 8192, 8396928, 8396929, NbtException.NOT_LISTENING_CALLING, 8388736, 8388609, 8396800, 8396929, NbtException.NOT_LISTENING_CALLING, 0, 0, 8396800, 8320, 8388736, 8388737, 1, 8396801, 8321, 8321, 128, 8396929, NbtException.NOT_LISTENING_CALLING, 1, 8192, 8388609, 8193, 8396928, 8388737, 8193, 8320, NtlmFlags.NTLMSSP_NEGOTIATE_TARGET_INFO, 8396801, 128, NtlmFlags.NTLMSSP_NEGOTIATE_TARGET_INFO, 8192, 8396928};
    private static int[] SP5 = {256, 34078976, 34078720, 1107296512, 524288, 256, 1073741824, 34078720, 1074266368, 524288, 33554688, 1074266368, 1107296512, 1107820544, 524544, 1073741824, 33554432, 1074266112, 1074266112, 0, 1073742080, 1107820800, 1107820800, 33554688, 1107820544, 1073742080, 0, 1107296256, 34078976, 33554432, 1107296256, 524544, 524288, 1107296512, 256, 33554432, 1073741824, 34078720, 1107296512, 1074266368, 33554688, 1073741824, 1107820544, 34078976, 1074266368, 256, 33554432, 1107820544, 1107820800, 524544, 1107296256, 1107820800, 34078720, 0, 1074266112, 1107296256, 524544, 33554688, 1073742080, 524288, 0, 1074266112, 34078976, 1073742080};
    private static int[] SP6 = {536870928, 541065216, 16384, 541081616, 541065216, 16, 541081616, NtlmFlags.NTLMSSP_REQUEST_NON_NT_SESSION_KEY, 536887296, 4210704, NtlmFlags.NTLMSSP_REQUEST_NON_NT_SESSION_KEY, 536870928, 4194320, 536887296, 536870912, 16400, 0, 4194320, 536887312, 16384, 4210688, 536887312, 16, 541065232, 541065232, 0, 4210704, 541081600, 16400, 4210688, 541081600, 536870912, 536887296, 16, 541065232, 4210688, 541081616, NtlmFlags.NTLMSSP_REQUEST_NON_NT_SESSION_KEY, 16400, 536870928, NtlmFlags.NTLMSSP_REQUEST_NON_NT_SESSION_KEY, 536887296, 536870912, 16400, 536870928, 541081616, 4210688, 541065216, 4210704, 541081600, 0, 541065232, 16, 16384, 541065216, 4210704, 16384, 4194320, 536887312, 0, 541081600, 536870912, 4194320, 536887312};
    private static int[] SP7 = {NtlmFlags.NTLMSSP_REQUEST_ACCEPT_RESPONSE, 69206018, 67110914, 0, 2048, 67110914, 2099202, 69208064, 69208066, NtlmFlags.NTLMSSP_REQUEST_ACCEPT_RESPONSE, 0, 67108866, 2, 67108864, 69206018, 2050, 67110912, 2099202, 2097154, 67110912, 67108866, 69206016, 69208064, 2097154, 69206016, 2048, 2050, 69208066, 2099200, 2, 67108864, 2099200, 67108864, 2099200, NtlmFlags.NTLMSSP_REQUEST_ACCEPT_RESPONSE, 67110914, 67110914, 69206018, 69206018, 2, 2097154, 67108864, 67110912, NtlmFlags.NTLMSSP_REQUEST_ACCEPT_RESPONSE, 69208064, 2050, 2099202, 69208064, 2050, 67108866, 69208066, 69206016, 2099200, 0, 2, 69208066, 0, 2099202, 69206016, 2048, 67108866, 67110912, 2048, 2097154};
    private static int[] SP8 = {268439616, 4096, 262144, 268701760, 268435456, 268439616, 64, 268435456, TypeUtils.WIN_CHM, 268697600, 268701760, 266240, 268701696, 266304, 4096, 64, 268697600, 268435520, 268439552, 4160, 266240, TypeUtils.WIN_CHM, 268697664, 268701696, 4160, 0, 0, 268697664, 268435520, 268439552, 266304, 262144, 266304, 262144, 268701696, 4096, 64, 268697664, 4096, 266304, 268439552, 64, 268435520, 268697600, 268697664, 268435456, 262144, 268439616, 0, 268701760, TypeUtils.WIN_CHM, 268435520, 268697600, 268439552, 268439616, 0, 268701760, 266240, 266240, 4160, 4160, TypeUtils.WIN_CHM, 268435456, 268701696};

    public DES() {
        this.encryptKeys = new int[32];
        this.decryptKeys = new int[32];
        this.tempInts = new int[2];
    }

    public DES(byte[] bArr) {
        this.encryptKeys = new int[32];
        this.decryptKeys = new int[32];
        this.tempInts = new int[2];
        if (bArr.length != 7) {
            setKey(bArr);
            return;
        }
        byte[] bArr2 = new byte[8];
        makeSMBKey(bArr, bArr2);
        setKey(bArr2);
    }

    private void cookey(int[] iArr, int[] iArr2) {
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            int i4 = i2 + 1;
            int i5 = iArr[i2];
            i2 = i4 + 1;
            int i6 = iArr[i4];
            iArr2[i] = (i5 & 16515072) << 6;
            iArr2[i] = iArr2[i] | ((i5 & 4032) << 10);
            iArr2[i] = iArr2[i] | ((i6 & 16515072) >>> 10);
            iArr2[i] = iArr2[i] | ((i6 & 4032) >>> 6);
            int i7 = i + 1;
            iArr2[i7] = (i5 & 258048) << 12;
            iArr2[i7] = ((i5 & 63) << 16) | iArr2[i7];
            iArr2[i7] = iArr2[i7] | ((i6 & 258048) >>> 4);
            iArr2[i7] = (i6 & 63) | iArr2[i7];
            i = i7 + 1;
        }
    }

    private void decrypt(byte[] bArr, int i, byte[] bArr2, int i2) {
        squashBytesToInts(bArr, i, this.tempInts, 0, 2);
        des(this.tempInts, this.tempInts, this.decryptKeys);
        spreadIntsToBytes(this.tempInts, 0, bArr2, i2, 2);
    }

    private void des(int[] iArr, int[] iArr2, int[] iArr3) {
        int i = 0;
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = ((i2 >>> 4) ^ i3) & 252645135;
        int i5 = i3 ^ i4;
        int i6 = i2 ^ (i4 << 4);
        int i7 = ((i6 >>> 16) ^ i5) & 65535;
        int i8 = i5 ^ i7;
        int i9 = i6 ^ (i7 << 16);
        int i10 = ((i8 >>> 2) ^ i9) & 858993459;
        int i11 = i9 ^ i10;
        int i12 = i8 ^ (i10 << 2);
        int i13 = ((i12 >>> 8) ^ i11) & 16711935;
        int i14 = i11 ^ i13;
        int i15 = i12 ^ (i13 << 8);
        int i16 = ((i15 >>> 31) & 1) | (i15 << 1);
        int i17 = (i14 ^ i16) & (-1431655766);
        int i18 = i14 ^ i17;
        int i19 = i17 ^ i16;
        int i20 = (i18 << 1) | ((i18 >>> 31) & 1);
        for (int i21 = 0; i21 < 8; i21++) {
            int i22 = i + 1;
            int i23 = iArr3[i] ^ ((i19 << 28) | (i19 >>> 4));
            int i24 = SP1[(i23 >>> 24) & 63] | SP7[i23 & 63] | SP5[(i23 >>> 8) & 63] | SP3[(i23 >>> 16) & 63];
            int i25 = i22 + 1;
            int i26 = iArr3[i22] ^ i19;
            i20 ^= (((i24 | SP8[i26 & 63]) | SP6[(i26 >>> 8) & 63]) | SP4[(i26 >>> 16) & 63]) | SP2[(i26 >>> 24) & 63];
            int i27 = i25 + 1;
            int i28 = ((i20 << 28) | (i20 >>> 4)) ^ iArr3[i25];
            int i29 = SP7[i28 & 63] | SP5[(i28 >>> 8) & 63] | SP3[(i28 >>> 16) & 63] | SP1[(i28 >>> 24) & 63];
            i = i27 + 1;
            int i30 = iArr3[i27] ^ i20;
            i19 ^= (((i29 | SP8[i30 & 63]) | SP6[(i30 >>> 8) & 63]) | SP4[(i30 >>> 16) & 63]) | SP2[(i30 >>> 24) & 63];
        }
        int i31 = (i19 << 31) | (i19 >>> 1);
        int i32 = (i20 ^ i31) & (-1431655766);
        int i33 = i20 ^ i32;
        int i34 = i31 ^ i32;
        int i35 = (i33 << 31) | (i33 >>> 1);
        int i36 = ((i35 >>> 8) ^ i34) & 16711935;
        int i37 = i34 ^ i36;
        int i38 = i35 ^ (i36 << 8);
        int i39 = ((i38 >>> 2) ^ i37) & 858993459;
        int i40 = i37 ^ i39;
        int i41 = i38 ^ (i39 << 2);
        int i42 = ((i40 >>> 16) ^ i41) & 65535;
        int i43 = i41 ^ i42;
        int i44 = i40 ^ (i42 << 16);
        int i45 = ((i44 >>> 4) ^ i43) & 252645135;
        iArr2[0] = i44 ^ (i45 << 4);
        iArr2[1] = i43 ^ i45;
    }

    private void deskey(byte[] bArr, boolean z, int[] iArr) {
        int[] iArr2 = new int[56];
        int[] iArr3 = new int[56];
        int[] iArr4 = new int[32];
        for (int i = 0; i < 56; i++) {
            byte b2 = pc1[i];
            iArr2[i] = (bArr[b2 >>> 3] & bytebit[b2 & 7]) != 0 ? 1 : 0;
        }
        for (int i2 = 0; i2 < 16; i2++) {
            int i3 = z ? i2 << 1 : (15 - i2) << 1;
            int i4 = i3 + 1;
            iArr4[i4] = 0;
            iArr4[i3] = 0;
            for (int i5 = 0; i5 < 28; i5++) {
                int i6 = totrot[i2] + i5;
                if (i6 < 28) {
                    iArr3[i5] = iArr2[i6];
                } else {
                    iArr3[i5] = iArr2[i6 - 28];
                }
            }
            for (int i7 = 28; i7 < 56; i7++) {
                int i8 = totrot[i2] + i7;
                if (i8 < 56) {
                    iArr3[i7] = iArr2[i8];
                } else {
                    iArr3[i7] = iArr2[i8 - 28];
                }
            }
            for (int i9 = 0; i9 < 24; i9++) {
                if (iArr3[pc2[i9]] != 0) {
                    iArr4[i3] = iArr4[i3] | bigbyte[i9];
                }
                if (iArr3[pc2[i9 + 24]] != 0) {
                    iArr4[i4] = iArr4[i4] | bigbyte[i9];
                }
            }
        }
        cookey(iArr4, iArr);
    }

    private void encrypt(byte[] bArr, int i, byte[] bArr2, int i2) {
        squashBytesToInts(bArr, i, this.tempInts, 0, 2);
        des(this.tempInts, this.tempInts, this.encryptKeys);
        spreadIntsToBytes(this.tempInts, 0, bArr2, i2, 2);
    }

    public static void makeSMBKey(byte[] bArr, byte[] bArr2) {
        bArr2[0] = (byte) ((bArr[0] >> 1) & 255);
        bArr2[1] = (byte) ((((bArr[0] & 1) << 6) | (((bArr[1] & 255) >> 2) & 255)) & 255);
        bArr2[2] = (byte) ((((bArr[1] & 3) << 5) | (((bArr[2] & 255) >> 3) & 255)) & 255);
        bArr2[3] = (byte) ((((bArr[2] & 7) << 4) | (((bArr[3] & 255) >> 4) & 255)) & 255);
        bArr2[4] = (byte) ((((bArr[3] & 15) << 3) | (((bArr[4] & 255) >> 5) & 255)) & 255);
        bArr2[5] = (byte) ((((bArr[4] & 31) << 2) | (((bArr[5] & 255) >> 6) & 255)) & 255);
        bArr2[6] = (byte) ((((bArr[5] & 63) << 1) | (((bArr[6] & 255) >> 7) & 255)) & 255);
        bArr2[7] = (byte) (bArr[6] & Byte.MAX_VALUE);
        for (int i = 0; i < 8; i++) {
            bArr2[i] = (byte) (bArr2[i] << 1);
        }
    }

    public static void spreadIntsToBytes(int[] iArr, int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[(i4 * 4) + i2] = (byte) (iArr[i + i4] >>> 24);
            bArr[(i4 * 4) + i2 + 1] = (byte) (iArr[i + i4] >>> 16);
            bArr[(i4 * 4) + i2 + 2] = (byte) (iArr[i + i4] >>> 8);
            bArr[(i4 * 4) + i2 + 3] = (byte) iArr[i + i4];
        }
    }

    public static void squashBytesToInts(byte[] bArr, int i, int[] iArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            iArr[i2 + i4] = ((bArr[(i4 * 4) + i] & 255) << 24) | ((bArr[((i4 * 4) + i) + 1] & 255) << 16) | ((bArr[((i4 * 4) + i) + 2] & 255) << 8) | (bArr[(i4 * 4) + i + 3] & 255);
        }
    }

    public void decrypt(byte[] bArr, byte[] bArr2) {
        decrypt(bArr, 0, bArr2, 0);
    }

    public byte[] decrypt(byte[] bArr) {
        int length = bArr.length;
        if (length % 8 != 0) {
            System.out.println("Array must be a multiple of 8");
            return null;
        }
        byte[] bArr2 = new byte[length];
        int i = length / 8;
        for (int i2 = 0; i2 < i; i2++) {
            encrypt(bArr, i2 * 8, bArr2, i2 * 8);
        }
        return bArr2;
    }

    public void encrypt(byte[] bArr, byte[] bArr2) {
        encrypt(bArr, 0, bArr2, 0);
    }

    public byte[] encrypt(byte[] bArr) {
        int length = bArr.length;
        if (length % 8 != 0) {
            System.out.println("Array must be a multiple of 8");
            return null;
        }
        byte[] bArr2 = new byte[length];
        int i = length / 8;
        for (int i2 = 0; i2 < i; i2++) {
            encrypt(bArr, i2 * 8, bArr2, i2 * 8);
        }
        return bArr2;
    }

    public void setKey(byte[] bArr) {
        deskey(bArr, true, this.encryptKeys);
        deskey(bArr, false, this.decryptKeys);
    }
}
