package com.estrongs.old.fs.impl.sftp;

import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.g;
import com.estrongs.fs.h;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.SftpATTRS;
import com.jcraft.jsch.SftpException;
import com.jcraft.jsch.SftpProgressMonitor;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;

/* loaded from: classes.dex */
public class OldSFtpFileSystem implements com.estrongs.old.fs.a {

    /* renamed from: b, reason: collision with root package name */
    private static JSch f3240b = new JSch();
    private static HashMap<String, ArrayList<d>> c = new HashMap<>();
    private static OldSFtpFileSystem d = null;

    /* renamed from: a, reason: collision with root package name */
    private HashMap<String, TypedMap> f3241a = new HashMap<>();

    /* loaded from: classes.dex */
    public class SFTPFileWrapper extends File {
        private static final long serialVersionUID = 1;
        SftpATTRS attr;
        ChannelSftp.LsEntry sftpFile;

        SFTPFileWrapper(ChannelSftp.LsEntry lsEntry) {
            super("/sdcard");
            this.attr = null;
            this.sftpFile = lsEntry;
            this.attr = lsEntry.b();
        }

        @Override // java.io.File
        public String getName() {
            return this.sftpFile.a();
        }

        @Override // java.io.File
        public boolean isDirectory() {
            return this.attr.d();
        }

        @Override // java.io.File
        public boolean isFile() {
            return !this.attr.d();
        }

        @Override // java.io.File
        public long lastModified() {
            return this.attr.l() * 1000;
        }

        @Override // java.io.File
        public long length() {
            return this.attr.g();
        }
    }

