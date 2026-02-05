package com.estrongs.android.util;

import android.util.Log;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.Locale;
import jcifs.smb.SmbConstants;
import org.apache.commons.io.ByteOrderMark;
import org.apache.commons.net.ftp.FTP;
import org.mozilla.universalchardet.UniversalDetector;

/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public static String[] f2695a = {"AUTO", "UTF-8", "GBK", FTP.DEFAULT_CONTROL_ENCODING, "Windows-1252", "EUC-KR", "EUC-JP", "Shift_JIS", "ISO-2022-JP", "BIG5", "Windows-1251", "Cp866", "ISO-8859-2", "ISO-8859-3", "ISO-8859-4", "ISO-8859-5", "ISO-8859-6", "ISO-8859-7", "ISO-8859-8", "ISO-8859-9", "ISO-8859-10", "ISO-8859-11", "ISO-8859-13", "ISO-8859-14", "ISO-8859-15", "ISO-8859-16", "ASCII", SmbConstants.UNI_ENCODING, "UTF-16BE"};

    /* renamed from: b, reason: collision with root package name */
    static final ByteOrderMark[] f2696b = {ByteOrderMark.UTF_8, ByteOrderMark.UTF_16LE, ByteOrderMark.UTF_16BE};

    public static String a() {
        String country = Locale.getDefault().getCountry();
        return "CN".equalsIgnoreCase(country) ? "GBK" : "TW".equalsIgnoreCase(country) ? "BIG5" : "JP".equalsIgnoreCase(country) ? "EUC-JP" : "KR".equalsIgnoreCase(country) ? "EUC-KR" : "UTF-8";
    }

    public static String a(int i) {
        return f2695a[i];
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a(InputStream inputStream) {
        ByteOrderMark byteOrderMark;
        IOException e;
        int i;
        if (inputStream == null) {
            return null;
        }
        if (!inputStream.markSupported()) {
            inputStream = new BufferedInputStream(inputStream);
        }
        try {
            inputStream.mark(4);
            byteOrderMark = a(new int[]{inputStream.read(), inputStream.read(), inputStream.read(), inputStream.read()});
        } catch (IOException e2) {
            byteOrderMark = null;
            e = e2;
        }
        try {
            inputStream.reset();
        } catch (IOException e3) {
            e = e3;
            e.printStackTrace();
            if (byteOrderMark == null) {
            }
        }
        if (byteOrderMark == null) {
            return byteOrderMark.getCharsetName();
        }
        byte[] bArr = new byte[1024];
        try {
            inputStream.mark(1024);
            i = inputStream.read(bArr, 0, bArr.length);
            try {
                inputStream.reset();
            } catch (IOException e4) {
            }
        } catch (IOException e5) {
            i = 0;
        }
        if (i < 1024) {
            try {
                int read = inputStream.read(bArr, 0, bArr.length);
                if (read != -1) {
                    return a(bArr, read);
                }
            } catch (IOException e6) {
            }
            return "UTF-8";
        }
        org.mozilla.a.a.h hVar = new org.mozilla.a.a.h();
        h hVar2 = new h();
        hVar.a(hVar2);
        int i2 = 0;
        while (i2 < 65536) {
            try {
                int read2 = inputStream.read(bArr, 0, bArr.length);
                if (read2 == -1) {
                    break;
                }
                i2 += read2;
                if (hVar.a(bArr, read2, false)) {
                    break;
                }
            } catch (IOException e7) {
            }
        }
        hVar.b();
        return hVar2.a() != null ? hVar2.a() : (hVar.c() == null || hVar.c().length <= 0) ? "UTF-8" : hVar.c()[0];
    }

    private static String a(byte[] bArr) {
        UniversalDetector universalDetector = new UniversalDetector(null);
        universalDetector.a(bArr, 0, bArr.length);
        universalDetector.b();
        String a2 = universalDetector.a();
        universalDetector.c();
        return a2;
    }

    public static String a(byte[] bArr, int i) {
        return a(bArr, i, false);
    }

    public static String a(byte[] bArr, int i, boolean z) {
        if (bArr == null) {
            return null;
        }
        byte[] b2 = b(bArr, i);
        String b3 = b(b2, 0, true);
        if (b3 != null) {
            return b3;
        }
        int b4 = b();
        if ("TW".equalsIgnoreCase(Locale.getDefault().getCountry())) {
            String b5 = b(b2, b4, true);
            if (b5 != null) {
                return b5;
            }
            String a2 = a(b2);
            if (a2 != null) {
                return a2;
            }
        }
        String b6 = b(b2, b4, z);
        if (b6 != null) {
            return b6;
        }
        if (z) {
            return null;
        }
        return "UTF-8";
    }

    private static ByteOrderMark a(int[] iArr) {
        for (ByteOrderMark byteOrderMark : f2696b) {
            if (a(iArr, byteOrderMark)) {
                return byteOrderMark;
            }
        }
        return null;
    }

    private static boolean a(int[] iArr, ByteOrderMark byteOrderMark) {
        for (int i = 0; i < byteOrderMark.length(); i++) {
            if (byteOrderMark.get(i) != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static int b() {
        String country = Locale.getDefault().getCountry();
        if ("CN".equalsIgnoreCase(country)) {
            return 2;
        }
        if ("TW".equalsIgnoreCase(country)) {
            return 4;
        }
        if ("JP".equalsIgnoreCase(country)) {
            return 1;
        }
        return "KR".equalsIgnoreCase(country) ? 5 : 0;
    }

    private static String b(byte[] bArr, int i, boolean z) {
        org.mozilla.a.a.h hVar = new org.mozilla.a.a.h(i);
        h hVar2 = new h();
        hVar.a(hVar2);
        hVar.a(bArr, bArr.length, false);
        hVar.b();
        String a2 = hVar2.a();
        if (a2 != null) {
            return a2;
        }
        if (z) {
            return null;
        }
        if (z || hVar.c() == null || hVar.c().length <= 0) {
            return null;
        }
        return hVar.c()[0];
    }

    private static byte[] b(byte[] bArr, int i) {
        if (i >= 1024) {
            return bArr;
        }
        int i2 = 1024 / i;
        if (i2 == 1) {
            if (bArr.length <= i) {
                return bArr;
            }
            byte[] bArr2 = new byte[i];
            for (int i3 = 0; i3 < i; i3++) {
                bArr2[i3] = bArr[i3];
            }
            return bArr2;
        }
        byte[] bArr3 = new byte[i * i2];
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i4 * i;
            int i6 = 0;
            while (i5 < (i4 + 1) * i) {
                bArr3[i5] = bArr[i6];
                i5++;
                i6++;
            }
        }
        return bArr3;
    }

    public static void c() {
        if (Charset.isSupported("Cp866")) {
            return;
        }
        try {
            Method declaredMethod = Charset.class.getDeclaredMethod("cacheCharset", String.class, Charset.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(Charset.class, "Cp866", new a.a.a.a.d());
        } catch (Exception e) {
            Log.w("CharsetUtil", "Can't find the method cacheCharset(String, Charset)");
            try {
                Method declaredMethod2 = Charset.class.getDeclaredMethod("cacheCharset", Charset.class);
                declaredMethod2.setAccessible(true);
                declaredMethod2.invoke(Charset.class, new a.a.a.a.d());
            } catch (Exception e2) {
                Log.w("CharsetUtil", "Can't find the method cacheCharset(Charset)");
            }
        }
    }
}
