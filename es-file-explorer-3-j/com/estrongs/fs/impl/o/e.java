package com.estrongs.fs.impl.o;

import java.net.URLEncoder;

/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static final char[] f3156a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};

    private static String a(byte b2) {
        return new String(new char[]{f3156a[(b2 >> 4) & 15], f3156a[b2 & 15]});
    }

    public static String a(String str) {
        if (!b(str)) {
            return URLEncoder.encode(str).replace("+", "%20");
        }
        StringBuilder sb = new StringBuilder(str.length() + 16);
        a(sb, str);
        return sb.toString();
    }

    private static void a(StringBuilder sb, String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        int i = -1;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && !((charAt >= '0' && charAt <= '9') || a(charAt) || a(str, i2)))) {
                if (i == -1) {
                    i = i2;
                }
            } else if (i != -1) {
                b(sb, str.substring(i, i2));
                i = -1;
            } else if (charAt == ' ') {
                sb.append("%20");
            } else {
                sb.append(charAt);
            }
        }
        if (i != -1) {
            b(sb, str.substring(i, str.length()));
        }
    }

    static boolean a(char c) {
        return " .-*_".indexOf(c) != -1;
    }

    static boolean a(String str, int i) {
        int codePointAt = Character.codePointAt(str, i);
        return codePointAt < 0 || codePointAt > 127;
    }

    private static void b(StringBuilder sb, String str) {
        for (byte b2 : str.getBytes()) {
            sb.append('%');
            sb.append(a(b2));
        }
    }

    private static boolean b(String str) {
        for (int i = 0; i < str.length(); i++) {
            int codePointAt = Character.codePointAt(str, i);
            if (codePointAt < 0 || codePointAt > 127) {
                return true;
            }
        }
        return false;
    }
}
