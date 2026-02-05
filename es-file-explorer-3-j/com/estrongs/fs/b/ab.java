package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.android.pop.utils.bt;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ab extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.fs.g f2961a;

    /* renamed from: b, reason: collision with root package name */
    private String f2962b;
    private String c;
    private Activity d;
    private List<String> e = null;
    private List<String> f = null;
    private List<String> g = null;
    private List<String> h = null;
    private String i = null;
    private int j = 1;
    private boolean k = false;

    public ab(Activity activity, com.estrongs.fs.g gVar, String str, String str2) {
        this.d = activity;
        this.f2961a = gVar;
        this.f2962b = str2;
        this.c = str;
        this.processData.j = gVar.getName();
        this.processData.p = false;
        this.processData.l = false;
        this.processData.m = false;
        this.processData.n = false;
    }

    private void a(File file, List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    a(file2, list, list2, list3, list4);
                }
                return;
            }
            return;
        }
        this.j |= com.estrongs.fs.a.a.h(file.getAbsolutePath());
        if (com.estrongs.android.util.aw.e()) {
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

    protected void a() {
        if (this.k) {
            boolean b2 = this.f2961a.getFileType().b();
            if (this.f2961a.getFileType().a() && !this.i.endsWith("/")) {
                this.i += "/";
            }
            try {
                if (com.estrongs.android.util.aw.e()) {
                    if (this.i != null) {
                        if (b2) {
                            com.estrongs.fs.impl.media.e.e(this.i);
                        } else {
                            com.estrongs.fs.impl.media.e.f(this.i);
                        }
                    }
                    com.estrongs.fs.impl.media.e.a(this.h, null);
                    return;
                }
                if (this.i != null) {
                    if (b2) {
                        com.estrongs.fs.impl.j.b.b().b(this.i);
                        com.estrongs.fs.impl.h.b.b().b(this.i);
                        com.estrongs.fs.impl.p.b.b().b(this.i);
                    } else {
                        com.estrongs.fs.impl.j.b.b().c(this.i);
                        com.estrongs.fs.impl.h.b.b().c(this.i);
                        com.estrongs.fs.impl.p.b.b().c(this.i);
                    }
                }
                if (this.e.size() > 0) {
                    com.estrongs.fs.impl.j.b.b().a(this.e);
                }
                if (this.f.size() > 0) {
                    com.estrongs.fs.impl.h.b.b().a(this.f);
                }
                if (this.g.size() > 0) {
                    com.estrongs.fs.impl.p.b.b().a(this.g);
                }
            } catch (MediaStoreInsertException e) {
                e.printStackTrace();
                bt.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.a.a
    public void postTask() {
        super.postTask();
        if (this.f2961a.getFileType().b()) {
            return;
        }
        a();
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[SYNTHETIC] */
    @Override // com.estrongs.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean task() {
        Throwable th;
        boolean z;
        boolean z2 = false;
        try {
            if (this.f2961a == null) {
                return false;
            }
            this.processData.c = 1L;
            this.processData.e = 1L;
            onProgress(this.processData);
            if (taskStopped()) {
                return false;
            }
            this.i = this.f2961a.getAbsolutePath();
            this.processData.f196a = this.f2961a.getName();
            onProgress(this.processData);
            z = com.estrongs.android.pop.utils.aj.a(this.d, this.f2961a, this.c, this.f2962b, false, false);
            if (!z) {
                if (z) {
                    String str = com.estrongs.android.util.ak.e(this.i) + "/" + this.c;
                    if (com.estrongs.android.util.ak.aZ(this.i)) {
                        this.e = new ArrayList();
                        this.f = new ArrayList();
                        this.g = new ArrayList();
                        this.h = new ArrayList();
                        a(new File(str), this.e, this.f, this.g, this.h);
                        this.k = true;
                    }
                    if (this.f2961a.getFileType().b()) {
                        a();
                    }
                    com.estrongs.fs.a.b.a().a(this.f2961a, str, this.j);
                }
                return false;
            }
            try {
                this.processData.d = 1L;
                this.processData.f = 1L;
                onProgress(this.processData);
                setTaskResult(0, null);
                if (!z) {
                    return z;
                }
                String str2 = com.estrongs.android.util.ak.e(this.i) + "/" + this.c;
                if (com.estrongs.android.util.ak.aZ(this.i)) {
                    this.e = new ArrayList();
                    this.f = new ArrayList();
                    this.g = new ArrayList();
                    this.h = new ArrayList();
                    a(new File(str2), this.e, this.f, this.g, this.h);
                    this.k = true;
                }
                if (this.f2961a.getFileType().b()) {
                    a();
                }
                com.estrongs.fs.a.b.a().a(this.f2961a, str2, this.j);
                return z;
            } catch (Exception e) {
                e = e;
                try {
                    e.printStackTrace();
                    setTaskResult(10000, new com.estrongs.a.q(e.toString(), e));
                    if (!z) {
                        return z;
                    }
                    String str3 = com.estrongs.android.util.ak.e(this.i) + "/" + this.c;
                    if (com.estrongs.android.util.ak.aZ(this.i)) {
                        this.e = new ArrayList();
                        this.f = new ArrayList();
                        this.g = new ArrayList();
                        this.h = new ArrayList();
                        a(new File(str3), this.e, this.f, this.g, this.h);
                        this.k = true;
                    }
                    if (this.f2961a.getFileType().b()) {
                        a();
                    }
                    com.estrongs.fs.a.b.a().a(this.f2961a, str3, this.j);
                    return z;
                } catch (Throwable th2) {
                    z2 = z;
                    th = th2;
                    if (z2) {
                        throw th;
                    }
                    String str4 = com.estrongs.android.util.ak.e(this.i) + "/" + this.c;
                    if (com.estrongs.android.util.ak.aZ(this.i)) {
                        this.e = new ArrayList();
                        this.f = new ArrayList();
                        this.g = new ArrayList();
                        this.h = new ArrayList();
                        a(new File(str4), this.e, this.f, this.g, this.h);
                        this.k = true;
                    }
                    if (this.f2961a.getFileType().b()) {
                        a();
                    }
                    com.estrongs.fs.a.b.a().a(this.f2961a, str4, this.j);
                    throw th;
                }
            } catch (Throwable th3) {
                z2 = z;
                th = th3;
                if (z2) {
                }
            }
        } catch (Exception e2) {
            e = e2;
            z = false;
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
