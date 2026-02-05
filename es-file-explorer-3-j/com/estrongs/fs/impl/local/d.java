package com.estrongs.fs.impl.local;

import android.content.Context;
import android.net.LocalSocket;
import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.bt;
import com.estrongs.android.util.aj;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class d {
    public static InputStream a(Context context, String str) {
        return a(context, str, false);
    }

    public static InputStream a(Context context, String str, long j) {
        String str2;
        if (j == 0) {
            return a(context, str);
        }
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        try {
            if (!ak.aZ(str) && !ak.ba(str) && h.a(context, false)) {
                return h.j(str);
            }
            if (str.startsWith("file://")) {
                str2 = new File(new URI(str)).getAbsolutePath();
            } else {
                if (str.startsWith("content://")) {
                    return null;
                }
                str2 = str;
            }
            File file = new File(str2);
            if (!file.exists()) {
                if (currentTask == null) {
                    return null;
                }
                currentTask.setTaskResult(2, new com.estrongs.a.q(str, (Exception) null));
                return null;
            }
            if (j < file.length()) {
                return new a(file, j);
            }
            if (currentTask == null) {
                return null;
            }
            currentTask.setTaskResult(7, new com.estrongs.a.q("offset > filesize", (Exception) null));
            return null;
        } catch (Exception e) {
            if (currentTask == null) {
                return null;
            }
            currentTask.setTaskResult(7, new com.estrongs.a.q(e.toString(), e));
            return null;
        }
    }

    public static InputStream a(Context context, String str, boolean z) {
        InputStream j;
        if (!z) {
            try {
                if (!ak.aZ(str) && !ak.ba(str) && h.a(context, false)) {
                    j = h.j(str);
                    return j;
                }
            } catch (Exception e) {
                throw new FileSystemException(e.getMessage());
            }
        }
        j = str.startsWith("file://") ? new FileInputStream(new File(new URI(str))) : str.startsWith("content://") ? context.getContentResolver().openInputStream(Uri.parse(str)) : new FileInputStream(str);
        return j;
    }

    public static OutputStream a(String str, long j) {
        c cVar = null;
        if (j == 0) {
            return f(str);
        }
        try {
            File file = new File(str);
            com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
            if (file.exists()) {
                if (j <= file.length()) {
                    cVar = new c(file, j);
                } else if (currentTask != null) {
                    currentTask.setTaskResult(7, new com.estrongs.a.q("offset > filesize", (Exception) null));
                }
            } else if (currentTask != null) {
                currentTask.setTaskResult(2, new com.estrongs.a.q(str, (Exception) null));
            }
            return cVar;
        } catch (Exception e) {
            throw new FileSystemException(e);
        }
    }

    public static List<com.estrongs.fs.g> a(String str, com.estrongs.fs.h hVar, com.estrongs.a.b.l<String> lVar) {
        boolean aZ = ak.aZ(str);
        if (!aZ && h.a((Context) FexApplication.a(), false)) {
            return s.a(FexApplication.a()).a(str);
        }
        File file = new File(str);
        if (!file.exists() || !file.isDirectory()) {
            return null;
        }
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        File[] listFiles = file.listFiles();
        if (currentTask != null && listFiles != null) {
            currentTask.sendMessage(6, Long.valueOf(listFiles.length));
        }
        LinkedList linkedList = new LinkedList();
        LocalSocket a2 = !aZ ? com.estrongs.android.e.c.a() : null;
        if (listFiles == null) {
            return linkedList;
        }
        for (File file2 : listFiles) {
            if (currentTask != null && currentTask.taskStopped()) {
                return null;
            }
            if (file2 != null) {
                if (currentTask != null) {
                    currentTask.sendMessage(7, 1L);
                }
                b bVar = new b(a2, file2);
                if (hVar.a(bVar) && !"PCS_DRIVE_Js1a7M5e_9yAcTvFX".equals(file2.getName())) {
                    linkedList.add(bVar);
                    if (currentTask != null) {
                        currentTask.sendMessage(11, bVar);
                    }
                }
                lVar.a(bVar.getAbsolutePath(), new long[0]);
                if (lVar.a()) {
                    break;
                }
            }
        }
        if (a2 == null) {
            return linkedList;
        }
        try {
            a2.close();
            return linkedList;
        } catch (Exception e) {
            return linkedList;
        }
    }

    public static void a(File file) {
        try {
            Class[] clsArr = {Boolean.TYPE, Boolean.TYPE};
            Object[] objArr = {true, false};
            aj ajVar = new aj(file);
            ajVar.a("setReadable", clsArr, objArr);
            ajVar.a("setWritable", clsArr, objArr);
            ajVar.a("setExecutable", clsArr, objArr);
        } catch (Exception e) {
        }
    }

    public static void a(String str, com.estrongs.fs.g gVar) {
        if (ak.aZ(str) || !h.a((Context) null, false)) {
            new File(str).setLastModified(gVar.lastModified());
        } else {
            h.a(str, gVar);
        }
    }

    public static boolean a(Context context, String str, com.estrongs.a.b.p pVar) {
        if (pVar == null) {
            pVar = com.estrongs.a.b.p.f215b;
        }
        boolean aZ = ak.aZ(str);
        com.estrongs.a.a.getCurrentTask();
        if (!aZ && h.a(context, false)) {
            pVar.a(str, new long[0]);
            return h.c(str);
        }
        if (!str.startsWith("file:///")) {
            return a(new File(str), pVar);
        }
        new File(URI.create(str)).delete();
        return true;
    }

    private static boolean a(File file, com.estrongs.a.b.p pVar) {
        long length;
        boolean a2;
        if (pVar.a()) {
            return false;
        }
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        if (currentTask != null && currentTask.taskStopped()) {
            return false;
        }
        if ((currentTask instanceof com.estrongs.fs.b.o) && ((com.estrongs.fs.b.o) currentTask).j != null && ((com.estrongs.fs.b.o) currentTask).j.contains(file.getAbsolutePath())) {
            return true;
        }
        String absolutePath = currentTask != null ? file.getAbsolutePath() : null;
        if (!file.isDirectory()) {
            pVar.a(file.getName(), new long[0]);
            length = currentTask != null ? file.length() : 0L;
            boolean a3 = file.exists() ? currentTask instanceof com.estrongs.fs.b.o ? ((com.estrongs.fs.b.o) currentTask).a(file) : file.delete() : true;
            if (a3 && ak.aZ(file.getAbsolutePath())) {
                if (currentTask instanceof com.estrongs.fs.b.o) {
                    ((com.estrongs.fs.b.o) currentTask).i |= com.estrongs.fs.a.a.h(file.getAbsolutePath());
                    if (aw.e()) {
                        ((com.estrongs.fs.b.o) currentTask).h.add(file.getAbsolutePath());
                    } else if (com.estrongs.fs.impl.media.a.a(file.getAbsolutePath())) {
                        ((com.estrongs.fs.b.o) currentTask).e.add(file.getAbsolutePath());
                    } else if (com.estrongs.fs.impl.media.a.b(file.getAbsolutePath())) {
                        ((com.estrongs.fs.b.o) currentTask).f.add(file.getAbsolutePath());
                    } else if (com.estrongs.fs.impl.media.a.c(file.getAbsolutePath())) {
                        ((com.estrongs.fs.b.o) currentTask).g.add(file.getAbsolutePath());
                    }
                } else {
                    i(file.getAbsolutePath());
                }
            }
            a2 = (a3 || com.estrongs.android.pop.p.a() < 11 || !ak.bg(file.getAbsolutePath())) ? a3 : f.a(file.getAbsolutePath());
        } else if ((currentTask instanceof com.estrongs.fs.b.o) && ((com.estrongs.fs.b.o) currentTask).b()) {
            pVar.a(file.getName(), new long[0]);
            boolean exists = file.exists();
            boolean a4 = exists ? ((com.estrongs.fs.b.o) currentTask).a(file) : true;
            if (a4 && exists) {
                ((com.estrongs.fs.b.o) currentTask).a(file.getAbsolutePath());
            }
            a2 = a4;
            length = 0;
        } else {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (!a(file2, pVar)) {
                        return false;
                    }
                }
            }
            pVar.a(file.getName(), new long[0]);
            boolean a5 = file.exists() ? currentTask instanceof com.estrongs.fs.b.o ? ((com.estrongs.fs.b.o) currentTask).a(file) : file.delete() : true;
            if (a5 && aw.e()) {
                if (currentTask instanceof com.estrongs.fs.b.o) {
                    ((com.estrongs.fs.b.o) currentTask).h.add(file.getAbsolutePath());
                } else {
                    i(file.getAbsolutePath());
                }
            }
            a2 = (a5 || com.estrongs.android.pop.p.a() < 11 || !ak.bg(file.getAbsolutePath())) ? a5 : f.a(file.getAbsolutePath());
            length = 0;
        }
        if (!a2) {
            return a2;
        }
        pVar.a(1L);
        if (!(currentTask instanceof com.estrongs.fs.b.o)) {
            return a2;
        }
        currentTask.sendMessage(1, 1L, absolutePath);
        if (length <= 0) {
            return a2;
        }
        currentTask.sendMessage(2, Long.valueOf(length), absolutePath);
        return a2;
    }

    public static boolean a(String str) {
        return (ak.aZ(str) || !h.a((Context) null, false)) ? new File(str).exists() : s.a((Context) null).b(str);
    }

    public static boolean a(String str, String str2) {
        if (!ak.aZ(str) && h.a((Context) null, false)) {
            return h.a(str, str2);
        }
        File file = new File(str);
        if (!file.exists()) {
            return false;
        }
        File file2 = new File(str2);
        if (file2.exists()) {
            return false;
        }
        boolean renameTo = file.renameTo(file2);
        if (!renameTo || !ak.aZ(str) || (com.estrongs.a.a.getCurrentTask() instanceof ab) || (com.estrongs.a.a.getCurrentTask() instanceof com.estrongs.fs.b.g)) {
            return renameTo;
        }
        if (file2.isDirectory()) {
            new e(str, str2).start();
            return renameTo;
        }
        b(str, str2);
        return renameTo;
    }

    public static boolean a(String str, boolean z) {
        return a(str, z, true);
    }

    public static boolean a(String str, boolean z, boolean z2) {
        boolean z3 = false;
        if (!ak.aZ(str) && h.a((Context) null, false)) {
            return h.a(str, z);
        }
        File file = new File(str);
        try {
            if (z) {
                if (!file.exists()) {
                    z3 = file.mkdir();
                }
            } else if (!file.exists()) {
                z3 = file.createNewFile();
            }
            if (com.estrongs.android.pop.m.V && com.estrongs.android.pop.p.a() >= 9) {
                a(file);
            }
        } catch (IOException e) {
        }
        if (!z3 && com.estrongs.android.pop.p.a() >= 11 && ak.bg(str)) {
            z3 = f.b(str, z);
        }
        if (!z2 || !z3 || !aw.e() || !ak.aZ(str)) {
            return z3;
        }
        try {
            com.estrongs.fs.impl.media.e.d(str);
            return z3;
        } catch (MediaStoreInsertException e2) {
            e2.printStackTrace();
            bt.b();
            return z3;
        }
    }

    public static b b(String str) {
        return new b(str.startsWith("file:///") ? new File(URI.create(str)) : new File(str));
    }

    public static OutputStream b(String str, boolean z) {
        FileOutputStream fileOutputStream;
        File file;
        if (!z) {
            try {
                if (!ak.aZ(str) && !ak.ba(str) && h.a((Context) null, false)) {
                    OutputStream e = h.e(str);
                    if (e == null) {
                        throw new FileSystemException("Permission denied");
                    }
                    return e;
                }
            } catch (Exception e2) {
                if (com.estrongs.android.pop.p.a() < 11 || !ak.bg(str)) {
                    throw new FileSystemException(e2.getMessage());
                }
                return f.a(str, false);
            }
        }
        if (str.startsWith("file://")) {
            File file2 = new File(new URI(str));
            fileOutputStream = new FileOutputStream(file2);
            file = file2;
        } else {
            File file3 = new File(str);
            fileOutputStream = new FileOutputStream(str);
            file = file3;
        }
        if (!com.estrongs.android.pop.m.V || com.estrongs.android.pop.p.a() < 9) {
            return fileOutputStream;
        }
        a(file);
        return fileOutputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(File file, List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    b(file2, list, list2, list3, list4);
                }
                return;
            }
            return;
        }
        if (aw.e()) {
            list4.add(file.getAbsolutePath());
            return;
        }
        if (com.estrongs.fs.impl.media.a.a(file.getAbsolutePath())) {
            list.add(file.getAbsolutePath());
        } else if (com.estrongs.fs.impl.media.a.b(file.getAbsolutePath())) {
            list2.add(file.getAbsolutePath());
        } else if (com.estrongs.fs.impl.media.a.c(file.getAbsolutePath())) {
            list3.add(file.getAbsolutePath());
        }
    }

    private static void b(String str, String str2) {
        i(str);
        j(str2);
    }

    public static com.estrongs.fs.c c(String str) {
        com.estrongs.fs.c d = d(str);
        if (d == null) {
            return null;
        }
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        if (d.d && !h.a((Context) null, false)) {
            d.c = "Folder";
            File[] listFiles = new File(str).listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    if (currentTask != null && currentTask.taskStopped()) {
                        return d;
                    }
                    if (file.isDirectory()) {
                        d.f++;
                    } else {
                        d.g++;
                    }
                }
            }
        }
        return d;
    }

    public static com.estrongs.fs.c d(String str) {
        com.estrongs.fs.c d;
        if (!ak.aZ(str) && h.a((Context) null, false) && (d = h.d(str)) != null) {
            if (d.d) {
                d.c = "Folder";
            } else {
                d.c = "File";
            }
            if (d.o.startsWith(".")) {
                d.m = true;
                return d;
            }
            d.m = false;
            return d;
        }
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        com.estrongs.fs.c cVar = new com.estrongs.fs.c(str);
        cVar.d = file.isDirectory();
        cVar.c = "File";
        cVar.e = file.length();
        cVar.j = file.lastModified();
        cVar.k = file.canRead();
        cVar.l = file.canWrite();
        cVar.m = file.isHidden();
        return cVar;
    }

    public static long e(String str) {
        com.estrongs.fs.c d;
        if (!ak.aZ(str) && h.a((Context) null, false) && (d = h.d(str)) != null) {
            if (d.d) {
                return -1L;
            }
            return d.e;
        }
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            return file.length();
        }
        return -1L;
    }

    public static OutputStream f(String str) {
        return b(str, false);
    }

    public static boolean g(String str) {
        if (ak.aZ(str) || !h.a((Context) null, false)) {
            File file = new File(str);
            boolean mkdirs = !file.exists() ? file.mkdirs() : true;
            if (com.estrongs.android.pop.m.V && com.estrongs.android.pop.p.a() >= 9) {
                a(file);
            }
            if (!mkdirs && com.estrongs.android.pop.p.a() >= 11 && ak.bg(str)) {
                mkdirs = f.b(str, true);
            }
            return mkdirs;
        }
        try {
            try {
                File file2 = new File(str);
                if (a(file2.getCanonicalPath())) {
                    return true;
                }
                try {
                    if (h.a(str, true)) {
                        return true;
                    }
                } catch (FileSystemException e) {
                }
                File parentFile = file2.getCanonicalFile().getParentFile();
                if (parentFile != null && (g(parentFile.getCanonicalPath()) || a(parentFile.getCanonicalPath()))) {
                    if (h.a(str, true)) {
                        return true;
                    }
                }
                return false;
            } catch (FileSystemException e2) {
                e2.printStackTrace();
                return false;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public static boolean h(String str) {
        com.estrongs.fs.c d;
        if (!ak.aZ(str) && h.a((Context) null, false) && (d = h.d(str)) != null) {
            return d.d;
        }
        File file = new File(str);
        if (file.exists()) {
            return file.isDirectory();
        }
        return false;
    }

    public static void i(String str) {
        if (ak.aO(str)) {
            if (aw.e()) {
                com.estrongs.fs.impl.media.e.e(str);
                return;
            }
            if (com.estrongs.fs.impl.media.a.c(str)) {
                com.estrongs.fs.impl.p.b.b().b(str);
            } else if (com.estrongs.fs.impl.media.a.b(str)) {
                com.estrongs.fs.impl.h.b.b().b(str);
            } else if (com.estrongs.fs.impl.media.a.a(str)) {
                com.estrongs.fs.impl.j.b.b().b(str);
            }
        }
    }

    public static void j(String str) {
        if (ak.aZ(str)) {
            try {
                if (aw.e()) {
                    com.estrongs.fs.impl.media.e.d(str);
                } else if (com.estrongs.fs.impl.media.a.c(str)) {
                    com.estrongs.fs.impl.p.b.b().a(str);
                } else if (com.estrongs.fs.impl.media.a.b(str)) {
                    com.estrongs.fs.impl.h.b.b().a(str);
                } else if (com.estrongs.fs.impl.media.a.a(str)) {
                    com.estrongs.fs.impl.j.b.b().a(str);
                }
            } catch (MediaStoreInsertException e) {
                e.printStackTrace();
                bt.b();
            }
        }
    }
}
