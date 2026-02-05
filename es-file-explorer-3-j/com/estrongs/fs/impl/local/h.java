package com.estrongs.fs.impl.local;

import android.content.Context;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.os.Build;
import android.util.Log;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.aj;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.android.util.v;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    static List<q> f3098a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    static List<q> f3099b = new ArrayList();
    private static String d = null;
    private static String e = null;
    private static Queue<n> f = new LinkedList();
    private static n g = null;
    private static boolean h = false;
    private static int i = 0;
    public static Object c = new Object();

    public static int a() {
        n a2 = a(false);
        if (a2 == null) {
            return 0;
        }
        k kVar = new k();
        kVar.f3102a = a2;
        kVar.f3103b = "uname -m";
        kVar.c = 13;
        kVar.b();
        if (!((Boolean) kVar.c()).booleanValue()) {
            a(a2);
            return 0;
        }
        b(a2);
        String str = (String) kVar.d;
        if (str == null) {
            Log.e("Error", "uname result null");
            return 0;
        }
        String lowerCase = str.toLowerCase();
        Log.e("Error", "uname ret:" + lowerCase);
        if (lowerCase.contains("arm")) {
            return 1;
        }
        if (lowerCase.contains("x86") || lowerCase.contains("386") || lowerCase.contains("686")) {
            return 2;
        }
        return lowerCase.contains("mips") ? 3 : 0;
    }

    public static synchronized int a(Object obj, byte[] bArr, int i2, int i3) {
        int i4;
        synchronized (h.class) {
            ((l) obj).e = i3;
            ((l) obj).g = i2;
            ((l) obj).f = bArr;
            e(obj);
            i4 = ((l) obj).h;
        }
        return i4;
    }

    public static synchronized long a(Object obj, long j, int i2) {
        long j2;
        synchronized (h.class) {
            ((l) obj).j = i2;
            ((l) obj).i = j;
            f(obj);
            j2 = ((l) obj).k;
        }
        return j2;
    }

    public static n a(boolean z) {
        n nVar;
        synchronized (f) {
            try {
                nVar = f.remove();
                v.a("get su shell from queue");
            } catch (NoSuchElementException e2) {
                nVar = null;
            }
        }
        if (nVar == null && z) {
            v.a("try to create su proc");
            try {
                ProcessBuilder processBuilder = new ProcessBuilder("su");
                processBuilder.redirectErrorStream(true);
                Process start = processBuilder.start();
                if (start != null) {
                    nVar = new n();
                    nVar.c = new BufferedReader(new InputStreamReader(start.getInputStream()));
                    nVar.f3109b = new BufferedWriter(new OutputStreamWriter(start.getOutputStream()));
                    nVar.f3109b.write("echo successfully\n");
                    nVar.f3109b.flush();
                    nVar.d = true;
                    String readLine = nVar.c.readLine();
                    while (readLine != null && readLine.length() == 0) {
                        readLine = nVar.c.readLine();
                    }
                    if (readLine == null || !readLine.equals("successfully")) {
                        start.destroy();
                        v.a("su response failed:" + readLine);
                        nVar = null;
                    } else {
                        v.a("successfully get the SU shell proc");
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                v.a("try to create su proc failed:" + e3.toString());
                return null;
            }
        } else if (nVar == null && !z) {
            try {
                ProcessBuilder processBuilder2 = new ProcessBuilder("/system/bin/sh");
                processBuilder2.redirectErrorStream();
                Process start2 = processBuilder2.start();
                if (start2 != null) {
                    nVar = new n();
                    nVar.d = false;
                    nVar.c = new BufferedReader(new InputStreamReader(start2.getInputStream()));
                    nVar.f3109b = new BufferedWriter(new OutputStreamWriter(start2.getOutputStream()));
                    nVar.f3108a = start2;
                }
            } catch (Exception e4) {
                return null;
            }
        }
        return nVar;
    }

    public static String a(int i2) {
        if (f3098a.size() == 0) {
            n();
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= f3098a.size()) {
                return null;
            }
            if (f3098a.get(i4).f3114a == i2) {
                return f3098a.get(i4).f3115b;
            }
            i3 = i4 + 1;
        }
    }

    public static String a(InputStream inputStream) {
        return new String(b(inputStream));
    }

    public static String a(String[] strArr) {
        if (strArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("");
        int i2 = 0;
        while (i2 < strArr.length - 1) {
            stringBuffer.append(strArr[i2] + "\n");
            i2++;
        }
        if (strArr.length > 0) {
            stringBuffer.append(strArr[i2]);
        }
        return stringBuffer.toString();
    }

    public static void a(n nVar) {
        if (nVar == null || nVar.f3108a == null) {
            return;
        }
        k kVar = new k();
        kVar.f3102a = nVar;
        kVar.a();
    }

    public static void a(OutputStream outputStream, int i2) {
        outputStream.write(new byte[]{(byte) (i2 >>> 24), (byte) (i2 >>> 16), (byte) (i2 >>> 8), (byte) i2});
    }

    public static void a(OutputStream outputStream, long j) {
        outputStream.write(new byte[]{(byte) ((j >>> 56) & 255), (byte) ((j >>> 48) & 255), (byte) ((j >>> 40) & 255), (byte) ((j >>> 32) & 255), (byte) ((j >>> 24) & 255), (byte) ((j >>> 16) & 255), (byte) ((j >>> 8) & 255), (byte) ((j >>> 0) & 255)});
    }

    public static void a(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes();
        a(outputStream, bytes.length);
        outputStream.write(bytes);
    }

    public static synchronized void a(Object obj) {
        synchronized (h.class) {
            g(obj);
        }
    }

    public static void a(String str) {
        d = str + "/libestool2.so";
        e = str;
    }

    public static void a(String str, com.estrongs.fs.g gVar) {
        try {
            a(str, gVar.lastModified() / 1000);
            m f2 = f(gVar.getAbsolutePath());
            f2.c = -1;
            a(str, f2);
        } catch (Exception e2) {
        }
    }

    public static void a(String str, Object obj) {
        LocalSocket m;
        OutputStream outputStream;
        InputStream inputStream;
        Throwable th;
        InputStream inputStream2;
        OutputStream outputStream2 = null;
        if (str == null || (m = m()) == null) {
            return;
        }
        try {
            inputStream = m.getInputStream();
            try {
                outputStream = m.getOutputStream();
                try {
                    a(outputStream, 1);
                    a(outputStream, str);
                    while (true) {
                        s.a((Context) null).a(a(inputStream), (c(inputStream) << 32) + c(inputStream), c(inputStream), c(inputStream), a(inputStream), obj);
                    }
                } catch (IOException e2) {
                    outputStream2 = outputStream;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e3) {
                            return;
                        }
                    }
                    if (outputStream2 != null) {
                        outputStream2.close();
                    }
                    m.close();
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e4) {
                            return;
                        }
                    }
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    m.close();
                    throw th;
                }
            } catch (IOException e5) {
                inputStream2 = inputStream;
            } catch (Throwable th3) {
                outputStream = null;
                th = th3;
            }
        } catch (IOException e6) {
            inputStream2 = null;
        } catch (Throwable th4) {
            outputStream = null;
            inputStream = null;
            th = th4;
        }
    }

    public static boolean a(Context context) {
        File file = new File(d);
        file.delete();
        try {
            InputStream openRawResource = context.getResources().openRawResource(c());
            aw.a(openRawResource, d, -1);
            openRawResource.close();
            try {
                if (com.estrongs.android.pop.p.a() >= 9) {
                    aj ajVar = new aj(file);
                    ajVar.a("setExecutable", new Class[]{Boolean.TYPE, Boolean.TYPE}, new Object[]{true, false});
                    ajVar.a("setReadable", new Class[]{Boolean.TYPE, Boolean.TYPE}, new Object[]{true, false});
                } else {
                    a(d, "755", false);
                }
                return true;
            } catch (Exception e2) {
                return true;
            }
        } catch (Exception e3) {
            return false;
        }
    }

    public static boolean a(Context context, boolean z) {
        boolean z2;
        if (context == null && !z) {
            return h;
        }
        if (d == null) {
            return false;
        }
        boolean z3 = com.estrongs.android.pop.q.a(context).m() && com.estrongs.android.pop.q.a(context).j();
        if (z && !z3) {
            h = z3;
            return false;
        }
        if (!z) {
            if (z3) {
                return h;
            }
            h = z3;
            return false;
        }
        if (f()) {
            try {
                InputStream openRawResource = context.getResources().openRawResource(c());
                z2 = aw.a(openRawResource, d, -1);
                try {
                    openRawResource.close();
                } catch (Exception e2) {
                }
            } catch (Exception e3) {
                z2 = false;
            }
            if (!z2) {
                return false;
            }
        }
        boolean[] zArr = new boolean[1];
        boolean d2 = d(z);
        if (d2 || h) {
            zArr[0] = d2;
        } else {
            zArr[0] = d(z);
        }
        return zArr[0];
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x005c A[Catch: Exception -> 0x0063, TryCatch #6 {Exception -> 0x0063, blocks: (B:49:0x0057, B:43:0x005c, B:44:0x005f), top: B:48:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(String str, long j) {
        OutputStream outputStream;
        InputStream inputStream = null;
        boolean z = false;
        LocalSocket m = m();
        try {
            try {
                outputStream = m.getOutputStream();
                try {
                    inputStream = m.getInputStream();
                    a(outputStream, 207);
                    a(outputStream, str);
                    a(outputStream, j);
                    if (c(inputStream) != 0) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception e2) {
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        m.close();
                    } else {
                        z = true;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception e3) {
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        m.close();
                    }
                } catch (Exception e4) {
                    e = e4;
                    e.printStackTrace();
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception e5) {
                        }
                    }
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    m.close();
                    return z;
                }
            } catch (Throwable th) {
                th = th;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e6) {
                        throw th;
                    }
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                m.close();
                throw th;
            }
        } catch (Exception e7) {
            e = e7;
            outputStream = null;
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
            if (inputStream != null) {
            }
            if (outputStream != null) {
            }
            m.close();
            throw th;
        }
        return z;
    }

    public static boolean a(String str, m mVar) {
        boolean z;
        if (str == null) {
            return false;
        }
        mVar.d = str;
        c(mVar);
        z = mVar.e;
        return z;
    }

    public static boolean a(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        String str3 = "mv " + m(str) + " " + m(str2);
        n a2 = a(true);
        if (a2 == null) {
            return false;
        }
        k kVar = new k();
        kVar.f3102a = a2;
        kVar.f3103b = str3;
        kVar.c = 4;
        kVar.b();
        if (((Boolean) kVar.e).booleanValue()) {
            b(a2);
        } else {
            a(a2);
        }
        return ((Boolean) kVar.c()).booleanValue();
    }

    public static boolean a(String str, String str2, n nVar) {
        if (str.endsWith("/")) {
            str = str.substring(0, str.length() - 1);
        }
        k kVar = new k();
        kVar.f3102a = nVar;
        kVar.f3103b = "chmod " + str2 + " \"" + str + "\"";
        kVar.c = 13;
        kVar.b();
        return ((Boolean) kVar.c()).booleanValue();
    }

    public static boolean a(String str, String str2, boolean z) {
        if (str.endsWith("/")) {
            str = str.substring(0, str.length() - 1);
        }
        String str3 = "chmod " + str2 + " \"" + str + "\"";
        n a2 = a(z);
        if (a2 == null) {
            return false;
        }
        k kVar = new k();
        kVar.f3102a = a2;
        kVar.f3103b = str3;
        kVar.c = 13;
        kVar.b();
        if (((Boolean) kVar.e).booleanValue()) {
            b(a2);
        } else {
            a(a2);
        }
        return ((Boolean) kVar.c()).booleanValue();
    }

    public static boolean a(String str, boolean z) {
        return new boolean[]{a(str, z, true)}[0];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean a(String str, boolean z, boolean z2) {
        LocalSocket m;
        InputStream inputStream;
        OutputStream outputStream;
        OutputStream outputStream2;
        InputStream inputStream2 = null;
        Object[] objArr = 0;
        if (str == null) {
            return false;
        }
        int i2 = z2 ? 2 : 3;
        String a2 = ak.a(str, z);
        if (a2 != null && (m = m()) != null) {
            try {
                inputStream = m.getInputStream();
                try {
                    try {
                        outputStream2 = m.getOutputStream();
                    } catch (IOException e2) {
                        outputStream = null;
                        inputStream2 = inputStream;
                    }
                    try {
                        a(outputStream2, i2);
                        a(outputStream2, a2);
                        int c2 = c(inputStream);
                        if (c2 != 0) {
                            throw new NativeException(g.a(c2));
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e3) {
                                return false;
                            }
                        }
                        if (outputStream2 != null) {
                            outputStream2.close();
                        }
                        m.close();
                        return true;
                    } catch (IOException e4) {
                        outputStream = outputStream2;
                        inputStream2 = inputStream;
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e5) {
                                return false;
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        m.close();
                        return false;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e6) {
                            return false;
                        }
                    }
                    if (0 != 0) {
                        (objArr == true ? 1 : 0).close();
                    }
                    m.close();
                    throw th;
                }
            } catch (IOException e7) {
                outputStream = null;
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
            }
        }
        return false;
    }

    public static int b() {
        if (i != 0) {
            return i;
        }
        String str = Build.CPU_ABI;
        if (str != null) {
            String lowerCase = str.toLowerCase();
            if (lowerCase.contains("arm")) {
                i = 1;
                return 1;
            }
            if (lowerCase.contains("x86") || lowerCase.contains("386") || lowerCase.contains("686")) {
                i = 2;
                return 2;
            }
            if (lowerCase.contains("mips")) {
                i = 3;
                return 3;
            }
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile("/proc/cpuinfo", "r");
        for (String readLine = randomAccessFile.readLine(); readLine != null; readLine = randomAccessFile.readLine()) {
            String lowerCase2 = readLine.toLowerCase();
            if (lowerCase2.contains("processor")) {
                if (lowerCase2.contains("arm")) {
                    i = 1;
                    return 1;
                }
                if (lowerCase2.contains("x86") || lowerCase2.contains("386") || lowerCase2.contains("686")) {
                    i = 2;
                    return 2;
                }
                if (lowerCase2.contains("mips")) {
                    i = 3;
                    return 3;
                }
            } else if (lowerCase2.contains("flags") || lowerCase2.contains("features")) {
                if (lowerCase2.contains("sse")) {
                    i = 2;
                    return 2;
                }
                if (lowerCase2.contains("thumb")) {
                    i = 1;
                    return 1;
                }
            } else if (lowerCase2.contains("pentium")) {
                i = 2;
                return 2;
            }
        }
        i = a();
        return i;
    }

    public static String b(int i2) {
        if (f3099b.size() == 0) {
            n();
        }
        if (f3099b.size() == 0) {
            return null;
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= f3099b.size()) {
                return null;
            }
            if (f3099b.get(i4).f3114a == i2) {
                return f3099b.get(i4).f3115b;
            }
            i3 = i4 + 1;
        }
    }

    public static void b(n nVar) {
        if (nVar == null) {
            return;
        }
        if (!nVar.d) {
            a(nVar);
            return;
        }
        synchronized (f) {
            try {
                f.add(nVar);
            } catch (Exception e2) {
                a(nVar);
            }
        }
    }

    private static void b(Object obj) {
        OutputStream outputStream;
        String str;
        InputStream inputStream = null;
        m mVar = (m) obj;
        LocalSocket m = m();
        if (m == null) {
            mVar.a(-1, -1, -1);
            return;
        }
        try {
            outputStream = m.getOutputStream();
            try {
                inputStream = m.getInputStream();
                a(outputStream, FTPReply.COMMAND_IS_SUPERFLUOUS);
                str = mVar.d;
                a(outputStream, str);
                if (c(inputStream) != 0) {
                    mVar.a(-1, -1, -1);
                } else {
                    mVar.a(c(inputStream), c(inputStream), c(inputStream));
                }
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e3) {
                        mVar.a(-1, -1, -1);
                    }
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                m.close();
                mVar.a(-1, -1, -1);
            }
        } catch (Exception e4) {
            e = e4;
            outputStream = null;
        }
    }

    public static boolean b(String str) {
        return str.charAt(0) == '$' && str.length() == "$-----ESTOOL-END-----$".length() && str.equals("$-----ESTOOL-END-----$");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean b(String str, boolean z) {
        InputStream inputStream;
        OutputStream outputStream;
        OutputStream outputStream2;
        InputStream inputStream2 = null;
        Object[] objArr = 0;
        synchronized (c) {
            if (str == null) {
                return false;
            }
            String a2 = ak.a(str, false);
            if (a2 == null) {
                return false;
            }
            LocalSocket m = m();
            if (m == null) {
                return false;
            }
            try {
                inputStream = m.getInputStream();
                try {
                    try {
                        outputStream2 = m.getOutputStream();
                    } catch (IOException e2) {
                        outputStream = null;
                        inputStream2 = inputStream;
                    }
                    try {
                        a(outputStream2, 16);
                        a(outputStream2, a2);
                        a(outputStream2, z ? 1 : 0);
                        boolean z2 = c(inputStream) == 0;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e3) {
                                return false;
                            }
                        }
                        if (outputStream2 != null) {
                            outputStream2.close();
                        }
                        m.close();
                        return z2;
                    } catch (IOException e4) {
                        outputStream = outputStream2;
                        inputStream2 = inputStream;
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e5) {
                                return false;
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        m.close();
                        return false;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e6) {
                            return false;
                        }
                    }
                    if (0 != 0) {
                        (objArr == true ? 1 : 0).close();
                    }
                    m.close();
                    throw th;
                }
            } catch (IOException e7) {
                outputStream = null;
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
            }
        }
    }

    public static boolean b(String[] strArr) {
        n a2 = a(true);
        if (a2 == null) {
            return false;
        }
        boolean z = !a2.d;
        String str = "";
        for (int i2 = 0; i2 < strArr.length; i2 += 3) {
            try {
                str = strArr[i2 + 2].equals("rw") ? str + "mount -o remount,rw " + strArr[i2 + 1] + " " + strArr[i2] + ";" : str + "mount -o remount,ro " + strArr[i2 + 1] + " " + strArr[i2] + ";";
            } finally {
                if (z) {
                    a(a2);
                } else {
                    b(a2);
                }
            }
        }
        if (str.length() == 0) {
            return true;
        }
        k kVar = new k();
        kVar.f3102a = a2;
        kVar.f3103b = str;
        kVar.c = 6;
        kVar.b();
        if (!((Boolean) kVar.e).booleanValue()) {
            z = true;
        }
        boolean booleanValue = ((Boolean) kVar.c()).booleanValue();
        if (z) {
            a(a2);
            return booleanValue;
        }
        b(a2);
        return booleanValue;
    }

    public static byte[] b(InputStream inputStream) {
        byte[] bArr = new byte[c(inputStream)];
        if (inputStream.read(bArr) == -1) {
            throw new IOException();
        }
        return bArr;
    }

    public static String[] b(String str, String str2) {
        String[] b2 = b(true);
        int length = b2.length / 3;
        for (int i2 = 1; i2 < length; i2++) {
            String[] strArr = {b2[i2 * 3], b2[(i2 * 3) + 1], b2[(i2 * 3) + 2]};
            int i3 = i2;
            while (i3 > 0 && b2[(i3 - 1) * 3].compareTo(strArr[0]) < 0) {
                b2[i3 * 3] = b2[(i3 - 1) * 3];
                b2[(i3 * 3) + 1] = b2[((i3 - 1) * 3) + 1];
                b2[(i3 * 3) + 2] = b2[((i3 - 1) * 3) + 2];
                i3--;
            }
            b2[i3 * 3] = strArr[0];
            b2[(i3 * 3) + 1] = strArr[1];
            b2[(i3 * 3) + 2] = strArr[2];
        }
        int i4 = 0;
        while (true) {
            if (i4 >= b2.length / 3) {
                break;
            }
            if (!ak.h(b2[i4 * 3], str) || b2[i4 * 3].equals("/")) {
                i4++;
            } else {
                String[] strArr2 = {b2[i4 * 3], b2[(i4 * 3) + 1], str2};
                if (b(strArr2)) {
                    strArr2[2] = b2[(i4 * 3) + 2];
                    return strArr2;
                }
            }
        }
        return null;
    }

    public static String[] b(boolean z) {
        n a2 = a(false);
        if (a2 == null) {
            return null;
        }
        boolean z2 = !a2.d;
        try {
            k kVar = new k();
            kVar.f3102a = a2;
            kVar.f3103b = "mount";
            kVar.c = 5;
            kVar.f = z ? Boolean.valueOf(z) : null;
            kVar.b();
            if (!((Boolean) kVar.e).booleanValue()) {
                a(a2);
                return null;
            }
            if (!((Boolean) kVar.c()).booleanValue()) {
                return null;
            }
            String str = (String) kVar.d;
            if (str == null) {
                if (z2) {
                    a(a2);
                } else {
                    b(a2);
                }
                return null;
            }
            String[] split = str.split("\\s+");
            if (z2) {
                a(a2);
                return split;
            }
            b(a2);
            return split;
        } finally {
            if (z2) {
                a(a2);
            } else {
                b(a2);
            }
        }
    }

    public static int c() {
        int b2 = b();
        if (b2 == 1) {
            return C0000R.raw.estool_arm;
        }
        if (b2 == 2) {
            return C0000R.raw.estool_x86;
        }
        if (b2 == 3) {
        }
        return C0000R.raw.estool_arm;
    }

    public static int c(InputStream inputStream) {
        byte[] bArr = new byte[4];
        if (inputStream.read(bArr) == -1) {
            throw new IOException();
        }
        return (bArr[3] & 255) | ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8);
    }

    private static synchronized LocalSocket c(boolean z) {
        LocalSocket localSocket = null;
        synchronized (h.class) {
            LocalSocketAddress localSocketAddress = new LocalSocketAddress(l(), LocalSocketAddress.Namespace.ABSTRACT);
            LocalSocket localSocket2 = new LocalSocket();
            try {
                localSocket2.connect(localSocketAddress);
            } catch (Exception e2) {
                v.a("connect failed:" + e2.toString());
                localSocket2 = null;
            }
            if (localSocket2 != null) {
                try {
                    v.a("connect succ");
                    OutputStream outputStream = localSocket2.getOutputStream();
                    InputStream inputStream = localSocket2.getInputStream();
                    a(outputStream, 80);
                    if (c(inputStream) != 17) {
                        try {
                            localSocket2.close();
                            LocalSocket localSocket3 = new LocalSocket();
                            localSocket3.connect(localSocketAddress);
                            a(localSocket3.getOutputStream(), 100);
                            localSocket3.close();
                        } catch (Exception e3) {
                        }
                        a((Context) FexApplication.f325a);
                        v.a("connected version mismatch");
                    } else {
                        v.a("return localsocket");
                        localSocket = localSocket2;
                    }
                } catch (Exception e4) {
                }
            } else if (z) {
                try {
                    if ((!f() || a((Context) FexApplication.f325a)) && d(true)) {
                        localSocket = c(false);
                    }
                } catch (Exception e5) {
                }
            }
        }
        return localSocket;
    }

    private static void c(Object obj) {
        OutputStream outputStream;
        String str;
        InputStream inputStream = null;
        m mVar = (m) obj;
        LocalSocket m = m();
        if (m == null) {
            mVar.a(false);
            return;
        }
        try {
            outputStream = m.getOutputStream();
            try {
                inputStream = m.getInputStream();
                a(outputStream, 203);
                str = mVar.d;
                a(outputStream, str);
                a(outputStream, mVar.f3106a);
                a(outputStream, mVar.f3107b);
                a(outputStream, mVar.c);
                if (c(inputStream) != 0) {
                    mVar.a(false);
                } else {
                    mVar.a(true);
                }
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e3) {
                        mVar.a(false);
                    }
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                m.close();
                mVar.a(false);
            }
        } catch (Exception e4) {
            e = e4;
            outputStream = null;
        }
    }

    private static boolean c(n nVar) {
        try {
            nVar.f3109b.write(d + (" 23486 " + l()) + "\n");
            nVar.f3109b.flush();
            try {
                Thread.sleep(2000L);
            } catch (Exception e2) {
            }
            return true;
        } catch (Exception e3) {
            v.a("start Rootserver failed");
            v.a(e3.toString());
            return false;
        }
    }

    public static boolean c(String str) {
        return a(str, false, false);
    }

    private static long d(InputStream inputStream) {
        if (inputStream.read(new byte[8]) == -1) {
            throw new IOException();
        }
        return ((r0[0] & 255) << 56) | ((r0[1] & 255) << 48) | ((r0[2] & 255) << 40) | ((r0[3] & 255) << 32) | ((r0[4] & 255) << 24) | ((r0[5] & 255) << 16) | ((r0[6] & 255) << 8) | (r0[7] & 255);
    }

    public static com.estrongs.fs.c d(String str) {
        String bc;
        LocalSocket m;
        InputStream inputStream;
        OutputStream outputStream;
        Throwable th;
        com.estrongs.fs.c[] cVarArr = new com.estrongs.fs.c[1];
        if (str == null || (bc = ak.bc(str)) == null || (m = m()) == null) {
            return null;
        }
        try {
            inputStream = m.getInputStream();
            try {
                outputStream = m.getOutputStream();
            } catch (IOException e2) {
                outputStream = null;
            } catch (Throwable th2) {
                outputStream = null;
                th = th2;
            }
            try {
                a(outputStream, 9);
                a(outputStream, bc);
                if (c(inputStream) != 0) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e3) {
                            return null;
                        }
                    }
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    m.close();
                    return null;
                }
                String a2 = a(inputStream);
                long c2 = (c(inputStream) << 32) + c(inputStream);
                int c3 = c(inputStream);
                int c4 = c(inputStream);
                String a3 = a(inputStream);
                com.estrongs.fs.c cVar = new com.estrongs.fs.c("");
                cVar.o = a3;
                cVar.d = a2.charAt(0) == 'd' || a2.charAt(0) == 'e';
                cVar.f3034b = str;
                if (cVar.d) {
                    cVar.e = 0L;
                } else {
                    cVar.e = c2;
                }
                cVar.j = c3;
                cVar.j *= 1000;
                cVar.q = c4;
                cVar.p = a2.substring(1, 10);
                cVar.m = cVar.o.charAt(0) == '.';
                if (ak.aZ(cVar.f3034b)) {
                    cVar.k = cVar.p.charAt(3) == 'r';
                    cVar.l = cVar.p.charAt(4) == 'w';
                } else {
                    cVar.k = cVar.p.charAt(0) == 'r';
                    cVar.l = cVar.p.charAt(1) == 'w';
                }
                if (a2.charAt(0) == 'l' || a2.charAt(0) == 'e') {
                    cVar.n = true;
                }
                cVarArr[0] = cVar;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e4) {
                    }
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                m.close();
                return cVarArr[0];
            } catch (IOException e5) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e6) {
                        return null;
                    }
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                m.close();
                return null;
            } catch (Throwable th3) {
                th = th3;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e7) {
                        throw th;
                    }
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                m.close();
                throw th;
            }
        } catch (IOException e8) {
            inputStream = null;
            outputStream = null;
        } catch (Throwable th4) {
            inputStream = null;
            outputStream = null;
            th = th4;
        }
    }

    public static String d() {
        return d;
    }

    private static void d(Object obj) {
        OutputStream outputStream;
        String str;
        InputStream inputStream = null;
        l lVar = (l) obj;
        LocalSocket m = m();
        if (m == null) {
            lVar.a(false);
            return;
        }
        try {
            outputStream = m.getOutputStream();
            try {
                inputStream = m.getInputStream();
                a(outputStream, 200);
                str = lVar.f3104a;
                a(outputStream, str);
                if (c(inputStream) != 0) {
                    lVar.a(false);
                } else {
                    lVar.f3105b = m;
                    lVar.a(true);
                }
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e3) {
                        lVar.a(false);
                    }
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                m.close();
                lVar.a(false);
            }
        } catch (Exception e4) {
            e = e4;
            outputStream = null;
        }
    }

    private static boolean d(boolean z) {
        try {
            try {
                try {
                    if (!e()) {
                        v.a("su file not exist");
                        h = false;
                        if (0 == 0 || !h) {
                            a((n) null);
                            return false;
                        }
                        g = null;
                        return false;
                    }
                    LocalSocket m = m();
                    if (m != null) {
                        try {
                            m.close();
                        } catch (Exception e2) {
                        }
                        h = true;
                        if (0 == 0 || !h) {
                            a((n) null);
                        } else {
                            g = null;
                        }
                        return true;
                    }
                    n a2 = a(true);
                    if (a2 == null) {
                        v.a("create su shell failed 2");
                        h = false;
                        if (a2 == null || !h) {
                            a(a2);
                            return false;
                        }
                        g = a2;
                        return false;
                    }
                    h = true;
                    File file = new File(d);
                    if (com.estrongs.android.pop.p.a() >= 9) {
                        aj ajVar = new aj(file);
                        ajVar.a("setExecutable", new Class[]{Boolean.TYPE, Boolean.TYPE}, new Object[]{true, false});
                        ajVar.a("setReadable", new Class[]{Boolean.TYPE, Boolean.TYPE}, new Object[]{true, false});
                    }
                    if (a(d, "777", a2)) {
                        v.a("chmod estool succ");
                    } else {
                        v.a("chmod estool failed");
                    }
                    if (c(a2)) {
                        v.a("start root server succ, try connect");
                        LocalSocket m2 = m();
                        if (m2 == null) {
                            h = false;
                        } else {
                            try {
                                m2.close();
                            } catch (Exception e3) {
                            }
                        }
                    } else {
                        v.a("start root server failed");
                        h = false;
                    }
                    Log.e("ES", "SU Check result:" + h);
                    v.a("SU Check result:" + h);
                    boolean z2 = h;
                    if (a2 == null || !h) {
                        a(a2);
                        return z2;
                    }
                    g = a2;
                    return z2;
                } catch (SecurityException e4) {
                    e4.printStackTrace();
                    h = false;
                    Log.e("NativeExecuter", "NativeExecuter SecurityException :" + e4.getMessage());
                    v.a("NativeExecuter SecurityException");
                    if (0 == 0 || !h) {
                        a((n) null);
                        return false;
                    }
                    g = null;
                    return false;
                }
            } catch (Exception e5) {
                e5.printStackTrace();
                h = false;
                v.a("NativeExecuter Exception");
                if (0 == 0 || !h) {
                    a((n) null);
                    return false;
                }
                g = null;
                return false;
            }
        } catch (Throwable th) {
            if (0 == 0 || !h) {
                a((n) null);
            } else {
                g = null;
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static OutputStream e(String str) {
        String bc;
        LocalSocket m;
        OutputStream outputStream;
        InputStream inputStream;
        if (str == null || (bc = ak.bc(str)) == null || (m = m()) == null) {
            return null;
        }
        try {
            outputStream = m.getOutputStream();
        } catch (IOException e2) {
            e = e2;
            outputStream = null;
            inputStream = null;
        } catch (Throwable th) {
            th = th;
            outputStream = null;
            inputStream = null;
        }
        try {
            inputStream = m.getInputStream();
            try {
                try {
                    a(outputStream, 10);
                    a(outputStream, bc);
                    if (c(inputStream) != 0) {
                        if (0 != 0) {
                            return null;
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                                return null;
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        m.close();
                        return null;
                    }
                    p pVar = new p(m, inputStream, outputStream);
                    if (pVar == null) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                                return null;
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        m.close();
                    }
                    return pVar;
                } catch (IOException e5) {
                    e = e5;
                    e.printStackTrace();
                    if (0 != 0) {
                        return null;
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                            return null;
                        }
                    }
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    m.close();
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 == 0) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e7) {
                            e7.printStackTrace();
                            return null;
                        }
                    }
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    m.close();
                }
                throw th;
            }
        } catch (IOException e8) {
            e = e8;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
            if (0 == 0) {
            }
            throw th;
        }
    }

    private static void e(Object obj) {
        boolean z;
        LocalSocket localSocket;
        LocalSocket localSocket2;
        int i2;
        byte[] bArr;
        int i3;
        l lVar = (l) obj;
        if (lVar != null) {
            z = lVar.c;
            if (!z) {
                try {
                    localSocket = lVar.f3105b;
                    OutputStream outputStream = localSocket.getOutputStream();
                    localSocket2 = lVar.f3105b;
                    InputStream inputStream = localSocket2.getInputStream();
                    a(outputStream, 11);
                    i2 = lVar.e;
                    a(outputStream, i2);
                    int c2 = c(inputStream);
                    if (c2 < 0) {
                        lVar.a(c2);
                        return;
                    }
                    int i4 = c2;
                    while (i4 > 0) {
                        bArr = lVar.f;
                        i3 = lVar.g;
                        int read = inputStream.read(bArr, (i3 + c2) - i4, i4);
                        if (read <= 0) {
                            break;
                        } else {
                            i4 -= read;
                        }
                    }
                    if (i4 != 0) {
                        throw new IOException("Cannot finish reading data.");
                    }
                    lVar.a(c2);
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    a(lVar);
                    lVar.a(-1);
                    return;
                }
            }
        }
        lVar.a(-1);
    }

    public static boolean e() {
        for (String str : new String[]{"/system/xbin/su", "/system/sbin/su", "/system/bin/su", "/vendor/bin/su", "/sbin/su"}) {
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    public static m f(String str) {
        m mVar = new m(str, null);
        if (str != null) {
            b(mVar);
        }
        return mVar;
    }

    private static void f(Object obj) {
        boolean z;
        LocalSocket localSocket;
        LocalSocket localSocket2;
        long j;
        int i2;
        l lVar = (l) obj;
        if (lVar != null) {
            z = lVar.c;
            if (!z) {
                try {
                    localSocket = lVar.f3105b;
                    OutputStream outputStream = localSocket.getOutputStream();
                    localSocket2 = lVar.f3105b;
                    InputStream inputStream = localSocket2.getInputStream();
                    a(outputStream, 201);
                    j = lVar.i;
                    a(outputStream, j);
                    i2 = lVar.j;
                    a(outputStream, i2);
                    lVar.a(d(inputStream));
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    a(lVar);
                    lVar.a(-1L);
                    return;
                }
            }
        }
        lVar.a(-1L);
    }

    public static boolean f() {
        File file = new File(d);
        if (!file.exists()) {
            return true;
        }
        int c2 = c();
        long length = file.length();
        long j = 0;
        try {
            InputStream openRawResource = FexApplication.a().getResources().openRawResource(c2);
            j = openRawResource.available();
            openRawResource.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        switch (c2) {
            case C0000R.raw.estool_arm /* 2131099648 */:
                return length == j;
            case C0000R.raw.estool_x86 /* 2131099649 */:
                return length == j;
            default:
                return false;
        }
    }

    public static int g(String str) {
        if (f3098a.size() == 0) {
            n();
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= f3098a.size()) {
                return -1;
            }
            if (f3098a.get(i3).f3115b.equals(str)) {
                return f3098a.get(i3).f3114a;
            }
            i2 = i3 + 1;
        }
    }

    public static String g() {
        return o();
    }

    private static void g(Object obj) {
        boolean z;
        LocalSocket localSocket;
        LocalSocket localSocket2;
        LocalSocket localSocket3;
        l lVar = (l) obj;
        if (lVar != null) {
            z = lVar.c;
            if (z) {
                return;
            }
            try {
                lVar.c = true;
                localSocket = lVar.f3105b;
                OutputStream outputStream = localSocket.getOutputStream();
                localSocket2 = lVar.f3105b;
                InputStream inputStream = localSocket2.getInputStream();
                if (inputStream != null) {
                    inputStream.close();
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                localSocket3 = lVar.f3105b;
                localSocket3.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static int h(String str) {
        if (f3099b.size() == 0) {
            n();
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= f3099b.size()) {
                return -1;
            }
            if (f3099b.get(i3).f3115b.equals(str)) {
                return f3099b.get(i3).f3114a;
            }
            i2 = i3 + 1;
        }
    }

    public static void h() {
        LocalSocket m = m();
        if (m == null) {
            return;
        }
        try {
            OutputStream outputStream = m.getOutputStream();
            InputStream inputStream = m.getInputStream();
            a(outputStream, 100);
            outputStream.close();
            inputStream.close();
            m.close();
        } catch (IOException e2) {
        }
    }

    public static Object i(String str) {
        boolean z;
        if (str == null) {
            return null;
        }
        l lVar = new l(str);
        d(lVar);
        z = lVar.d;
        if (z) {
            return lVar;
        }
        return null;
    }

    public static String[] i() {
        if (f3098a.size() == 0) {
            n();
        }
        if (f3098a.size() == 0) {
            return null;
        }
        String[] strArr = new String[f3098a.size()];
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= f3098a.size()) {
                return strArr;
            }
            strArr[i3] = f3098a.get(i3).f3115b;
            i2 = i3 + 1;
        }
    }

    public static InputStream j(String str) {
        String bc;
        LocalSocket m;
        OutputStream outputStream;
        InputStream inputStream;
        OutputStream outputStream2;
        InputStream inputStream2;
        if (str == null || (bc = ak.bc(str)) == null || (m = m()) == null) {
            return null;
        }
        try {
            outputStream = m.getOutputStream();
            try {
                inputStream = m.getInputStream();
                try {
                    a(outputStream, 11);
                    a(outputStream, bc);
                    if (c(inputStream) != 0) {
                        if (0 != 0) {
                            return null;
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e2) {
                                return null;
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        m.close();
                        return null;
                    }
                    o oVar = new o(m, inputStream, outputStream);
                    if (oVar == null) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e3) {
                                return null;
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        m.close();
                    }
                    return oVar;
                } catch (IOException e4) {
                    outputStream2 = outputStream;
                    inputStream2 = inputStream;
                    if (0 != 0) {
                        return null;
                    }
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e5) {
                            return null;
                        }
                    }
                    if (outputStream2 != null) {
                        outputStream2.close();
                    }
                    m.close();
                    return null;
                } catch (Throwable th) {
                    th = th;
                    if (0 == 0) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e6) {
                                return null;
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        m.close();
                    }
                    throw th;
                }
            } catch (IOException e7) {
                outputStream2 = outputStream;
                inputStream2 = null;
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
            }
        } catch (IOException e8) {
            outputStream2 = null;
            inputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
            inputStream = null;
        }
    }

    public static String[] j() {
        if (f3099b.size() == 0) {
            n();
        }
        if (f3099b.size() == 0) {
            return null;
        }
        String[] strArr = new String[f3099b.size()];
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= f3099b.size()) {
                return strArr;
            }
            strArr[i3] = f3099b.get(i3).f3115b;
            i2 = i3 + 1;
        }
    }

    public static String[] k() {
        return b(false);
    }

    public static String[] k(String str) {
        String[] split = str.split("\n");
        if (split.length % 3 != 0) {
            return null;
        }
        return split;
    }

    private static String l() {
        return ak.aY(ak.aY(d)) + "files/comm/su_port";
    }

    public static boolean l(String str) {
        InputStream inputStream;
        Throwable th;
        OutputStream outputStream;
        InputStream inputStream2;
        OutputStream outputStream2 = null;
        synchronized (c) {
            if (str == null) {
                return false;
            }
            LocalSocket m = m();
            if (m == null) {
                return false;
            }
            try {
                inputStream = m.getInputStream();
                try {
                    outputStream = m.getOutputStream();
                    try {
                        a(outputStream, 17);
                        a(outputStream, str);
                        boolean z = c(inputStream) == 0;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e2) {
                                return false;
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        m.close();
                        return z;
                    } catch (IOException e3) {
                        outputStream2 = outputStream;
                        inputStream2 = inputStream;
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e4) {
                                return false;
                            }
                        }
                        if (outputStream2 != null) {
                            outputStream2.close();
                        }
                        m.close();
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e5) {
                                return false;
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        m.close();
                        throw th;
                    }
                } catch (IOException e6) {
                    inputStream2 = inputStream;
                } catch (Throwable th3) {
                    outputStream = null;
                    th = th3;
                }
            } catch (IOException e7) {
                inputStream2 = null;
            } catch (Throwable th4) {
                inputStream = null;
                th = th4;
                outputStream = null;
            }
        }
    }

    private static synchronized LocalSocket m() {
        LocalSocket c2;
        synchronized (h.class) {
            c2 = c(false);
        }
        return c2;
    }

    private static String m(String str) {
        return "\"" + str + "\"";
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003e A[Catch: Exception -> 0x00aa, TRY_LEAVE, TryCatch #0 {Exception -> 0x00aa, blocks: (B:17:0x0034, B:18:0x003b, B:20:0x003e, B:23:0x006d), top: B:16:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean n() {
        String str;
        Exception e2;
        String[] split;
        LocalSocket m = m();
        if (m == null) {
            return false;
        }
        try {
            OutputStream outputStream = m.getOutputStream();
            InputStream inputStream = m.getInputStream();
            a(outputStream, 204);
            a(outputStream, 5000);
            byte[] bArr = new byte[1024];
            str = "";
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    str = str + new String(bArr, 0, read);
                } catch (Exception e3) {
                    e2 = e3;
                    e2.printStackTrace();
                    f3098a.clear();
                    f3099b.clear();
                    split = str.split("\n");
                    while (r0 < split.length) {
                    }
                    if (f3098a.size() >= 2) {
                    }
                }
            }
        } catch (Exception e4) {
            str = "";
            e2 = e4;
        }
        f3098a.clear();
        f3099b.clear();
        try {
            split = str.split("\n");
            for (String str2 : split) {
                String[] split2 = str2.split(":");
                if (split2.length == 4) {
                    q qVar = new q(null);
                    qVar.f3115b = split2[0].trim();
                    qVar.f3114a = Integer.parseInt(split2[1].trim());
                    f3099b.add(qVar);
                    qVar.f3115b = split2[2].trim();
                    qVar.f3114a = Integer.parseInt(split2[3].trim());
                    f3098a.add(qVar);
                }
            }
        } catch (Exception e5) {
        }
        if (f3098a.size() >= 2) {
            return false;
        }
        j jVar = new j();
        Object[] array = f3098a.toArray();
        Arrays.sort(array, jVar);
        f3098a.clear();
        f3098a.add((q) array[0]);
        for (int i2 = 1; i2 < array.length; i2++) {
            int size = f3098a.size();
            if (f3098a.size() >= 1 && ((q) array[i2]).f3114a != f3098a.get(size - 1).f3114a) {
                f3098a.add((q) array[i2]);
            }
        }
        Object[] array2 = f3099b.toArray();
        Arrays.sort(array2, jVar);
        f3099b.clear();
        f3099b.add((q) array2[0]);
        for (int i3 = 1; i3 < array2.length; i3++) {
            int size2 = f3099b.size();
            if (size2 >= 1 && ((q) array2[i3]).f3114a != f3099b.get(size2 - 1).f3114a) {
                f3099b.add((q) array2[i3]);
            }
        }
        return true;
    }

    private static String o() {
        long[] k = com.estrongs.fs.c.d.k("/sdcard");
        double d2 = ((float) (k[0] * k[2])) / 1024.0f;
        double d3 = ((float) (k[1] * k[2])) / 1024.0f;
        NumberFormat numberFormat = NumberFormat.getInstance();
        numberFormat.setMaximumFractionDigits(0);
        return "T: " + numberFormat.format(d2 / 1024.0d) + "M A: " + numberFormat.format(d3 / 1024.0d) + "M";
    }
}
