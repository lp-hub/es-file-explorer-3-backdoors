package com.estrongs.fs.c;

import android.os.StatFs;
import com.estrongs.a.b.p;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.utils.bs;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.fs.FileExistException;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.g;
import com.estrongs.fs.impl.local.r;
import com.estrongs.fs.l;
import de.aflx.sardine.util.SardineUtil;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static final String f3039a = com.estrongs.android.pop.a.c;

    /* renamed from: b, reason: collision with root package name */
    public static final DecimalFormat f3040b = new DecimalFormat("0.00");
    public static final DecimalFormat c = new DecimalFormat("###,###,###");

    public static long a(long j) {
        if (j >= 1073741824) {
            return 1073741824L;
        }
        if (j >= 1048576) {
            return 1048576L;
        }
        return j >= 1024 ? 1024L : 1L;
    }

    public static File a(String str, String str2) {
        File file;
        if (aw.a((CharSequence) str) || aw.a((CharSequence) str2)) {
            return null;
        }
        File file2 = new File(str2);
        if (file2.exists()) {
            String str3 = str2.lastIndexOf(46) >= 0 ? str2.substring(0, str2.lastIndexOf(46)) + "(%1$d)" + str2.substring(str2.lastIndexOf(46)) : str2 + "(%1$d)";
            int i = 1;
            while (true) {
                file = new File(String.format(str3, Integer.valueOf(i)));
                if (!file.exists()) {
                    break;
                }
                i++;
            }
            file2 = file;
        }
        if (new File(str).renameTo(file2)) {
            return file2;
        }
        return null;
    }

    public static String a() {
        return new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss-SSS").format(new Date());
    }

    public static String a(long j, long j2) {
        return f3040b.format(j / j2);
    }

    public static String a(g gVar) {
        String str;
        l fileType = gVar.getFileType();
        if (fileType != null) {
            str = "" + (fileType.a() ? SardineUtil.DEFAULT_NAMESPACE_PREFIX : "-");
        } else {
            str = "-";
        }
        if (gVar instanceof r) {
            return str + ((r) gVar).a();
        }
        String str2 = gVar.hasPermission(0) ? str + "r" : str + "-";
        return gVar.hasPermission(1) ? str2 + "w" : str2 + "-";
    }

    public static String a(String str) {
        String name = new File(str).getName();
        return name.lastIndexOf(".") > 0 ? "" + name.substring(0, name.lastIndexOf(".")) : name;
    }

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i++) {
            int i2 = (bArr[i] >>> 4) & 15;
            int i3 = 0;
            while (true) {
                if (i2 < 0 || i2 > 9) {
                    stringBuffer.append((char) ((i2 - 10) + 97));
                } else {
                    stringBuffer.append((char) (i2 + 48));
                }
                int i4 = bArr[i] & 15;
                int i5 = i3 + 1;
                if (i3 >= 1) {
                    break;
                }
                i3 = i5;
                i2 = i4;
            }
        }
        return stringBuffer.toString();
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(InputStream inputStream, File file) {
        a(inputStream, file, (p) null);
    }

    public static void a(InputStream inputStream, File file, p pVar) {
        BufferedOutputStream bufferedOutputStream;
        byte[] bArr = new byte[524288];
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 1048576);
            while (true) {
                try {
                    int read = inputStream.read(bArr, 0, bArr.length);
                    if (read == -1 || (pVar != null && pVar.a())) {
                        break;
                    } else {
                        bufferedOutputStream.write(bArr, 0, read);
                    }
                } catch (Throwable th) {
                    th = th;
                    a(bufferedOutputStream);
                    throw th;
                }
            }
            a(bufferedOutputStream);
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream = null;
        }
    }

    public static void a(String str, com.estrongs.a.b.b bVar, e eVar) {
        FileInputStream fileInputStream;
        byte[] bArr = new byte[16384];
        try {
            try {
                fileInputStream = new FileInputStream(str);
                while (true) {
                    try {
                        int read = fileInputStream.read(bArr);
                        if (read <= 0 || (bVar != null && bVar.a())) {
                            break;
                        } else {
                            eVar.a(bArr, 0, read);
                        }
                    } catch (IOException e) {
                        throw e;
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        a(fileInputStream);
                        return;
                    }
                }
                a(fileInputStream);
            } catch (Throwable th) {
                th = th;
                a((Closeable) null);
                throw th;
            }
        } catch (IOException e3) {
        } catch (Exception e4) {
            e = e4;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            a((Closeable) null);
            throw th;
        }
    }

    public static boolean a(File file) {
        a(file.listFiles());
        file.delete();
        return true;
    }

    public static boolean a(String str, String str2, boolean z, com.estrongs.fs.d dVar) {
        String str3 = str.charAt(str.length() + (-1)) != '/' ? str + "/" + str2 + "/" : str + str2 + "/";
        if (dVar.b(str3)) {
            throw new FileExistException(str3);
        }
        return dVar.b(str3, z);
    }

    public static boolean a(File[] fileArr) {
        if (fileArr == null) {
            return true;
        }
        for (File file : fileArr) {
            if (file.isDirectory()) {
                a(file);
            } else {
                file.delete();
            }
        }
        return true;
    }

    public static String b(long j) {
        return "RU".equalsIgnoreCase(bs.b()) ? j >= 1073741824 ? "Gб" : j >= 1048576 ? "Mб" : j >= 1024 ? "Kб" : "B" : j >= 1073741824 ? "GB" : j >= 1048576 ? "MB" : j >= 1024 ? "KB" : "B";
    }

    public static String b(String str) {
        int lastIndexOf = str.lastIndexOf(".");
        return (lastIndexOf <= 0 || lastIndexOf >= str.length()) ? "" : str.substring(str.lastIndexOf(".") + 1);
    }

    public static boolean b(g gVar) {
        String path = gVar.getPath();
        return path == null || "apk://".equalsIgnoreCase(path) || "book://".equalsIgnoreCase(path) || "pic://".equalsIgnoreCase(path) || "music://".equalsIgnoreCase(path) || "video://".equalsIgnoreCase(path) || ak.aU(path);
    }

    public static String c(long j) {
        long a2 = a(j);
        return f3040b.format(j / a2) + " " + b(a2);
    }

    public static boolean c(g gVar) {
        Object extra = gVar.getExtra(NetFileInfo.PUBLIC_SHARE);
        return (extra == null || extra.equals("")) ? false : true;
    }

    public static boolean c(String str) {
        for (char c2 : new char[]{'*', '\"', ':', '?', '<', '>', '|', '\\', '/'}) {
            if (str.indexOf(c2) >= 0) {
                return false;
            }
        }
        return true;
    }

    public static String d(long j) {
        return c.format(j);
    }

    public static boolean d(String str) {
        for (char c2 : new char[]{'*', '\"', ':', '?', '<', '>', '|', '\\'}) {
            if (str.indexOf(c2) >= 0) {
                return false;
            }
        }
        return true;
    }

    public static String e(String str) {
        if (str == null) {
            return null;
        }
        String[] strArr = {"*", "\"", ":", "?", "<", ">", "|", "\\", "/"};
        int length = strArr.length;
        int i = 0;
        String str2 = str;
        while (i < length) {
            String replace = str2.replace(strArr[i], "");
            i++;
            str2 = replace;
        }
        return str2;
    }

    public static boolean f(String str) {
        try {
            String str2 = f3039a + "/tmp/" + str;
            i(str2);
            a(new File(str2));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static File g(String str) {
        File file = new File(f3039a + "/" + str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File h(String str) {
        return i(f3039a + "/" + str);
    }

    public static File i(String str) {
        if (str == null) {
            return null;
        }
        File file = new File(str);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        file.createNewFile();
        return file;
    }

    public static StringBuffer j(String str) {
        StringWriter stringWriter = new StringWriter();
        FileReader fileReader = new FileReader(str);
        char[] cArr = new char[512];
        while (true) {
            int read = fileReader.read(cArr);
            if (read <= 0) {
                return stringWriter.getBuffer();
            }
            stringWriter.write(cArr, 0, read);
        }
    }

    public static long[] k(String str) {
        try {
            StatFs statFs = new StatFs(str);
            return new long[]{statFs.getBlockCount(), statFs.getAvailableBlocks(), statFs.getBlockSize()};
        } catch (IllegalArgumentException e) {
            return new long[]{0, 0, 0};
        }
    }

    public static String l(String str) {
        int i = 1;
        if (aw.a((CharSequence) str)) {
            return null;
        }
        try {
            if (!com.estrongs.fs.d.a().b(str)) {
                return str;
            }
            String str2 = str.lastIndexOf(46) >= 0 ? str.substring(0, str.lastIndexOf(46)) + "(%1$d)" + str.substring(str.lastIndexOf(46)) : str + "(%1$d)";
            while (true) {
                str = String.format(str2, Integer.valueOf(i));
                if (!com.estrongs.fs.d.a().b(str)) {
                    return str;
                }
                i++;
            }
        } catch (FileSystemException e) {
            e.printStackTrace();
            return str;
        }
    }
}
