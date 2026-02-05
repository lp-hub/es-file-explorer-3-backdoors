package com.estrongs.fs.b;

import android.util.Log;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.bt;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class y extends i {
    protected List<com.estrongs.fs.g> A;
    protected o B;
    public List<String> C;
    private List<String> D;
    private List<String> E;
    private List<String> F;
    private List<String> G;
    private List<String> H;
    private int I;
    private boolean J;
    private com.estrongs.a.a K;
    private boolean L;

    /* renamed from: a, reason: collision with root package name */
    private String f3029a;

    /* renamed from: b, reason: collision with root package name */
    private String f3030b;
    boolean y;
    boolean z;

    public y(com.estrongs.fs.d dVar, List<com.estrongs.fs.g> list, com.estrongs.fs.g gVar) {
        super(dVar, list, gVar);
        this.y = false;
        this.z = false;
        this.A = new ArrayList();
        this.B = null;
        this.f3029a = null;
        this.f3030b = null;
        this.D = new ArrayList();
        this.E = new ArrayList();
        this.F = new ArrayList();
        this.G = new ArrayList();
        this.H = new ArrayList();
        this.I = 1;
        this.J = false;
        this.L = true;
        if (com.estrongs.android.util.ak.E(gVar.getAbsolutePath()) == 0) {
            this.y = com.estrongs.android.util.ak.a(this.v.get(0).getAbsolutePath(), gVar.getAbsolutePath());
        } else if (com.estrongs.android.util.ak.aP(gVar.getAbsolutePath()) && com.estrongs.android.util.ak.a(this.v.get(0).getAbsolutePath()).equals(com.estrongs.android.util.ak.a(gVar.getAbsolutePath()))) {
            this.z = true;
        }
        this.canRestart = false;
        this.task_type = 3;
        recordSummary("task_type", Integer.valueOf(this.task_type));
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
        this.I |= com.estrongs.fs.a.a.h(file.getAbsolutePath());
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

    private void a(String str, String str2) {
        if (com.estrongs.android.util.ak.aZ(str)) {
            if (new File(str2).isDirectory() && !str.endsWith("/")) {
                str = str + "/";
            }
            this.H.add(str);
        }
        if (com.estrongs.android.util.ak.aZ(str2)) {
            a(new File(str2), this.D, this.E, this.F, this.G);
        }
    }

    private boolean a(File file, String str, String str2) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (int i = 0; i < listFiles.length; i++) {
                if (taskStopped()) {
                    return false;
                }
                File file2 = new File(str2 + listFiles[i].getAbsolutePath().substring(str.length()));
                if (listFiles[i].isDirectory()) {
                    if (file2.exists()) {
                        if (!a(listFiles[i], str, str2)) {
                            return false;
                        }
                    } else if (!listFiles[i].renameTo(file2)) {
                        return false;
                    }
                } else if (file2.exists()) {
                    com.estrongs.fs.impl.local.d.a(FexApplication.a(), file2.getAbsolutePath(), (com.estrongs.a.b.p) null);
                    if (!listFiles[i].renameTo(file2)) {
                        return false;
                    }
                } else if (!listFiles[i].renameTo(file2)) {
                    return false;
                }
            }
        }
        com.estrongs.fs.impl.local.d.a(FexApplication.a(), file.getAbsolutePath(), (com.estrongs.a.b.p) null);
        return true;
    }

    private boolean a(String str) {
        if (com.estrongs.android.util.ak.an(str)) {
            try {
                try {
                    InputStream e = this.c.e(str);
                    if (e != null) {
                        com.estrongs.fs.c.d.a(e);
                        return true;
                    }
                    com.estrongs.fs.c.d.a(e);
                } catch (FileSystemException e2) {
                    Log.w("Move", "exist failed - " + com.estrongs.android.util.ak.C(str));
                    com.estrongs.fs.c.d.a((Closeable) null);
                }
            } catch (Throwable th) {
                com.estrongs.fs.c.d.a((Closeable) null);
                throw th;
            }
        } else {
            try {
                return this.c.b(str);
            } catch (FileSystemException e3) {
                Log.w("Move", "exist failed - " + com.estrongs.android.util.ak.C(str));
            }
        }
        return false;
    }

    public void a(com.estrongs.a.a aVar) {
        this.K = aVar;
    }

    public void f(boolean z) {
        this.L = z;
    }

    public List<String> h() {
        return this.D;
    }

    @Override // com.estrongs.fs.b.i, com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        if (i != 13) {
            super.handleMessage(i, objArr);
        } else if (com.estrongs.android.util.aw.a((CharSequence) this.f3029a)) {
            this.f3029a = (String) objArr[1];
        } else {
            this.f3030b = (String) objArr[1];
        }
    }

    public List<String> i() {
        return this.E;
    }

    public List<String> j() {
        return this.F;
    }

    public List<String> k() {
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.fs.b.i, com.estrongs.a.a
    public void postTask() {
        super.postTask();
        if (this.L && this.J) {
            try {
                if (com.estrongs.android.util.aw.e()) {
                    com.estrongs.fs.impl.media.e.a(this.H);
                    com.estrongs.fs.impl.media.e.a(this.G, null);
                    return;
                }
                if (this.D.size() > 0) {
                    com.estrongs.fs.impl.j.b.b().b(this.H);
                }
                if (this.E.size() > 0) {
                    com.estrongs.fs.impl.h.b.b().b(this.H);
                }
                if (this.F.size() > 0) {
                    com.estrongs.fs.impl.p.b.b().b(this.H);
                }
                if (this.D.size() > 0) {
                    com.estrongs.fs.impl.j.b.b().a(this.D);
                }
                if (this.E.size() > 0) {
                    com.estrongs.fs.impl.h.b.b().a(this.E);
                }
                if (this.F.size() > 0) {
                    com.estrongs.fs.impl.p.b.b().a(this.F);
                }
            } catch (MediaStoreInsertException e) {
                e.printStackTrace();
                bt.b();
            }
        }
    }

    @Override // com.estrongs.fs.b.i, com.estrongs.a.a
    public void removeProgressListener(com.estrongs.a.a.h hVar) {
        super.removeProgressListener(hVar);
        if (this.B != null) {
            this.B.removeProgressListener(hVar);
        }
    }

    @Override // com.estrongs.fs.b.i, com.estrongs.a.a
    public boolean task() {
        com.estrongs.fs.a.b a2;
        int i;
        com.estrongs.fs.a.b a3;
        int i2;
        File file;
        File file2;
        File parentFile;
        if (this.o) {
            setTaskResult(11, new com.estrongs.a.q("Error", (Exception) null));
            return false;
        }
        if (!this.l) {
            this.processData.l = false;
            this.processData.m = false;
            this.processData.o = false;
        }
        if (this.y) {
            ArrayList<k> arrayList = new ArrayList<>();
            this.processData.c = this.f.size();
            this.processData.m = false;
            this.processData.l = false;
            onProgress(this.processData);
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (int i3 = 0; i3 < this.f.size(); i3++) {
                try {
                    if (taskStopped()) {
                        return false;
                    }
                    String absolutePath = this.f.get(i3).f3008a.getAbsolutePath();
                    String str = this.f.get(i3).f3009b;
                    if (com.estrongs.android.util.ak.d(absolutePath, str)) {
                        sendMessage(1, 1L, absolutePath);
                        onProgress(this.processData);
                    } else {
                        if (com.estrongs.android.util.aw.h()) {
                            File file3 = new File(com.estrongs.android.util.ak.bo(absolutePath));
                            file = new File(com.estrongs.android.util.ak.bo(str));
                            file2 = file3;
                        } else {
                            File file4 = new File(absolutePath);
                            file = new File(str);
                            file2 = file4;
                        }
                        if (file.exists() && file2.exists()) {
                            com.estrongs.a.a.e eVar = this.K == null ? (com.estrongs.a.a.e) getDecision(com.estrongs.a.a.e.class, str, false, this.f.get(i3).f3008a, this.c.j(str)) : (com.estrongs.a.a.e) this.K.getDecision(com.estrongs.a.a.e.class, str, false, this.f.get(i3).f3008a, this.c.j(str));
                            if (eVar.g == 2) {
                                sendMessage(1, 1L, absolutePath);
                                onProgress(this.processData);
                            } else if (eVar.g != 1) {
                                if (eVar.g == 3) {
                                    return false;
                                }
                                if (eVar.g == 5) {
                                    File file5 = new File(com.estrongs.fs.c.d.l(str));
                                    sendMessage(1, 1L, absolutePath);
                                    onProgress(this.processData);
                                    file = file5;
                                }
                            } else if (!file.isDirectory()) {
                                com.estrongs.fs.impl.local.d.a(FexApplication.a(), file.getAbsolutePath(), (com.estrongs.a.b.p) null);
                            } else if (a(file2, file2.getAbsolutePath(), file.getAbsolutePath())) {
                                arrayList2.add(this.f.get(i3).f3008a);
                                arrayList3.add(new com.estrongs.fs.n(this.n, this.f.get(i3).f3008a.getName()));
                                sendMessage(1, 1L, absolutePath);
                                onProgress(this.processData);
                                a(absolutePath, str);
                                this.J = true;
                            } else {
                                if (taskStopped()) {
                                    com.estrongs.fs.a.b.a().a(this.f.get(i3).f3008a.getAbsolutePath().endsWith("/") ? this.f.get(i3).f3008a.getAbsolutePath() + "*" : this.f.get(i3).f3008a.getAbsolutePath() + "/*");
                                    com.estrongs.fs.a.b.a().a(this.n.getAbsolutePath().endsWith("/") ? this.n.getAbsolutePath() + "*" : this.n.getAbsolutePath() + "/*");
                                    return false;
                                }
                                arrayList.add(this.f.get(i3));
                            }
                        }
                        if (file2.exists()) {
                            boolean renameTo = file2.renameTo(file);
                            if (!renameTo && (parentFile = file.getParentFile()) != null && !parentFile.exists() && parentFile.mkdirs()) {
                                String f = com.estrongs.fs.a.b.a().f(parentFile.getAbsolutePath());
                                if (f != null) {
                                    com.estrongs.fs.a.b.a().a(f);
                                }
                                renameTo = file2.renameTo(file);
                            }
                            if (renameTo) {
                                this.A.add(this.f.get(i3).f3008a);
                                a(absolutePath, str);
                                this.J = true;
                                arrayList2.add(this.f.get(i3).f3008a);
                                arrayList3.add(new com.estrongs.fs.n(this.n, this.f.get(i3).f3008a.getName()));
                            } else {
                                arrayList.add(this.f.get(i3));
                            }
                        }
                        sendMessage(1, 1L, absolutePath);
                        onProgress(this.processData);
                    }
                } catch (Exception e) {
                } finally {
                    com.estrongs.fs.a.b.a().b(arrayList3, this.I);
                    com.estrongs.fs.a.b.a().c(arrayList2, this.I);
                }
            }
            if (arrayList.size() == 0) {
                return true;
            }
            this.f = arrayList;
            a();
        } else if (this.z) {
            try {
                return this.c.a(this.v, this.n);
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
        ArrayList arrayList4 = new ArrayList();
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= this.f.size()) {
                break;
            }
            arrayList4.add(this.f.get(i5).f3008a);
            i4 = i5 + 1;
        }
        boolean task = super.task();
        if (!task || arrayList4.size() <= 0) {
            return task;
        }
        if ((com.estrongs.android.util.aw.b((CharSequence) this.f3029a) && !a(this.f3029a)) || (com.estrongs.android.util.aw.b((CharSequence) this.f3030b) && !a(this.f3030b))) {
            setTaskResult(10000, new com.estrongs.a.q("", (Exception) null));
            return false;
        }
        if (this.C == null || this.C.size() == 0 || this.d == 0) {
            this.B = new o(this.c, (List<com.estrongs.fs.g>) arrayList4, false);
            this.B.j = this.C;
            this.B.processData.i = 3;
            this.B.processData.k = true;
            this.B.addProgressListeners(getProgressListeners());
            this.B.execute(false);
            this.A.addAll(this.B.c);
        }
        return true;
    }
}
