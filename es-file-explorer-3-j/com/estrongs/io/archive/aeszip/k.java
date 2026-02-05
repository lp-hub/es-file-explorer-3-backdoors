package com.estrongs.io.archive.aeszip;

import com.estrongs.a.b.p;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.aw;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;

/* loaded from: classes.dex */
public class k extends com.estrongs.io.archive.i {
    protected de.a.a.a.a.j d;
    private de.a.a.a.a.d e;
    private String f;
    private int g;

    public k(String str, com.estrongs.io.a.d dVar, String str2) {
        super(str, dVar, new HashMap());
        this.e = null;
        this.g = 0;
        this.f = str2;
    }

    public k(String str, com.estrongs.io.a.d dVar, Map<String, String> map) {
        this(str, dVar, map.get("password"));
        String str2 = map.get("compress_level");
        if (str2 == null || str2.length() <= 0) {
            this.g = -1;
        } else {
            this.g = aw.a(str2);
        }
    }

    private static final int a(long j) {
        if (j > 65536) {
            j = 65536;
        } else if (j < 8192) {
            j = 8192;
        }
        return (int) j;
    }

    protected void a(File file, String str) {
        if (com.estrongs.fs.impl.local.d.a(file.getPath()) && !this.f3222b.b()) {
            String name = (str == null || str.length() < 1) ? file.getName() : str + "/" + file.getName();
            if (!com.estrongs.fs.impl.local.d.h(file.getPath())) {
                this.f3222b.a(file.getName(), com.estrongs.fs.impl.local.d.e(file.getPath()));
                a(name, file);
                return;
            }
            this.d.d(new de.a.a.a.a.i(name + "/"));
            for (com.estrongs.fs.g gVar : com.estrongs.fs.impl.local.d.a(file.getPath(), com.estrongs.fs.h.d, com.estrongs.a.b.l.f210a)) {
                if (this.f3222b.b()) {
                    return;
                } else {
                    a(new File(gVar.getAbsolutePath()), name);
                }
            }
        }
    }

    public void a(String str, File file) {
        try {
            this.e = new de.a.a.a.a.e(this.f.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        de.a.a.a.a.i iVar = new de.a.a.a.a.i(str);
        if (this.g == 0) {
            iVar.setMethod(0);
        } else {
            iVar.setMethod(8);
        }
        iVar.setCrc(0L);
        long e2 = com.estrongs.fs.impl.local.d.e(file.getCanonicalPath());
        iVar.setSize(e2);
        iVar.setCompressedSize(0L);
        iVar.setTime(new Date().getTime());
        iVar.a();
        this.d.d(iVar);
        this.d.write(this.e.a());
        this.d.write(this.e.b());
        byte[] bArr = new byte[a(e2)];
        l lVar = new l(this, this.d, this.e);
        OutputStream deflaterOutputStream = this.g == 0 ? lVar : new DeflaterOutputStream(lVar, new Deflater(this.g, true), 8192);
        InputStream a2 = com.estrongs.fs.impl.local.d.a(FexApplication.a(), file.getCanonicalPath());
        while (true) {
            int read = a2.read(bArr);
            if (read <= 0) {
                a2.close();
                deflaterOutputStream.close();
                iVar.setSize(e2);
                iVar.setCompressedSize(lVar.f3205a + 28);
                iVar.setCrc(lVar.a());
                this.d.write(this.e.c());
                this.d.a(iVar);
                return;
            }
            if (this.f3222b.b()) {
                a2.close();
                return;
            }
            deflaterOutputStream.write(bArr, 0, read);
            if (this.f3222b.b()) {
                a2.close();
                return;
            } else {
                this.c += read;
                this.f3222b.a(this.c);
            }
        }
    }

    @Override // com.estrongs.io.archive.i
    public void a(List<String> list) {
        this.c = 0L;
        File file = new File(a());
        if (!com.estrongs.fs.impl.local.d.a(file.getParentFile().getAbsolutePath())) {
            if (com.estrongs.fs.d.a() != null) {
                com.estrongs.fs.d.a().g(file.getParentFile().getAbsolutePath());
            } else {
                com.estrongs.fs.impl.local.d.g(file.getParentFile().getAbsolutePath());
            }
        }
        com.estrongs.io.archive.g gVar = new com.estrongs.io.archive.g(this.f3222b);
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            gVar.a(new File(it.next()));
        }
        if (this.f3222b.b()) {
            return;
        }
        this.f3222b.a(new File(this.f3221a).getName(), gVar.a(), gVar.c() + gVar.b());
        String str = this.f3221a + ".tmp";
        this.d = new de.a.a.a.a.j(new BufferedOutputStream(com.estrongs.fs.impl.local.d.f(str), 1048576));
        try {
            try {
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    a(new File(it2.next()), "");
                }
                this.d.a();
                this.d.close();
                File file2 = new File(str);
                if (this.f3222b.b()) {
                    com.estrongs.fs.d.a().a(file2.getCanonicalPath(), p.f215b);
                } else {
                    if (file2 == null || !file2.exists()) {
                        return;
                    }
                    com.estrongs.fs.d.a().a(com.estrongs.fs.d.a().j(file2.getAbsolutePath()), this.f3221a);
                }
            } catch (IOException e) {
                e.printStackTrace();
                throw e;
            } catch (Throwable th) {
                th.printStackTrace();
                throw new IOException(th.getMessage());
            }
        } catch (Throwable th2) {
            this.d.a();
            this.d.close();
            File file3 = new File(str);
            if (this.f3222b.b()) {
                com.estrongs.fs.d.a().a(file3.getCanonicalPath(), p.f215b);
            } else if (file3 != null && file3.exists()) {
                com.estrongs.fs.d.a().a(com.estrongs.fs.d.a().j(file3.getAbsolutePath()), this.f3221a);
            }
            throw th2;
        }
    }
}