    public static OldSFtpFileSystem a() {
        if (d == null) {
            d = new OldSFtpFileSystem();
        }
        return d;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:55:0x019f
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    private com.estrongs.old.fs.impl.sftp.d a(java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.estrongs.old.fs.impl.sftp.OldSFtpFileSystem.a(java.lang.String, java.lang.String, java.lang.String, java.lang.String):com.estrongs.old.fs.impl.sftp.d");
    }

    private boolean a(d dVar, String str) {
        boolean z;
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        try {
            dVar.f3248b.b(str);
            Vector d2 = dVar.f3248b.d(".");
            if (d2 != null) {
                Iterator it = d2.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (currentTask != null && currentTask.taskStopped()) {
                        return false;
                    }
                    ChannelSftp.LsEntry lsEntry = (ChannelSftp.LsEntry) next;
                    String a2 = lsEntry.a();
                    SftpATTRS b2 = lsEntry.b();
                    if (a2 == null || !a2.equals(".")) {
                        if (a2.equals("..")) {
                            continue;
                        } else {
                            String str2 = String.valueOf(str) + a2;
                            if (b2.d()) {
                                z = a(dVar, String.valueOf(str2) + "/");
                            } else {
                                dVar.f3248b.f(str2);
                                if (currentTask != null) {
                                    currentTask.sendMessage(2, Long.valueOf(b2.g()), "sftp://" + str2);
                                    currentTask.sendMessage(1, 1L, "sftp://" + str2);
                                }
                                z = true;
                            }
                            if (!z) {
                                return false;
                            }
                        }
                    }
                }
            }
            if (d2 != null) {
                dVar.f3248b.g(str);
                currentTask.sendMessage(1, 1L, "sftp://" + str);
            }
            return true;
        } catch (SftpException e) {
            throw new FileSystemException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, String str2, String str3, d dVar) {
        synchronized (c) {
            ArrayList<d> arrayList = c.get(String.valueOf(str) + "@" + str2 + "@" + str3);
            if (arrayList != null) {
                synchronized (arrayList) {
                    arrayList.add(dVar);
                }
            } else {
                ArrayList<d> arrayList2 = new ArrayList<>();
                arrayList2.add(dVar);
                c.put(String.valueOf(str) + "@" + str2 + "@" + str3, arrayList2);
            }
        }
    }

    private static void l(String str) {
    }

    @Override // com.estrongs.old.fs.a
    public InputStream a(String str, long j) {
        try {
            String x = ak.x(str);
            String y = ak.y(str);
            String a2 = ak.a(str);
            String v = ak.v(str);
            if (v == null) {
                v = "22";
            }
            d a3 = a(x, y, a2, v);
            if (a3 == null) {
                return null;
            }
            return new b(a3.f3248b.a(ak.i(str), (SftpProgressMonitor) null, j), a3, x, a2, v);
        } catch (Exception e) {
            throw new FileSystemException(e);
        }
    }

    @Override // com.estrongs.old.fs.a
    public List<g> a(String str, h hVar) {
        d dVar;
        SftpATTRS sftpATTRS;
        d dVar2 = null;
        LinkedList linkedList = new LinkedList();
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        if (currentTask != null && currentTask.taskStopped()) {
            return linkedList;
        }
        try {
            try {
                String x = ak.x(str);
                String y = ak.y(str);
                String a2 = ak.a(str);
                String v = ak.v(str);
                String str2 = v == null ? "22" : v;
                d a3 = a(x, y, a2, str2);
                if (a3 == null) {
                    if (a3 != null) {
                    }
                    return null;
                }
                try {
                    String i = ak.i(str);
                    a3.f3248b.b(i);
                    Vector d2 = a3.f3248b.d(".");
                    TypedMap typedMap = this.f3241a.get(ak.h(str));
                    if (com.estrongs.android.util.g.f2695a[0].equals(typedMap != null ? typedMap.getString("encode", "UTF-8") : "UTF-8") && !"UTF-8".equals(a3.f3248b.q())) {
                        typedMap.put("detectedEncoding", a3.f3248b.q());
                    }
                    if (d2 != null) {
                        Iterator it = d2.iterator();
                        String str3 = str;
                        while (it.hasNext()) {
                            Object next = it.next();
                            if (currentTask != null && currentTask.taskStopped()) {
                                if (a3 != null) {
                                }
                                return linkedList;
                            }
                            if (next != null) {
                                ChannelSftp.LsEntry lsEntry = (ChannelSftp.LsEntry) next;
                                String str4 = !str3.endsWith("/") ? String.valueOf(str3) + "/" : str3;
                                String a4 = lsEntry.a();
                                if (!a4.equals(".")) {
                                    if (a4.equals("..")) {
                                        str3 = str4;
                                    } else {
                                        SftpATTRS b2 = lsEntry.b();
                                        String str5 = null;
                                        if (b2.e()) {
                                            try {
                                                String str6 = i.endsWith("/") ? String.valueOf(i) + a4 : String.valueOf(i) + "/" + a4;
                                                SftpATTRS i2 = a3.f3248b.i(str6);
                                                str5 = a3.f3248b.e(str6);
                                                sftpATTRS = i2;
                                            } catch (Exception e) {
                                                sftpATTRS = b2;
                                            }
                                        } else {
                                            sftpATTRS = b2;
                                        }
                                        e eVar = new e(sftpATTRS, String.valueOf(str4) + ((!sftpATTRS.d() || a4.endsWith("/")) ? a4 : String.valueOf(a4) + "/"), str5);
                                        if (hVar != null && hVar.a(eVar)) {
                                            linkedList.add(eVar);
                                        }
                                    }
                                }
                                str3 = str4;
                            }
                        }
                    }
                    if (a3 != null) {
                        b(x, a2, str2, a3);
                    }
                    return linkedList;
                } catch (SftpException e2) {
                    e = e2;
                    dVar = a3;
                    try {
                        throw new FileSystemException(e);
                    } catch (Throwable th) {
                        th = th;
                        dVar2 = dVar;
                        if (dVar2 == null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (dVar2 == null) {
                }
                throw th;
            }
        } catch (SftpException e3) {
            e = e3;
            dVar = null;
        }
    }

    @Override // com.estrongs.old.fs.a
    public void a(TypedMap typedMap) {
        TypedMap typedMap2 = this.f3241a.get(ak.h(typedMap.getString("server")));
        if (typedMap2 != null && typedMap2.getString("detectedEncoding") != null) {
            typedMap.put("detectedEncoding", typedMap2.getString("detectedEncoding"));
        }
        this.f3241a.put(ak.h(typedMap.getString("server")), typedMap);
    }

    @Override // com.estrongs.old.fs.a
    public void a(String str, g gVar) {
        d dVar = null;
        try {
            try {
                String x = ak.x(str);
                String y = ak.y(str);
                String a2 = ak.a(str);
                String v = ak.v(str);
                if (v == null) {
                    v = "22";
                }
                dVar = a(x, y, a2, v);
                if (dVar == null) {
                    if (dVar != null) {
                    }
                    return;
                }
                dVar.f3248b.a(ak.i(str), (int) (gVar.lastModified() / 1000));
                if (dVar != null) {
                    b(x, a2, v, dVar);
                }
            } catch (Exception e) {
                throw new FileSystemException(e);
            }
        } catch (Throwable th) {
            if (dVar != null) {
            }
            throw th;
        }
    }

    @Override // com.estrongs.old.fs.a
    public boolean a(String str) {
        try {
            try {
                String x = ak.x(str);
                String y = ak.y(str);
                String a2 = ak.a(str);
                String v = ak.v(str);
                if (v == null) {
                    v = "22";
                }
                d a3 = a(x, y, a2, v);
                if (a3 == null) {
                    if (a3 != null) {
                    }
                    return false;
                }
                String i = ak.i(str);
                if (str.endsWith("/")) {
                    if (i.endsWith("/")) {
                        i = i.substring(0, i.length() - 1);
                    }
                    a3.f3248b.h(i);
                } else {
                    a3.f3248b.c(i).close();
                }
                if (a3 != null) {
                    b(x, a2, v, a3);
                }
                return true;
            } catch (Exception e) {
                throw new FileSystemException(e);
            }
        } catch (Throwable th) {
            if (0 != 0) {
            }
            throw th;
        }
    }

    @Override // com.estrongs.old.fs.a
    public boolean a(String str, String str2) {
        d dVar = null;
        try {
            try {
                String x = ak.x(str);
                String y = ak.y(str);
                String a2 = ak.a(str);
                String v = ak.v(str);
                if (v == null) {
                    v = "22";
                }
                dVar = a(x, y, a2, v);
                if (dVar == null) {
                    if (dVar != null) {
                    }
                    return false;
                }
                dVar.f3248b.a(ak.i(str), ak.i(str2));
                if (dVar != null) {
                    b(x, a2, v, dVar);
                }
                return true;
            } catch (Exception e) {
                throw new FileSystemException(e);
            }
        } catch (Throwable th) {
            if (dVar != null) {
            }
            throw th;
        }
    }

    @Override // com.estrongs.old.fs.a
    public boolean b(String str) {
        return g(str) != null;
    }

    @Override // com.estrongs.old.fs.a
    public boolean b(String str, String str2) {
        return a(str, str2);
    }

    @Override // com.estrongs.old.fs.a
    public boolean c(String str) {
        boolean z = false;
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        d dVar = null;
        try {
            try {
                String x = ak.x(str);
                String y = ak.y(str);
                String a2 = ak.a(str);
                String v = ak.v(str);
                if (v == null) {
                    v = "22";
                }
                dVar = a(x, y, a2, v);
                if (dVar != null && (currentTask == null || !currentTask.taskStopped())) {
                    String i = ak.i(str);
                    SftpATTRS i2 = dVar.f3248b.i(i);
                    if (i2.d()) {
                        z = a(dVar, i);
                    } else {
                        if (currentTask != null) {
                            currentTask.sendMessage(1, 1L, "sftp://" + i);
                            currentTask.sendMessage(2, Long.valueOf(i2.g()), "sftp://" + i);
                        }
                        dVar.f3248b.f(i);
                        z = true;
                    }
                    l(ak.aY(str));
                    if (dVar != null) {
                        b(x, a2, v, dVar);
                    }
                } else if (dVar != null) {
                }
                return z;
            } catch (Exception e) {
                throw new FileSystemException(e);
            }
        } catch (Throwable th) {
            if (dVar != null) {
            }
            throw th;
        }
    }

    @Override // com.estrongs.old.fs.a
    public boolean d(String str) {
        d dVar = null;
        try {
            try {
                String x = ak.x(str);
                String y = ak.y(str);
                String a2 = ak.a(str);
                String v = ak.v(str);
                if (v == null) {
                    v = "22";
                }
                dVar = a(x, y, a2, v);
                if (dVar == null) {
                    if (dVar != null) {
                    }
                    return false;
                }
                dVar.f3248b.h(ak.i(str));
                if (dVar != null) {
                    b(x, a2, v, dVar);
                }
                return true;
            } catch (Exception e) {
                throw new FileSystemException(e);
            }
        } catch (Throwable th) {
            if (dVar != null) {
            }
            throw th;
        }
    }

    @Override // com.estrongs.old.fs.a
    public long e(String str) {
        com.estrongs.fs.c g = g(str);
        if (g == null) {
            return -1L;
        }
        return g.e;
    }

    @Override // com.estrongs.old.fs.a
    public boolean f(String str) {
        com.estrongs.fs.c g = g(str);
        if (g == null) {
            return false;
        }
        return g.d;
    }

    @Override // com.estrongs.old.fs.a
    public com.estrongs.fs.c g(String str) {
        Throwable th;
        d dVar;
        try {
            try {
                String x = ak.x(str);
                String y = ak.y(str);
                String a2 = ak.a(str);
                String v = ak.v(str);
                String str2 = v == null ? "22" : v;
                dVar = a(x, y, a2, str2);
                if (dVar == null) {
                    if (dVar != null) {
                    }
                    return null;
                }
                try {
                    SftpATTRS i = dVar.f3248b.i(ak.i(str));
                    com.estrongs.fs.c cVar = new com.estrongs.fs.c(str);
                    cVar.d = i.d();
                    if (!cVar.d) {
                        cVar.c = "File";
                        cVar.e = i.g();
                    }
                    cVar.j = i.l();
                    cVar.j *= 1000;
                    cVar.h = 0L;
                    cVar.k = (i.j() & 256) != 0;
                    cVar.l = (i.j() & 128) != 0;
                    String d2 = ak.d(str);
                    String a3 = i.a();
                    if (a3 != null) {
                        a3 = a3.substring(1);
                    }
                    cVar.p = a3;
                    cVar.m = d2 == null || d2.startsWith(".");
                    if (dVar != null) {
                        b(x, a2, str2, dVar);
                    }
                    return cVar;
                } catch (SftpException e) {
                    e = e;
                    if (e.id == 2) {
                        return dVar != null ? null : null;
                    }
                    throw new FileSystemException(e);
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 == 0) {
                }
                throw th;
            }
        } catch (SftpException e2) {
            e = e2;
            dVar = null;
        } catch (Throwable th3) {
            th = th3;
            if (0 == 0) {
            }
            throw th;
        }
    }

    @Override // com.estrongs.old.fs.a
    public OutputStream i(String str) {
        try {
            String x = ak.x(str);
            String y = ak.y(str);
            String a2 = ak.a(str);
            String v = ak.v(str);
            if (v == null) {
                v = "22";
            }
            d a3 = a(x, y, a2, v);
            if (a3 == null) {
                return null;
            }
            return new c(a3.f3248b.c(ak.i(str)), a3, x, a2, v);
        } catch (Exception e) {
            throw new FileSystemException(e);
        }
    }

    public String j(String str) {
        Throwable th;
        Exception e;
        String str2 = null;
        String str3 = "22";
        try {
            try {
                String x = ak.x(str);
                String y = ak.y(str);
                String a2 = ak.a(str);
                String v = ak.v(str);
                String str4 = v == null ? "22" : v;
                d a3 = a(x, y, a2, str4);
                if (a3 != null) {
                    try {
                        str2 = a3.f3248b.o();
                        if (a3 != null) {
                            b(x, a2, str4, a3);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        throw new FileSystemException(e);
                    }
                } else if (a3 != null) {
                }
                return str2;
            } catch (Throwable th2) {
                th = th2;
                if (str3 == null) {
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
        } catch (Throwable th3) {
            str3 = null;
            th = th3;
            if (str3 == null) {
            }
            throw th;
        }
    }

    @Override // com.estrongs.old.fs.a
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public e h(String str) {
        String str2;
        String str3;
        d dVar;
        Throwable th;
        String str4;
        String str5;
        String str6;
        d dVar2;
        boolean z;
        String str7;
        String str8;
        SftpATTRS sftpATTRS;
        String str9 = "22";
        boolean z2 = false;
        try {
            str3 = ak.x(str);
            try {
                String y = ak.y(str);
                str2 = ak.a(str);
                try {
                    str9 = ak.v(str);
                    str4 = str9 == null ? "22" : str9;
                    try {
                        dVar = a(str3, y, str2, str4);
                        if (dVar == null) {
                            if (dVar != null) {
                            }
                            return null;
                        }
                        try {
                            try {
                                String i = ak.i(str);
                                SftpATTRS i2 = dVar.f3248b.i(i);
                                if (i2 == null) {
                                    return dVar != null ? null : null;
                                }
                                if (i2.e()) {
                                    try {
                                        i2 = dVar.f3248b.i(i);
                                        str8 = dVar.f3248b.e(i);
                                        sftpATTRS = i2;
                                    } catch (Exception e) {
                                        str8 = null;
                                        sftpATTRS = i2;
                                    }
                                } else {
                                    str8 = null;
                                    sftpATTRS = i2;
                                }
                                z2 = true;
                                e eVar = new e(sftpATTRS, str, str8);
                                if (dVar != null) {
                                    b(str3, str2, str4, dVar);
                                }
                                return eVar;
                            } catch (Throwable th2) {
                                th = th2;
                                if (dVar != null && z2) {
                                    b(str3, str2, str4, dVar);
                                }
                                throw th;
                            }
                        } catch (Exception e2) {
                            z = z2;
                            str7 = str4;
                            str5 = str2;
                            str6 = str3;
                            dVar2 = dVar;
                            if (dVar2 == null || !z) {
                                return null;
                            }
                            b(str6, str5, str7, dVar2);
                            return null;
                        }
                    } catch (Exception e3) {
                        z = false;
                        str7 = str4;
                        str5 = str2;
                        str6 = str3;
                        dVar2 = null;
                    } catch (Throwable th3) {
                        dVar = null;
                        th = th3;
                    }
                } catch (Exception e4) {
                    str5 = str2;
                    str6 = str3;
                    dVar2 = null;
                    String str10 = str9;
                    z = false;
                    str7 = str10;
                } catch (Throwable th4) {
                    dVar = null;
                    th = th4;
                    str4 = str9;
                }
            } catch (Exception e5) {
                str5 = null;
                str6 = str3;
                dVar2 = null;
                z = false;
                str7 = "22";
            } catch (Throwable th5) {
                str2 = null;
                dVar = null;
                th = th5;
                str4 = "22";
            }
        } catch (Exception e6) {
            str5 = null;
            str6 = null;
            dVar2 = null;
            z = false;
            str7 = "22";
        } catch (Throwable th6) {
            str2 = null;
            str3 = null;
            dVar = null;
            th = th6;
            str4 = "22";
        }
    }
}
