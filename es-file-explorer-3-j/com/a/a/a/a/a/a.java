package com.a.a.a.a.a;

/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: a, reason: collision with root package name */
    private static final char[] f88a = {'+'};

    /* renamed from: b, reason: collision with root package name */
    private static final char[] f89b = "0123456789ABCDEF".toCharArray();
    private final boolean c;
    private final boolean[] d;

    public a(String str, boolean z) {
        if (str.matches(".*[0-9A-Za-z].*")) {
            throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
        }
        if (z && str.contains(" ")) {
            throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
        }
        if (str.contains("%")) {
            throw new IllegalArgumentException("The '%' character cannot be specified as 'safe'");
        }
        this.c = z;
        this.d = b(str);
    }

    private static boolean[] b(String str) {
        char[] charArray = str.toCharArray();
        int i = 122;
        for (char c : charArray) {
            i = Math.max((int) c, i);
        }
        boolean[] zArr = new boolean[i + 1];
        for (int i2 = 48; i2 <= 57; i2++) {
            zArr[i2] = true;
        }
        for (int i3 = 65; i3 <= 90; i3++) {
            zArr[i3] = true;
        }
        for (int i4 = 97; i4 <= 122; i4++) {
            zArr[i4] = true;
        }
        for (char c2 : charArray) {
            zArr[c2] = true;
        }
        return zArr;
    }

    @Override // com.a.a.a.a.a.b
    protected int a(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            char charAt = charSequence.charAt(i);
            if (charAt >= this.d.length || !this.d[charAt]) {
                break;
            }
            i++;
        }
        return i;
    }

    @Override // com.a.a.a.a.a.b
    public String a(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt >= this.d.length || !this.d[charAt]) {
                return a(str, i);
            }
        }
        return str;
    }

    @Override // com.a.a.a.a.a.b
    protected char[] a(int i) {
        if (i < this.d.length && this.d[i]) {
            return null;
        }
        if (i == 32 && this.c) {
            return f88a;
        }
        if (i <= 127) {
            return new char[]{'%', f89b[i >>> 4], f89b[i & 15]};
        }
        if (i <= 2047) {
            char[] cArr = {'%', f89b[(r1 >>> 4) | 12], f89b[r1 & 15], '%', f89b[(r1 & 3) | 8], f89b[i & 15]};
            int i2 = i >>> 4;
            int i3 = i2 >>> 2;
            return cArr;
        }
        if (i <= 65535) {
            char[] cArr2 = {'%', 'E', r2[r1 >>> 2], '%', f89b[(r1 & 3) | 8], f89b[r1 & 15], '%', f89b[(r1 & 3) | 8], f89b[i & 15]};
            int i4 = i >>> 4;
            int i5 = i4 >>> 2;
            int i6 = i5 >>> 4;
            char[] cArr3 = f89b;
            return cArr2;
        }
        if (i > 1114111) {
            throw new IllegalArgumentException("Invalid unicode character value " + i);
        }
        char[] cArr4 = {'%', 'F', f89b[(r1 >>> 2) & 7], '%', f89b[(r1 & 3) | 8], f89b[r1 & 15], '%', f89b[(r1 & 3) | 8], f89b[r1 & 15], '%', f89b[(r1 & 3) | 8], f89b[i & 15]};
        int i7 = i >>> 4;
        int i8 = i7 >>> 2;
        int i9 = i8 >>> 4;
        int i10 = i9 >>> 2;
        int i11 = i10 >>> 4;
        return cArr4;
    }
}
