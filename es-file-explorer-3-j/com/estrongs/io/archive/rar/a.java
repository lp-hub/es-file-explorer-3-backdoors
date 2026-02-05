package com.estrongs.io.archive.rar;

import android.util.Log;
import com.estrongs.android.util.aw;
import com.estrongs.android.util.g;
import com.estrongs.io.archive.h;
import com.estrongs.io.model.ArchiveEntryFile;
import de.innosystec.unrar.exception.RarException;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class a extends h {
    private static String i = "RarInArchive";
    de.innosystec.unrar.a g;
    boolean h;

    public a(String str, String str2) {
        super(str, str2);
        this.g = null;
        this.h = false;
        if (str2.equalsIgnoreCase(g.f2695a[0])) {
            this.h = true;
            this.c = g.a();
        }
    }

    private File a(RarArchiveEntryFile rarArchiveEntryFile, com.estrongs.io.a.b bVar) {
        OutputStream outputStream;
        Throwable th;
        RarException e;
        if (bVar != null && bVar.b()) {
            return null;
        }
        try {
            File b2 = b(rarArchiveEntryFile, bVar);
            if (b2 == null) {
                com.estrongs.fs.c.d.a((Closeable) null);
                return null;
            }
            OutputStream f = com.estrongs.fs.impl.local.d.f(b2.getCanonicalPath());
            try {
                this.g.a(rarArchiveEntryFile.getArchiveEntry(), f);
                com.estrongs.fs.c.d.a(f);
                return b2;
            } catch (RarException e2) {
                e = e2;
                outputStream = f;
                try {
                    throw new IOException(e.getMessage());
                } catch (Throwable th2) {
                    th = th2;
                    com.estrongs.fs.c.d.a(outputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                outputStream = f;
                com.estrongs.fs.c.d.a(outputStream);
                throw th;
            }
        } catch (RarException e3) {
            outputStream = null;
            e = e3;
        } catch (Throwable th4) {
            outputStream = null;
            th = th4;
        }
    }

    private void e(String str) {
        if (this.g == null) {
            try {
                this.g = new de.innosystec.unrar.a(new File(str), this.c, new d(this), null, this.h);
            } catch (RarException e) {
                e.printStackTrace();
                throw new IOException(e.getMessage());
            }
        }
    }

    @Override // com.estrongs.io.archive.h
    public InputStream a(String str) {
        return null;
    }

    @Override // com.estrongs.io.archive.h
    public void a(com.estrongs.io.a.b bVar) {
        com.estrongs.io.archive.g gVar = new com.estrongs.io.archive.g();
        try {
            try {
                b();
                if (this.g.f().p() && !this.g.f().q()) {
                    String b2 = de.innosystec.unrar.e.b(this.f3220b, !this.g.f().v() || this.g.g());
                    if (!aw.a((CharSequence) b2) && new File(b2).exists()) {
                        c();
                        this.f3220b = b2;
                        b();
                    }
                }
                Iterator<ArchiveEntryFile> i2 = i();
                while (i2.hasNext()) {
                    if (bVar != null && bVar.b()) {
                        try {
                            return;
                        } catch (IOException e) {
                            return;
                        }
                    }
                    gVar.a(i2.next());
                }
                if (this.g.f().p()) {
                    String str = this.f3220b;
                    boolean z = !this.g.f().v() || this.g.g();
                    String a2 = de.innosystec.unrar.e.a(this.f3220b, z);
                    while (!aw.a((CharSequence) a2) && new File(a2).exists()) {
                        if (bVar != null && bVar.b()) {
                            Log.i(i, "Extraction is done.");
                            try {
                                c();
                                return;
                            } catch (IOException e2) {
                                e2.printStackTrace();
                                return;
                            }
                        }
                        c();
                        this.f3220b = a2;
                        b();
                        Iterator<ArchiveEntryFile> i3 = i();
                        while (i3.hasNext()) {
                            if (bVar != null && bVar.b()) {
                                Log.i(i, "Extraction is done.");
                                try {
                                    c();
                                    return;
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                    return;
                                }
                            }
                            gVar.a(i3.next());
                        }
                        a2 = de.innosystec.unrar.e.a(this.f3220b, z);
                    }
                    c();
                    this.f3220b = str;
                    b();
                }
                bVar.a(new File(this.f3220b).getName(), gVar.a(), gVar.b() + gVar.c());
                Iterator<ArchiveEntryFile> i4 = i();
                this.g.h();
                this.g.a(bVar);
                this.g.a(new b(this, bVar, bVar, gVar));
                while (i4.hasNext()) {
                    if (bVar != null && bVar.b()) {
                        Log.i(i, "Extraction is done.");
                        try {
                            c();
                            return;
                        } catch (IOException e4) {
                            e4.printStackTrace();
                            return;
                        }
                    }
                    File a3 = a((RarArchiveEntryFile) i4.next(), bVar);
                    if (a3 != null && a3.isFile()) {
                        a(a3);
                    }
                }
                Log.i(i, "Extraction is done.");
                try {
                    c();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            } finally {
                Log.i(i, "Extraction is done.");
                try {
                    c();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
        } catch (Exception e7) {
            if (!bVar.b()) {
                throw new IOException(e7.getMessage());
            }
            Log.i(i, "Extraction is done.");
            try {
                c();
            } catch (IOException e8) {
                e8.printStackTrace();
            }
        }
    }

    @Override // com.estrongs.io.archive.h
    public void a(List<String> list, com.estrongs.io.a.b bVar) {
        this.g.h();
        super.a(list, bVar);
    }

    @Override // com.estrongs.io.archive.h
    public boolean a() {
        return this.g != null;
    }

    @Override // com.estrongs.io.archive.h
    public void b() {
        e(this.f3220b);
    }

    @Override // com.estrongs.io.archive.h
    public File c(ArchiveEntryFile archiveEntryFile, com.estrongs.io.a.b bVar) {
        RarArchiveEntryFile rarArchiveEntryFile = (RarArchiveEntryFile) archiveEntryFile;
        if (rarArchiveEntryFile.getArchiveEntry().v() || rarArchiveEntryFile.getArchiveEntry().u()) {
            return null;
        }
        this.g.a(bVar);
        this.g.a(new e(bVar));
        return a(rarArchiveEntryFile, bVar);
    }

    @Override // com.estrongs.io.archive.h
    public void c() {
        if (this.g != null) {
            this.g.close();
        }
        this.g = null;
    }

    @Override // com.estrongs.io.archive.h
    protected Iterator<ArchiveEntryFile> i() {
        this.g.d();
        return new c(this);
    }

    public boolean k() {
        if (this.g == null || this.g.f() == null) {
            return false;
        }
        return this.g.f().p();
    }
}
