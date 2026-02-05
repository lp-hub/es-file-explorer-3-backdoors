package de.innosystec.unrar;

import de.innosystec.unrar.rarfile.g;
import java.io.File;

/* loaded from: classes.dex */
public class e {
    public static String a(String str, boolean z) {
        if (z) {
            int length = str.length();
            if (length <= 4 || str.charAt(length - 4) != '.') {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            int i = length - 3;
            sb.append((CharSequence) str, 0, i);
            if (a(str.charAt(i + 1)) && a(str.charAt(i + 2))) {
                char[] cArr = new char[3];
                str.getChars(i, length, cArr, 0);
                int length2 = cArr.length;
                while (true) {
                    length2--;
                    char c = (char) (cArr[length2] + 1);
                    cArr[length2] = c;
                    if (c != ':') {
                        break;
                    }
                    cArr[length2] = '0';
                }
                sb.append(cArr);
            } else {
                sb.append("r00");
            }
            return sb.toString();
        }
        int length3 = str.length();
        int i2 = length3 - 1;
        while (i2 >= 0 && !a(str.charAt(i2))) {
            i2--;
        }
        int i3 = i2 + 1;
        int i4 = i2 - 1;
        while (i4 >= 0 && a(str.charAt(i4))) {
            i4--;
        }
        if (i4 < 0) {
            return null;
        }
        int i5 = i4 + 1;
        StringBuilder sb2 = new StringBuilder(length3);
        sb2.append((CharSequence) str, 0, i5);
        char[] cArr2 = new char[(i2 - i5) + 1];
        str.getChars(i5, i2 + 1, cArr2, 0);
        int length4 = cArr2.length - 1;
        while (length4 >= 0) {
            char c2 = (char) (cArr2[length4] + 1);
            cArr2[length4] = c2;
            if (c2 != ':') {
                break;
            }
            cArr2[length4] = '0';
            length4--;
        }
        if (length4 < 0) {
            sb2.append('1');
        }
        sb2.append(cArr2);
        sb2.append((CharSequence) str, i3, length3);
        return sb2.toString();
    }

    private static boolean a(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean a(a aVar, de.innosystec.unrar.unpack.a aVar2) {
        g c = aVar2.c();
        if (c.r() >= 20 && c.m() != -1 && aVar2.a() != (c.m() ^ (-1))) {
            System.err.println("Data Bad CRC");
        }
        File file = new File(a(aVar.a().getAbsolutePath(), !aVar.f().v() || aVar.g()));
        d e = aVar.e();
        if ((e != null && !e.a(file)) || !file.exists()) {
            return false;
        }
        aVar.a(file);
        g c2 = aVar.c();
        if (c2 == null) {
            return false;
        }
        aVar2.a(c2);
        return true;
    }

    public static String b(String str, boolean z) {
        if (z) {
            int length = str.length();
            if (length <= 4 || str.charAt(length - 4) != '.') {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append((CharSequence) str, 0, length - 3);
            sb.append("rar");
            return sb.toString();
        }
        int length2 = str.length();
        int i = length2 - 1;
        while (i >= 0 && !a(str.charAt(i))) {
            i--;
        }
        int i2 = i + 1;
        int i3 = i - 1;
        while (i3 >= 0 && a(str.charAt(i3))) {
            i3--;
        }
        if (i3 < 0) {
            return null;
        }
        int i4 = i3 + 1;
        StringBuilder sb2 = new StringBuilder(length2);
        sb2.append((CharSequence) str, 0, i4);
        char[] cArr = new char[(i - i4) + 1];
        str.getChars(i4, i + 1, cArr, 0);
        int length3 = cArr.length - 1;
        for (int i5 = 0; i5 < cArr.length; i5++) {
            cArr[i5] = '0';
        }
        if (length3 < 0) {
            sb2.append('1');
        }
        cArr[cArr.length - 1] = '1';
        sb2.append(cArr);
        sb2.append((CharSequence) str, i2, length2);
        return sb2.toString();
    }
}
