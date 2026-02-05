package com.estrongs.io.archive;

import android.net.Uri;
import com.estrongs.android.util.av;
import com.estrongs.android.util.aw;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;
import java.util.zip.ZipFile;
import org.apache.commons.compress.archivers.zip.ZipLong;

/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final ZipLong f3209a = new ZipLong(33639248);

    /* renamed from: b, reason: collision with root package name */
    public static final ZipLong f3210b = new ZipLong(67324752);
    static final byte[] c = ZipLong.getBytes(101010256);

    public static e a(String str, String str2, int i) {
        if (f.f3215a.equals(str2)) {
            return new com.estrongs.io.archive.b.a(new BufferedOutputStream(com.estrongs.fs.impl.local.d.f(str)), i);
        }
        if (f.f3216b.equals(str2) || f.c.equals(str2)) {
            return new com.estrongs.io.archive.a.b(str);
        }
        return null;
    }

    public static e a(String str, Map<String, String> map) {
        return a(str, map.get("archive_type"), aw.a(map.get("compress_level")));
    }

    public static h a(String str, String str2, boolean z) {
        if (str.startsWith("file://")) {
            str = Uri.parse(str).getPath();
        }
        h hVar = null;
        if (!z && (hVar = a.a(str)) != null) {
            return hVar;
        }
        if (!av.H(str)) {
            return str.toLowerCase().endsWith(".gz") ? new com.estrongs.io.archive.a.a(str) : str.toLowerCase().endsWith(".rar") ? new com.estrongs.io.archive.rar.a(str, str2) : hVar;
        }
        if (!a(str)) {
            throw new IOException("Bad zip file.");
        }
        b(str);
        return new com.estrongs.io.archive.aeszip.h(str, str2);
    }

    static boolean a(String str) {
        FileInputStream fileInputStream;
        byte[] bArr = new byte[12];
        try {
            fileInputStream = new FileInputStream(str);
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            int read = fileInputStream.read(bArr);
            fileInputStream.close();
            return a(bArr, read);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream.close();
            throw th;
        }
    }

    public static boolean a(byte[] bArr, int i) {
        if (i < f3210b.getBytes().length) {
            return false;
        }
        return a(bArr, f3210b.getBytes()) || a(bArr, c);
    }

    private static boolean a(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static h b(String str, Map<String, String> map) {
        h a2 = a(str, map.get("charset_name"), "true".equalsIgnoreCase(map.get("reload")));
        if (a2 != null) {
        }
        return a2;
    }

    public static void b(String str) {
        ZipFile zipFile = null;
        try {
            try {
                if (new File(str).length() >= 2147483648L) {
                    if (0 != 0) {
                        try {
                            zipFile.close();
                            return;
                        } catch (IOException e) {
                            return;
                        }
                    }
                    return;
                }
                ZipFile zipFile2 = new ZipFile(str);
                if (zipFile2 != null) {
                    try {
                        zipFile2.close();
                    } catch (IOException e2) {
                    }
                }
            } catch (IOException e3) {
                if (!aw.i() || e3.getMessage() == null || !e3.getMessage().contains("Invalid General Purpose Bit Flag")) {
                    throw e3;
                }
                if (0 != 0) {
                    try {
                        zipFile.close();
                    } catch (IOException e4) {
                    }
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    zipFile.close();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
    }
}
