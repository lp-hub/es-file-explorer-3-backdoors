package com.estrongs.io.archive.aeszip;

import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;

/* loaded from: classes.dex */
public class h extends com.estrongs.io.archive.h {
    a g;
    boolean h;

    public h(String str, String str2) {
        super(str, str2);
        this.g = null;
        this.h = false;
        if (str2.equalsIgnoreCase(com.estrongs.android.util.g.f2695a[0])) {
            this.h = true;
            this.c = com.estrongs.android.util.g.a();
        }
    }

    @Override // com.estrongs.io.archive.h
    public InputStream a(String str) {
        return null;
    }

    @Override // com.estrongs.io.archive.h
    public boolean a() {
        return this.g != null;
    }

    @Override // com.estrongs.io.archive.h
    public void b() {
        this.g = new a(new File(this.f3220b), this.c, this.h, new i(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0030  */
    @Override // com.estrongs.io.archive.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public File c(ArchiveEntryFile archiveEntryFile, com.estrongs.io.a.b bVar) {
        InputStream inputStream;
        OutputStream outputStream;
        Throwable th;
        OutputStream outputStream2;
        IOException e;
        InputStream inputStream2;
        File b2 = b(archiveEntryFile, bVar);
        if (b2 == null) {
            return null;
        }
        de.a.a.a.a.i archiveEntry = ((AesZipArchiveEntryFile) archiveEntryFile).getArchiveEntry();
        try {
            if (this.g == null) {
                b();
            }
            if (archiveEntry == null) {
                throw new IOException("IllegalArgument - Archive Entry is NULL");
            }
            inputStream = this.g.a(archiveEntry.getName(), bVar);
            if (inputStream != null) {
                try {
                    if (!bVar.b()) {
                        outputStream = com.estrongs.fs.impl.local.d.f(b2.getAbsolutePath());
                        try {
                            byte[] bArr = new byte[a.a(archiveEntry.getSize())];
                            while (true) {
                                int read = inputStream.read(bArr);
                                if (read <= 0) {
                                    break;
                                }
                                outputStream.write(bArr, 0, read);
                                if (bVar.b()) {
                                    break;
                                }
                                this.f3219a += read;
                                bVar.a(this.f3219a);
                            }
                            if (outputStream != null) {
                                outputStream.close();
                            }
                            if (bVar.b() && inputStream != null) {
                                b2.delete();
                            }
                            return b2;
                        } catch (IOException e2) {
                            e = e2;
                            outputStream2 = outputStream;
                            inputStream2 = inputStream;
                            if (inputStream2 == null) {
                                throw e;
                            }
                            try {
                                b2.delete();
                                throw e;
                            } catch (Throwable th2) {
                                th = th2;
                                InputStream inputStream3 = inputStream2;
                                outputStream = outputStream2;
                                inputStream = inputStream3;
                                if (outputStream != null) {
                                    outputStream.close();
                                }
                                if (bVar.b() && inputStream != null) {
                                    b2.delete();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            if (outputStream != null) {
                            }
                            if (bVar.b()) {
                                b2.delete();
                            }
                            throw th;
                        }
                    }
                } catch (IOException e3) {
                    inputStream2 = inputStream;
                    outputStream2 = null;
                    e = e3;
                } catch (Throwable th4) {
                    outputStream = null;
                    th = th4;
                }
            }
            outputStream = null;
            if (outputStream != null) {
            }
            if (bVar.b()) {
                b2.delete();
            }
            return b2;
        } catch (IOException e4) {
            outputStream2 = null;
            e = e4;
            inputStream2 = null;
        } catch (Throwable th5) {
            inputStream = null;
            outputStream = null;
            th = th5;
        }
    }

    @Override // com.estrongs.io.archive.h
    public void c() {
        if (this.g != null) {
            this.g.b();
            this.g = null;
        }
    }

    @Override // com.estrongs.io.archive.h
    protected Iterator<ArchiveEntryFile> i() {
        return new j(this);
    }
}
