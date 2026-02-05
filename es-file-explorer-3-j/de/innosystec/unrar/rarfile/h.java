package de.innosystec.unrar.rarfile;

/* loaded from: classes.dex */
public class h {
    public static int a(byte[] bArr, int i) {
        return bArr[i] & 255;
    }

    public static String b(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        int a2 = a(bArr, i);
        StringBuffer stringBuffer = new StringBuffer();
        int i6 = 0;
        int i7 = i + 1;
        int i8 = 0;
        while (i7 < bArr.length) {
            if (i5 == 0) {
                i3 = a(bArr, i7);
                i4 = i7 + 1;
                i2 = 8;
            } else {
                i2 = i5;
                i3 = i8;
                i4 = i7;
            }
            switch (i3 >> 6) {
                case 0:
                    i7 = i4 + 1;
                    stringBuffer.append((char) a(bArr, i4));
                    i6++;
                    break;
                case 1:
                    i7 = i4 + 1;
                    stringBuffer.append((char) (a(bArr, i4) + (a2 << 8)));
                    i6++;
                    break;
                case 2:
                    stringBuffer.append((char) (a(bArr, i4) + (a(bArr, i4 + 1) << 8)));
                    i6++;
                    i7 = i4 + 2;
                    break;
                case 3:
                    int i9 = i4 + 1;
                    int a3 = a(bArr, i4);
                    if ((a3 & 128) == 0) {
                        int i10 = a3 + 2;
                        while (i10 > 0 && i6 < bArr.length) {
                            stringBuffer.append((char) a(bArr, i6));
                            i10--;
                            i6++;
                        }
                        i7 = i9;
                        break;
                    } else {
                        i7 = i9 + 1;
                        int a4 = a(bArr, i9);
                        int i11 = (a3 & 127) + 2;
                        while (i11 > 0 && i6 < bArr.length) {
                            stringBuffer.append((char) (((a(bArr, i6) + a4) & 255) + (a2 << 8)));
                            i11--;
                            i6++;
                        }
                    }
                default:
                    i7 = i4;
                    break;
            }
            i8 = (i3 << 2) & 255;
            i5 = i2 - 2;
        }
        return stringBuffer.toString();
    }
}
