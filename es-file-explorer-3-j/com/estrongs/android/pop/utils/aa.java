package com.estrongs.android.pop.utils;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class aa {

    /* renamed from: b, reason: collision with root package name */
    public static Set<ah> f1171b = new HashSet();
    public static Object c = new Object();
    public static boolean d = false;
    public static boolean e = false;
    public static aa f = new aa();

    /* renamed from: a, reason: collision with root package name */
    public ae f1172a = new ae("root", false, true);
    private ArrayList<String> g = new ArrayList<>();
    private ArrayList<String> h = new ArrayList<>();

    private String a(InputStream inputStream, int i) {
        byte[] bArr = new byte[512];
        inputStream.read(bArr, 0, i);
        bArr[i] = 0;
        return new String(bArr, 0, i);
    }

    public static String a(String str) {
        if (str != null && (str.startsWith("/") || str.startsWith("file:///") || str.startsWith("FILE:///"))) {
            synchronized (f) {
                str = (str.startsWith("file://") || str.startsWith("FILE://")) ? f.o(str.substring(7)).f1175a : f.o(str).f1175a;
            }
        }
        return str;
    }

    public static void a() {
        synchronized (f1171b) {
            f1171b.clear();
        }
    }

    private void a(ae aeVar, ArrayList<af> arrayList, String str, String str2, int i) {
        String str3 = str == null ? aeVar.f1177a : str.equals("/") ? str + aeVar.f1177a : str + "/" + aeVar.f1177a;
        String str4 = null;
        if (i == 1 && !aeVar.f1177a.equals("local")) {
            str4 = aeVar.f1177a + "://";
        } else if (i == 2) {
            if (str2 != null) {
                int lastIndexOf = aeVar.f1177a.lastIndexOf(64);
                str4 = lastIndexOf > 0 ? str2 + aeVar.f1177a.substring(lastIndexOf + 1) : str2 + aeVar.f1177a;
            } else {
                str4 = "/" + aeVar.f1177a;
            }
        } else if (i > 2) {
            str4 = str2 + "/" + aeVar.f1177a;
        }
        if (aeVar.f1178b) {
            arrayList.add(new af(str3, aeVar.c, str4));
        }
        if (aeVar.d == null || aeVar.d.size() == 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= aeVar.d.size()) {
                return;
            }
            a(aeVar.d.get(i3), arrayList, str3, str4, i + 1);
            i2 = i3 + 1;
        }
    }

    public static void a(String str, int i) {
        String a2 = a(str);
        synchronized (f1171b) {
            f1171b.add(new ah(a2, i));
        }
    }

    public static void a(List<com.estrongs.fs.g> list) {
        int i = 0;
        ArrayList arrayList = new ArrayList();
        synchronized (f) {
            while (true) {
                int i2 = i;
                if (i2 < list.size()) {
                    f.a(list.get(i2).getAbsolutePath(), list.get(i2).getFileType().a(), arrayList, true);
                    i = i2 + 1;
                } else {
                    try {
                        break;
                    } catch (Exception e2) {
                    }
                }
            }
            c("/sdcard/.estrongs/hide2.txt");
            d = false;
        }
        if (arrayList.size() > 0) {
            new Thread(new ab(arrayList)).start();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(ae aeVar, com.estrongs.fs.g gVar, int i) {
        String str;
        int i2;
        ae d2;
        if (aeVar == null || aeVar.d == null) {
            return false;
        }
        String name = gVar.getName();
        String absolutePath = gVar.getAbsolutePath();
        if (name.endsWith("/")) {
            name = name.substring(0, name.length() - 1);
        }
        if (com.estrongs.android.util.ak.aO(absolutePath) && (!com.estrongs.android.util.ak.aZ(absolutePath) || com.estrongs.android.util.ak.bb(absolutePath))) {
            ad o = f.o(absolutePath);
            if (o.f1176b && (d2 = d(com.estrongs.android.util.ak.aY(o.f1175a), i)) != null && d2.d != null) {
                aeVar = d2;
                str = com.estrongs.android.util.ak.d(o.f1175a);
                for (i2 = 0; i2 < aeVar.d.size(); i2++) {
                    ae aeVar2 = aeVar.d.get(i2);
                    if (aeVar2.f1178b && aeVar2.f1177a.equals(str)) {
                        return true;
                    }
                }
                return false;
            }
        }
        str = name;
        while (i2 < aeVar.d.size()) {
        }
        return false;
    }

    private boolean a(InputStream inputStream) {
        return inputStream.read() != 48;
    }

    public static String[] a(af[] afVarArr) {
        String[] strArr = new String[afVarArr.length];
        for (int i = 0; i < afVarArr.length; i++) {
            strArr[i] = e(afVarArr[i].f1180b);
        }
        return strArr;
    }

    private int b(InputStream inputStream) {
        byte[] bArr = new byte[512];
        int i = 0;
        while (true) {
            bArr[i] = (byte) (inputStream.read() & 255);
            if (bArr[i] == 32) {
                bArr[i] = 0;
                try {
                    return Integer.parseInt(new String(bArr, 0, i));
                } catch (Exception e2) {
                    return 0;
                }
            }
            i++;
        }
    }

    public static void b() {
        ArrayList arrayList = new ArrayList();
        synchronized (f) {
            f.a(com.estrongs.android.pop.m.h, arrayList);
        }
        if (arrayList.size() > 0) {
            new Thread(new ac(arrayList)).start();
        }
    }

    public static void b(String str) {
        b(str, (List<String>) null);
    }

    public static void b(String str, List<String> list) {
        synchronized (f) {
            f.a(str, list, true);
        }
    }

    public static boolean b(String str, int i) {
        synchronized (f1171b) {
            if (f1171b.size() == 0) {
                return false;
            }
            String str2 = null;
            for (ah ahVar : f1171b) {
                if (i == ahVar.f1184b) {
                    if (str2 == null) {
                        str2 = a(str);
                    }
                    if (str2.startsWith(ahVar.f1183a)) {
                        return true;
                    }
                }
                str2 = str2;
            }
            return false;
        }
    }

    public static void c(String str) {
        synchronized (f) {
            new File(str).delete();
            try {
                OutputStream f2 = com.estrongs.fs.impl.local.d.f(str);
                aa aaVar = f;
                aa aaVar2 = f;
                aaVar2.getClass();
                aaVar.a((ae) null, f2, new ai(aaVar2, true, 0));
                f2.flush();
                f2.close();
            } catch (Exception e2) {
            }
        }
    }

    public static void c(String str, int i) {
        synchronized (f1171b) {
            if (f1171b.size() == 0) {
                return;
            }
            String a2 = a(str);
            ArrayList arrayList = new ArrayList();
            for (ah ahVar : f1171b) {
                if (ahVar.f1184b == i && ahVar.f1183a.length() - 1 > a2.length() && ahVar.f1183a.startsWith(a2)) {
                    arrayList.add(ahVar);
                }
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                f1171b.remove(arrayList.get(i2));
            }
        }
    }

    public static af[] c() {
        af[] b2;
        if (!e) {
            d("/sdcard/.estrongs/hide2.txt");
            e = true;
        }
        synchronized (f) {
            b2 = f.b(com.estrongs.android.pop.m.h);
        }
        return b2;
    }

    public static ae d(String str, int i) {
        ae a2;
        synchronized (f) {
            a2 = f.a(str, false, i);
        }
        return a2;
    }

    public static void d(String str) {
        synchronized (f) {
            try {
                InputStream a2 = com.estrongs.fs.impl.local.d.a((Context) null, str);
                if (a2 != null) {
                    aa aaVar = f;
                    aa aaVar2 = f;
                    aaVar2.getClass();
                    aaVar.a((ae) null, a2, new ag(aaVar2, false, 0));
                    a2.close();
                }
                if (com.estrongs.android.pop.m.h != null) {
                    for (String str2 : com.estrongs.android.pop.m.h) {
                        f.a(str2, new File(str2).isDirectory(), null, false);
                        aa aaVar3 = f;
                        d = true;
                    }
                }
            } catch (Exception e2) {
                if (com.estrongs.android.pop.m.h != null) {
                    for (String str3 : com.estrongs.android.pop.m.h) {
                        f.a(str3, new File(str3).isDirectory(), null, false);
                        aa aaVar4 = f;
                        d = true;
                    }
                }
            } catch (Throwable th) {
                if (com.estrongs.android.pop.m.h == null) {
                    throw th;
                }
                for (String str4 : com.estrongs.android.pop.m.h) {
                    f.a(str4, new File(str4).isDirectory(), null, false);
                    aa aaVar5 = f;
                    d = true;
                }
                throw th;
            }
        }
    }

    public static String e(String str) {
        try {
            int indexOf = str.indexOf(47);
            int indexOf2 = str.indexOf(47, indexOf + 1);
            String substring = str.substring(indexOf2);
            String substring2 = str.substring(indexOf + 1, indexOf2);
            return substring2.equals("local") ? substring : substring2 + ":/" + substring;
        } catch (Exception e2) {
            return null;
        }
    }

    private String h(String str) {
        if (str.startsWith("/")) {
            return "local";
        }
        int indexOf = str.indexOf("://");
        if (indexOf >= 0) {
            return str.substring(0, indexOf);
        }
        return null;
    }

    private String i(String str) {
        if (str.startsWith("/")) {
            return str.substring(1);
        }
        int indexOf = str.indexOf("://");
        if (indexOf >= 0) {
            return str.substring(indexOf + 3);
        }
        return null;
    }

    private ae j(String str) {
        if (this.f1172a.d == null) {
            this.f1172a.d = new ArrayList<>();
        }
        for (int i = 0; i < this.f1172a.d.size(); i++) {
            ae aeVar = this.f1172a.d.get(i);
            if (aeVar.f1177a.equals(str)) {
                return aeVar;
            }
        }
        ae aeVar2 = new ae(str, false, true);
        this.f1172a.d.add(aeVar2);
        return aeVar2;
    }

    private boolean k(String str) {
        return new File(com.estrongs.android.util.ak.bp(str) + ".nomedia").exists();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean l(String str) {
        FileOutputStream fileOutputStream;
        boolean z = true;
        String bp = com.estrongs.android.util.ak.bp(str);
        File file = new File(bp + ".nomedia");
        ?? exists = file.exists();
        if (exists == 0) {
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(bp + ".nomedia");
                    try {
                        fileOutputStream.write("ES".getBytes());
                        exists = fileOutputStream;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                                exists = fileOutputStream;
                            } catch (IOException e2) {
                                e2.printStackTrace();
                                exists = e2;
                            }
                        }
                    } catch (Exception e3) {
                        e = e3;
                        e.printStackTrace();
                        file.delete();
                        z = false;
                        exists = fileOutputStream;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                                exists = fileOutputStream;
                            } catch (IOException e4) {
                                e4.printStackTrace();
                                exists = e4;
                            }
                        }
                        return z;
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream2 = exists;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e6) {
                e = e6;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                if (fileOutputStream2 != null) {
                }
                throw th;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m(String str) {
        FileInputStream fileInputStream;
        byte[] bArr;
        try {
            fileInputStream = new FileInputStream(str + ".nomedia");
            try {
                try {
                    bArr = new byte[2];
                    fileInputStream.read(bArr);
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            if (fileInputStream != null) {
            }
            throw th;
        }
        if (!new String(bArr).equals("ES")) {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            return false;
        }
        boolean delete = new File(str + ".nomedia").delete();
        if (fileInputStream == null) {
            return delete;
        }
        try {
            fileInputStream.close();
            return delete;
        } catch (IOException e7) {
            e7.printStackTrace();
            return delete;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n(String str) {
        if (com.estrongs.android.util.aw.e()) {
            com.estrongs.fs.impl.media.e.f(str);
            return;
        }
        com.estrongs.fs.impl.j.b.b().c(str);
        com.estrongs.fs.impl.p.b.b().c(str);
        com.estrongs.fs.impl.h.b.b().c(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00cf, code lost:
    
        r6.g.add(r7);
        r6.h.add(r2.substring(0, (r0 + r7.length()) + 1));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ad o(String str) {
        try {
            if (str.equals("/")) {
                return new ad(this, str, false);
            }
            for (int i = 0; i < this.g.size(); i++) {
                if (str.startsWith(this.g.get(i)) && (str.length() == this.g.get(i).length() || str.charAt(this.g.get(i).length()) == '/')) {
                    return new ad(this, str.replace(this.g.get(i), this.h.get(i)), true);
                }
            }
            if (str.endsWith("/")) {
                str = str.substring(0, str.length() - 1);
            }
            String canonicalPath = new File(str).getCanonicalPath();
            String substring = canonicalPath.endsWith("/") ? canonicalPath.substring(0, canonicalPath.length() - 1) : canonicalPath;
            if (str.equalsIgnoreCase(substring)) {
                return new ad(this, substring, false);
            }
            int length = str.length() - 1;
            int length2 = substring.length() - 1;
            while (length >= 0 && length2 >= 0 && str.charAt(length) == substring.charAt(length2)) {
                length--;
                length2--;
            }
            if (length2 < 0) {
                this.g.add(str.substring(0, length + substring.length() + 1));
                this.h.add(substring);
            } else {
                this.g.add(str.substring(0, length + 1));
                this.h.add(substring.substring(0, length2 + 1));
            }
            return new ad(this, substring, true);
        } catch (Exception e2) {
            return new ad(this, str, false);
        }
    }

    private String p(String str) {
        int lastIndexOf = str.lastIndexOf("@");
        if (lastIndexOf < 0) {
            return str;
        }
        String substring = str.substring(lastIndexOf);
        int indexOf = str.indexOf(58);
        if (indexOf < 0) {
            return str;
        }
        return str.substring(0, indexOf) + ":" + com.estrongs.android.util.aw.c(str.substring(indexOf + 1, lastIndexOf)) + substring;
    }

    private String q(String str) {
        int lastIndexOf = str.lastIndexOf("@");
        if (lastIndexOf < 0) {
            return str;
        }
        String substring = str.substring(lastIndexOf);
        int indexOf = str.indexOf(58);
        if (indexOf < 0) {
            return str;
        }
        return str.substring(0, indexOf) + ":" + com.estrongs.android.util.aw.d(str.substring(indexOf + 1, lastIndexOf)) + substring;
    }

    public ae a(String str, boolean z, int i) {
        String h;
        ae j;
        String[] split;
        if (str == null || str.length() == 0) {
            return null;
        }
        if (str.charAt(0) == '/') {
            str = o(str).f1175a;
        }
        if (b(str, i) || (h = h(str)) == null || (j = j(h)) == null) {
            return null;
        }
        if (str.equals("/") || com.estrongs.android.util.ak.aU(str)) {
            return j;
        }
        String i2 = i(str);
        if (i2 == null || (split = i2.split("/")) == null || split.length == 0) {
            return null;
        }
        int i3 = (split[0] == null || split[0].length() == 0) ? 1 : 0;
        ae j2 = j(h);
        int i4 = i3;
        ae aeVar = null;
        while (i4 < split.length) {
            if (j2.f1178b) {
                z = true;
            }
            if (j2.d == null) {
                if (z) {
                    return new ae("", true, true);
                }
                return null;
            }
            int size = j2.d.size();
            int i5 = 0;
            while (true) {
                if (i5 >= j2.d.size()) {
                    break;
                }
                if (split[i4].equals(j2.d.get(i5).f1177a)) {
                    j2 = j2.d.get(i5);
                    break;
                }
                i5++;
            }
            if (i5 >= size) {
                if (z) {
                    return new ae("", true, true);
                }
                return null;
            }
            i4++;
            aeVar = j2;
        }
        if (aeVar != null) {
            aeVar.e = z;
        } else if (z) {
            return new ae("", true, true);
        }
        return aeVar;
    }

    public void a(ae aeVar, InputStream inputStream, ag agVar) {
        if (aeVar == null) {
        }
        if (aeVar == null) {
            try {
                aeVar = this.f1172a;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        int b2 = b(inputStream);
        if (aeVar.equals(this.f1172a)) {
            if (agVar != null) {
                agVar.f1182b = 0;
            }
            if (b2 == -1) {
                b2 = b(inputStream);
                if (agVar != null) {
                    agVar.f1181a = true;
                }
            } else {
                d = true;
            }
        }
        String a2 = a(inputStream, b2);
        boolean a3 = a(inputStream);
        boolean a4 = a(inputStream);
        int b3 = b(inputStream);
        if (agVar != null && agVar.f1181a && agVar.f1182b == 2) {
            a2 = q(a2);
        }
        aeVar.f1177a = a2;
        aeVar.f1178b = a3;
        aeVar.c = a4;
        if (b3 > 0 && aeVar.d == null) {
            aeVar.d = new ArrayList<>();
        }
        if (agVar != null) {
            agVar.f1182b++;
        }
        for (int i = 0; i < b3; i++) {
            ae aeVar2 = new ae("", false, a4);
            a(aeVar2, inputStream, agVar);
            aeVar.d.add(aeVar2);
        }
        if (agVar != null) {
            agVar.f1182b--;
        }
    }

    public void a(ae aeVar, OutputStream outputStream, ai aiVar) {
        if (aeVar == null) {
            try {
                aeVar = this.f1172a;
                if (aiVar != null) {
                    aiVar.f1186b = 0;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (aeVar.equals(this.f1172a)) {
            outputStream.write("-1 ".getBytes());
        }
        int size = aeVar.d == null ? 0 : aeVar.d.size();
        String str = aeVar.f1177a;
        if (aiVar != null && aiVar.f1185a && aiVar.f1186b == 2) {
            str = p(str);
        }
        outputStream.write((str.getBytes().length + " " + str + "" + (aeVar.f1178b ? "1" : "0") + (aeVar.c ? "1" : "0") + size + " ").getBytes());
        if (aiVar != null) {
            aiVar.f1186b++;
        }
        for (int i = 0; i < size; i++) {
            a(aeVar.d.get(i), outputStream, aiVar);
        }
        if (aiVar != null) {
            aiVar.f1186b--;
        }
    }

    public void a(String str, List<String> list) {
        if (str == null || str.equals("/") || com.estrongs.android.util.ak.aU(str) || !str.startsWith("/") || !new File(str).isDirectory()) {
            return;
        }
        if (!str.endsWith("/")) {
            str = str + "/";
        }
        File file = new File(str + ".nomedia");
        if (file.exists() && file.length() == com.estrongs.android.pop.a.h) {
            if (list != null) {
                list.add(str);
                return;
            }
            if (m(str)) {
                String str2 = str.substring(0, str.length() - 1) + "_" + System.currentTimeMillis();
                if (new File(str).renameTo(new File(str2))) {
                    n(str);
                    new File(str2).renameTo(new File(str));
                }
            }
        }
    }

    public void a(String str, List<String> list, boolean z) {
        if (z) {
            a(e(str), list);
        }
        String[] split = str.split("/");
        ae aeVar = this.f1172a;
        for (int i = 1; i < split.length && aeVar.d != null; i++) {
            int size = aeVar.d.size();
            int i2 = 0;
            while (true) {
                if (i2 >= aeVar.d.size()) {
                    break;
                }
                ae aeVar2 = aeVar.d.get(i2);
                if (!split[i].equals(aeVar2.f1177a)) {
                    i2++;
                } else if (i == split.length - 1) {
                    if (aeVar2.d == null || aeVar2.d.size() == 0) {
                        aeVar.d.remove(i2);
                    } else {
                        aeVar2.f1178b = false;
                    }
                    d = true;
                } else {
                    aeVar = aeVar.d.get(i2);
                }
            }
            if (i2 >= size) {
                return;
            }
        }
    }

    public void a(String str, boolean z, List<String> list) {
        if (str == null || str.equals("/") || com.estrongs.android.util.ak.aU(str) || !str.startsWith("/") || !z) {
            return;
        }
        if (!str.endsWith("/")) {
            str = str + "/";
        }
        if (k(str) || list == null) {
            return;
        }
        list.add(str);
    }

    public void a(String str, boolean z, List<String> list, boolean z2) {
        boolean z3;
        String str2;
        String str3;
        String str4;
        String i;
        int i2;
        ae aeVar;
        if (str == null || str.length() == 0 || str.equals("/") || com.estrongs.android.util.ak.aU(str)) {
            return;
        }
        if (str.charAt(0) == '/') {
            ad o = o(str);
            str2 = o.f1175a;
            z3 = o.f1176b;
        } else {
            z3 = false;
            str2 = str;
        }
        if (z2) {
            a(str2, z, list);
        }
        int i3 = 0;
        String str5 = str;
        while (i3 < 2) {
            if (i3 == 1) {
                try {
                    if ("Market".equalsIgnoreCase("Market")) {
                        return;
                    }
                    if (str5.endsWith("/")) {
                        str5 = str5.substring(0, str5.length() - 1);
                    }
                    if (!z3 || com.estrongs.android.util.ak.aZ(str5)) {
                        return;
                    }
                    str3 = str5;
                    str4 = str5;
                } catch (Exception e2) {
                    return;
                }
            } else {
                str4 = str2;
                str3 = str5;
            }
            String h = h(str4);
            if (h == null || (i = i(str4)) == null) {
                return;
            }
            String[] split = i.split("/");
            int i4 = (split[0] == null || split[0].length() == 0) ? 1 : 0;
            ae j = j(h);
            while (true) {
                int i5 = i4;
                if (i5 < split.length) {
                    if (j.d == null) {
                        j.d = new ArrayList<>();
                    }
                    int size = j.d.size();
                    int i6 = 0;
                    while (true) {
                        i2 = i6;
                        if (i2 >= j.d.size()) {
                            aeVar = j;
                            break;
                        }
                        if (split[i5].equals(j.d.get(i2).f1177a)) {
                            ae aeVar2 = j.d.get(i2);
                            if (i5 == split.length - 1) {
                                aeVar2.f1178b = true;
                                d = true;
                                aeVar = aeVar2;
                            } else {
                                aeVar = aeVar2;
                            }
                        } else {
                            i6 = i2 + 1;
                        }
                    }
                    if (i2 >= size) {
                        ae aeVar3 = new ae(split[i5], i5 == split.length + (-1), i5 == split.length + (-1) ? z : true);
                        aeVar.d.add(aeVar3);
                        d = true;
                        j = aeVar3;
                    } else {
                        j = aeVar;
                    }
                    i4 = i5 + 1;
                }
            }
            i3++;
            str5 = str3;
            str2 = str4;
        }
    }

    public void a(List<String> list, List<String> list2) {
        for (af afVar : b(list)) {
            b(afVar.f1180b, list2);
        }
    }

    public af[] a(ArrayList<af> arrayList, List<String> list) {
        boolean z;
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            af afVar = arrayList.get(i);
            if (!afVar.f1180b.startsWith("root/local") || com.estrongs.android.util.ak.ao(afVar.f1180b) || new File(afVar.c).exists()) {
                if (list != null) {
                    Iterator<String> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        String next = it.next();
                        if (next.endsWith("/")) {
                            next = next.substring(0, next.length() - 1);
                        }
                        if (o(next).f1175a.equals(afVar.c)) {
                            z = true;
                            break;
                        }
                    }
                    if (z) {
                    }
                }
                arrayList2.add(afVar);
            } else {
                b(afVar.f1180b);
            }
        }
        if (arrayList.size() != arrayList2.size()) {
            c("/sdcard/.estrongs/hide2.txt");
        }
        af[] afVarArr = new af[arrayList2.size()];
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            afVarArr[i2] = (af) arrayList2.get(i2);
        }
        return afVarArr;
    }

    public af[] b(List<String> list) {
        ArrayList<af> arrayList = new ArrayList<>();
        a(this.f1172a, arrayList, null, null, 0);
        return a(arrayList, list);
    }
}
