package com.a.a.a.a.a;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<char[]> f90a = new c();

    private static final char[] a(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }

    protected static final int b(CharSequence charSequence, int i, int i2) {
        if (i >= i2) {
            throw new IndexOutOfBoundsException("Index exceeds specified range");
        }
        int i3 = i + 1;
        char charAt = charSequence.charAt(i);
        if (charAt < 55296 || charAt > 57343) {
            return charAt;
        }
        if (charAt > 56319) {
            throw new IllegalArgumentException("Unexpected low surrogate character '" + charAt + "' with value " + ((int) charAt) + " at index " + (i3 - 1));
        }
        if (i3 == i2) {
            return -charAt;
        }
        char charAt2 = charSequence.charAt(i3);
        if (Character.isLowSurrogate(charAt2)) {
            return Character.toCodePoint(charAt, charAt2);
        }
        throw new IllegalArgumentException("Expected low surrogate but got char '" + charAt2 + "' with value " + ((int) charAt2) + " at index " + i3);
    }

    protected int a(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            int b2 = b(charSequence, i, i2);
            if (b2 < 0 || a(b2) != null) {
                break;
            }
            i += Character.isSupplementaryCodePoint(b2) ? 2 : 1;
        }
        return i;
    }

    public String a(String str) {
        int length = str.length();
        int a2 = a(str, 0, length);
        return a2 == length ? str : a(str, a2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String a(String str, int i) {
        int length = str.length();
        int i2 = 0;
        char[] cArr = f90a.get();
        int i3 = 0;
        while (i < length) {
            int b2 = b(str, i, length);
            if (b2 < 0) {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            char[] a2 = a(b2);
            if (a2 != null) {
                int i4 = i - i2;
                int length2 = i3 + i4 + a2.length;
                if (cArr.length < length2) {
                    cArr = a(cArr, i3, length2 + (length - i) + 32);
                }
                if (i4 > 0) {
                    str.getChars(i2, i, cArr, i3);
                    i3 += i4;
                }
                if (a2.length > 0) {
                    System.arraycopy(a2, 0, cArr, i3, a2.length);
                    i3 += a2.length;
                }
            }
            int i5 = (Character.isSupplementaryCodePoint(b2) ? 2 : 1) + i;
            i = a(str, i5, length);
            i2 = i5;
        }
        int i6 = length - i2;
        if (i6 > 0) {
            int i7 = i6 + i3;
            if (cArr.length < i7) {
                cArr = a(cArr, i3, i7);
            }
            str.getChars(i2, length, cArr, i3);
            i3 = i7;
        }
        return new String(cArr, 0, i3);
    }

    protected abstract char[] a(int i);
}
