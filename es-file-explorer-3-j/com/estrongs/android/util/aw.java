package com.estrongs.android.util;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.apache.commons.net.ftp.FTPSClient;

/* loaded from: classes.dex */
public final class aw {

    /* renamed from: a, reason: collision with root package name */
    public static final DateFormat f2684a = new SimpleDateFormat();

    /* renamed from: b, reason: collision with root package name */
    public static final Date f2685b = new GregorianCalendar(1900, 1, 1).getTime();
    private static int c = 93;
    private static final TypedMap d = new TypedMap();

    static {
        d.put("ftp", 21);
        d.put("ftps", Integer.valueOf(FTPSClient.DEFAULT_FTPS_PORT));
        d.put("ftpes", Integer.valueOf(FTPSClient.DEFAULT_FTPS_PORT));
        d.put("sftp", 22);
    }

    public static int a(Context context, int i) {
        int i2;
        Exception e;
        try {
            InputStream openRawResource = context.getResources().openRawResource(i);
            i2 = openRawResource.available();
            try {
                openRawResource.close();
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return i2;
            }
        } catch (Exception e3) {
            i2 = -1;
            e = e3;
        }
        return i2;
    }

    public static int a(Object obj) {
        return a(obj == null ? null : obj.toString(), 0);
    }

    public static int a(Object obj, int i) {
        return obj == null ? i : obj instanceof String ? a((String) obj, i) : a(obj.toString(), i);
    }

    public static int a(String str) {
        return a(str, 0);
    }

    public static int a(String str, int i) {
        return (int) a(str, i);
    }

    public static long a(Object obj, long j) {
        return a(obj == null ? null : obj.toString(), j);
    }

    public static long a(String str, long j) {
        if (str == null || str.equals("")) {
            return j;
        }
        try {
            String replaceAll = str.trim().replaceAll(",", "");
            int indexOf = replaceAll.indexOf(".");
            if (indexOf > 0) {
                replaceAll = replaceAll.substring(0, indexOf);
            }
            return Long.parseLong(replaceAll);
        } catch (Exception e) {
            return j;
        }
    }

    public static String a(Uri uri) {
        if (uri == null) {
            return null;
        }
        return Uri.decode(uri.toString());
    }

    public static String a(String str, boolean z) {
        String str2;
        Exception e;
        try {
            str2 = HttpUtils.base64Encode(new k("MTc0OTUwOTEzMTU4ODM4NDYxOTk").b(str.getBytes()));
            if (!z) {
                return str2;
            }
            try {
                return ak.aW(str2);
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return str2;
            }
        } catch (Exception e3) {
            str2 = null;
            e = e3;
        }
    }

    public static Date a(String str, DateFormat dateFormat) {
        try {
        } catch (ParseException e) {
            System.err.print(e.getMessage());
        }
        if (dateFormat != null) {
            return dateFormat.parse(str);
        }
        f2684a.parse(str);
        return f2685b;
    }

    public static <T> List<String> a(List<T> list) {
        LinkedList linkedList = new LinkedList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            linkedList.add(it.next().toString());
        }
        return linkedList;
    }

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 5;
    }

    public static boolean a(InputStream inputStream, String str, int i) {
        FileOutputStream fileOutputStream;
        File file = new File(str);
        if (file.exists()) {
            if (file.length() == i) {
                return true;
            }
            file.delete();
        }
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[8192];
                    int i2 = 0;
                    while (true) {
                        int read = inputStream.read(bArr, 0, 8192);
                        if (read <= 0) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                        i2 += read;
                    }
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return i2 == i || i == -1;
                } catch (Exception e) {
                    e = e;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e2) {
                        }
                    }
                    e.printStackTrace();
                    return false;
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream = null;
            }
        } finally {
            new File(str).delete();
        }
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.toString().trim().length() == 0;
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        if (obj == obj2) {
            return true;
        }
        if (obj instanceof String) {
            return obj.toString().equals(obj2.toString());
        }
        return false;
    }

    public static boolean a(Object obj, boolean z) {
        if (obj == null) {
            return z;
        }
        try {
            return Boolean.parseBoolean(obj.toString());
        } catch (Exception e) {
            return z;
        }
    }

    public static boolean a(List<?> list, int i) {
        return i >= 0 && i < list.size();
    }

    public static <T> boolean a(T[] tArr, int i) {
        return tArr != null && i >= 0 && i < tArr.length;
    }

    public static long b(String str) {
        return a(str, 0L);
    }

    public static String b(String str, boolean z) {
        try {
            k kVar = new k("MTc0OTUwOTEzMTU4ODM4NDYxOTk");
            if (z) {
                str = ak.aX(str);
            }
            return new String(kVar.c(HttpUtils.base64Decode(str)));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 8;
    }

    public static boolean b(CharSequence charSequence) {
        return !a(charSequence);
    }

    public static boolean b(Object obj) {
        return a(obj, false);
    }

    public static String c(String str) {
        return a(str, true);
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT >= 9;
    }

    public static String d(String str) {
        return b(str, true);
    }

    public static boolean d() {
        return Build.VERSION.SDK_INT >= 10;
    }

    public static boolean e() {
        return Build.VERSION.SDK_INT >= 11;
    }

    public static boolean f() {
        return Build.VERSION.SDK_INT >= 14;
    }

    public static boolean g() {
        return Build.VERSION.SDK_INT >= 16;
    }

    public static boolean h() {
        return Build.VERSION.SDK_INT >= 17;
    }

    public static boolean i() {
        return Build.VERSION.SDK_INT >= 18;
    }
}
