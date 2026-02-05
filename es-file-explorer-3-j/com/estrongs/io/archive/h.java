package com.estrongs.io.archive;

import android.content.Context;
import com.estrongs.android.pop.app.compress.x;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.local.m;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    protected long f3219a;

    /* renamed from: b, reason: collision with root package name */
    protected String f3220b;
    protected String c;
    protected ArchiveEntryFile d;
    protected Map<String, ArchiveEntryFile> e;
    protected byte[] f;
    private List<File> g;
    private List<File> h;
    private boolean i;

    public h(String str) {
        this.f3219a = 0L;
        this.g = new ArrayList();
        this.h = new ArrayList();
        this.c = "GBK";
        this.d = null;
        this.e = new TreeMap();
        this.f = null;
        this.i = false;
        this.f3220b = str;
    }

    public h(String str, String str2) {
        this.f3219a = 0L;
        this.g = new ArrayList();
        this.h = new ArrayList();
        this.c = "GBK";
        this.d = null;
        this.e = new TreeMap();
        this.f = null;
        this.i = false;
        this.f3220b = str;
        if (str2 != null) {
            this.c = str2;
        }
    }

    private void a(ArchiveEntryFile archiveEntryFile) {
        if (this.i) {
            return;
        }
        String path = archiveEntryFile.getPath();
        if (!this.e.containsKey(path)) {
            this.e.put(path, archiveEntryFile);
        }
        File parentFile = new File(archiveEntryFile.getPath()).getParentFile();
        String path2 = parentFile == null ? "/" : parentFile.getPath();
        if ("/".equals(path2)) {
            ArchiveEntryFile archiveEntryFile2 = this.e.get("/");
            if (archiveEntryFile2 == null) {
                archiveEntryFile2 = c("/");
                this.e.put("/", archiveEntryFile2);
            }
            archiveEntryFile2.attachChild(archiveEntryFile);
            return;
        }
        ArchiveEntryFile archiveEntryFile3 = this.e.get(path2);
        if (archiveEntryFile3 != null) {
            archiveEntryFile3.attachChild(archiveEntryFile);
            return;
        }
        ArchiveEntryFile c = c(path2 + "/");
        c.attachChild(archiveEntryFile);
        a(c);
    }

    public static String d(String str) {
        if (str.equals("/..")) {
            return "";
        }
        while (str.contains("/../")) {
            str = str.replace("/../", "/");
        }
        if (str.startsWith("..")) {
            if (str.length() == 2) {
                return "";
            }
            str = str.substring(2);
        }
        return str.endsWith("..") ? str.length() == 2 ? "" : str.substring(0, str.length() - 2) : str;
    }

    private ArchiveEntryFile k() {
        Iterator<ArchiveEntryFile> i = i();
        if (i == null) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        while (i.hasNext() && !this.i) {
            ArchiveEntryFile next = i.next();
            if (!this.e.containsKey(next.getPath())) {
                a(next);
            }
        }
        System.out.println("Opening archive" + this.f3220b + ": " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
        return this.e.get("/");
    }

    public abstract InputStream a(String str);

    public void a(com.estrongs.io.a.b bVar) {
        try {
            try {
                g gVar = new g();
                b();
                Iterator<ArchiveEntryFile> i = i();
                while (i.hasNext()) {
                    gVar.a(i.next());
                }
                bVar.a(new File(this.f3220b).getName(), gVar.a(), gVar.c() + gVar.b());
                Iterator<ArchiveEntryFile> i2 = i();
                while (i2.hasNext() && !bVar.b()) {
                    a(i2.next(), bVar);
                }
                c();
            } catch (IOException e) {
                throw e;
            }
        } finally {
            this.f = null;
            g();
        }
    }

    public void a(ArchiveEntryFile archiveEntryFile, com.estrongs.io.a.b bVar) {
        if (bVar.b()) {
            return;
        }
        if (archiveEntryFile.isRoot()) {
            File[] listFiles = archiveEntryFile.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    a((ArchiveEntryFile) file, bVar);
                }
                return;
            }
            return;
        }
        if (!archiveEntryFile.isDirectory()) {
            File c = c(archiveEntryFile, bVar);
            if (c != null) {
                a(c);
                return;
            }
            return;
        }
        File file2 = new File(bVar.c() + d(archiveEntryFile.getPath()));
        if (!com.estrongs.fs.impl.local.d.a(file2.getCanonicalPath())) {
            if (com.estrongs.fs.d.a() != null) {
                com.estrongs.fs.d.a().c(file2.getCanonicalPath(), false);
            } else {
                com.estrongs.fs.impl.local.d.g(file2.getCanonicalPath());
            }
        }
        b(file2.getCanonicalPath());
        bVar.a(archiveEntryFile.getPath(), 0L);
        for (File file3 : archiveEntryFile.listFiles()) {
            a((ArchiveEntryFile) file3, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(File file) {
        String absolutePath = file.getAbsolutePath();
        if (ak.aZ(absolutePath)) {
            Thread currentThread = Thread.currentThread();
            if (currentThread instanceof x) {
                x xVar = (x) currentThread;
                xVar.e |= com.estrongs.fs.a.a.h(absolutePath);
                if (aw.e()) {
                    xVar.d.add(absolutePath);
                    return;
                }
                if (com.estrongs.fs.impl.media.a.a(absolutePath)) {
                    xVar.f629a.add(absolutePath);
                } else if (com.estrongs.fs.impl.media.a.b(absolutePath)) {
                    xVar.f630b.add(absolutePath);
                } else if (com.estrongs.fs.impl.media.a.c(absolutePath)) {
                    xVar.c.add(absolutePath);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(List<String> list, com.estrongs.io.a.b bVar) {
        boolean z = true;
        this.f = new byte[524288];
        this.f3219a = 0L;
        g gVar = new g();
        LinkedList<ArchiveEntryFile> linkedList = new LinkedList();
        if (list == null) {
            list = new ArrayList<>();
        }
        if (list.size() == 0) {
            list.add("/");
        }
        boolean z2 = false;
        try {
            if (!a()) {
                try {
                    try {
                        b();
                        z2 = true;
                    } catch (IOException e) {
                        throw e;
                    }
                } catch (Throwable th) {
                    th = th;
                    z2 = z;
                    this.f = null;
                    if (z2) {
                        c();
                    }
                    throw th;
                }
            }
            if (this.e.size() < 1) {
                k();
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                ArchiveEntryFile archiveEntryFile = this.e.get(it.next());
                linkedList.add(archiveEntryFile);
                gVar.a(archiveEntryFile);
            }
            bVar.a(new File(this.f3220b).getName(), gVar.a(), gVar.b() + gVar.c());
            for (ArchiveEntryFile archiveEntryFile2 : linkedList) {
                if (bVar.b()) {
                    break;
                } else {
                    a(archiveEntryFile2, bVar);
                }
            }
            this.f = null;
            if (z2) {
                c();
            }
        } catch (IOException e2) {
            z = z2;
            throw e2;
        } catch (Throwable th2) {
            th = th2;
            this.f = null;
            if (z2) {
            }
            throw th;
        }
    }

    public abstract boolean a();

    /* JADX INFO: Access modifiers changed from: protected */
    public File b(ArchiveEntryFile archiveEntryFile, com.estrongs.io.a.b bVar) {
        boolean g;
        String d = d(archiveEntryFile.getPath());
        File file = new File(bVar.c() + d);
        if (archiveEntryFile.isDirectory()) {
            if (com.estrongs.fs.d.a() != null) {
                try {
                    com.estrongs.fs.d.a().g(file.getAbsolutePath());
                } catch (FileSystemException e) {
                    com.estrongs.fs.impl.local.d.g(file.getAbsolutePath());
                    e.printStackTrace();
                }
            } else {
                com.estrongs.fs.impl.local.d.g(file.getAbsolutePath());
            }
            b(file.getAbsolutePath());
            return null;
        }
        File parentFile = file.getParentFile();
        if (!com.estrongs.fs.impl.local.d.a(parentFile.getAbsolutePath())) {
            if (com.estrongs.fs.d.a() != null) {
                try {
                    g = com.estrongs.fs.d.a().c(parentFile.getAbsolutePath(), false);
                } catch (FileSystemException e2) {
                    g = com.estrongs.fs.impl.local.d.g(parentFile.getAbsolutePath());
                    e2.printStackTrace();
                }
            } else {
                g = com.estrongs.fs.impl.local.d.g(parentFile.getAbsolutePath());
            }
            b(parentFile.getAbsolutePath());
            if (!g) {
                throw new IOException("path_create_error: " + parentFile.getAbsolutePath());
            }
        } else {
            if (!com.estrongs.fs.impl.local.d.h(parentFile.getAbsolutePath())) {
                throw new IOException("FILENAME_CONFILCT " + parentFile.getName());
            }
            if (com.estrongs.fs.impl.local.d.a(file.getAbsolutePath()) && !bVar.a(file.getAbsolutePath())) {
                bVar.a(d, com.estrongs.fs.impl.local.d.e(archiveEntryFile.getAbsolutePath()));
                return null;
            }
        }
        if (!com.estrongs.fs.impl.local.d.a(file.getAbsolutePath())) {
            try {
                if (!com.estrongs.fs.impl.local.d.a(file.getAbsolutePath(), false, false)) {
                    throw new IOException("path_create_error: " + file.getAbsolutePath());
                }
                b(file.getAbsolutePath());
            } catch (Exception e3) {
                throw new IOException("path_create_error (" + e3.getMessage() + "): " + file.getAbsolutePath());
            }
        }
        bVar.a(d, archiveEntryFile.getSize());
        return file;
    }

    public abstract void b();

    public void b(String str) {
        m f;
        try {
            if (ak.aZ(str) || !com.estrongs.fs.impl.local.h.a((Context) null, false) || (f = com.estrongs.fs.impl.local.h.f(str)) == null) {
                return;
            }
            f.f3106a |= 511;
            com.estrongs.fs.impl.local.h.a(str, f);
        } catch (Exception e) {
        }
    }

    protected ArchiveEntryFile c(String str) {
        return new ArchiveEntryFile(str);
    }

    public File c(ArchiveEntryFile archiveEntryFile, com.estrongs.io.a.b bVar) {
        FileOutputStream fileOutputStream = null;
        boolean z = false;
        File b2 = b(archiveEntryFile, bVar);
        if (b2 == null) {
            return null;
        }
        try {
            InputStream a2 = a(archiveEntryFile.getPath());
            try {
                if (this.f == null) {
                    this.f = new byte[524288];
                }
                BufferedInputStream bufferedInputStream = new BufferedInputStream(a2, this.f.length);
                FileOutputStream fileOutputStream2 = new FileOutputStream(b2);
                while (true) {
                    try {
                        int read = bufferedInputStream.read(this.f, 0, this.f.length);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream2.write(this.f, 0, read);
                        if (bVar.b()) {
                            z = true;
                            break;
                        }
                        this.f3219a += read;
                        bVar.a(this.f3219a);
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        com.estrongs.fs.c.d.a(fileOutputStream);
                        throw th;
                    }
                }
                com.estrongs.fs.c.d.a(fileOutputStream2);
                if (z) {
                    b2.delete();
                }
                return b2;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e) {
            b2.delete();
            throw e;
        }
    }

    public abstract void c();

    public void d() {
        this.i = true;
    }

    public boolean e() {
        return this.i;
    }

    protected void f() {
        this.d = null;
        this.e.clear();
    }

    public void g() {
        this.g.clear();
        this.h.clear();
        this.d = null;
        this.e.clear();
        try {
            c();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public final ArchiveEntryFile h() {
        if (this.d == null) {
            this.i = false;
            this.d = k();
            if (this.i) {
                f();
            } else {
                a.a(this.f3220b, this);
            }
        }
        return this.d;
    }

    protected abstract Iterator<ArchiveEntryFile> i();

    public String j() {
        return this.f3220b;
    }
}
