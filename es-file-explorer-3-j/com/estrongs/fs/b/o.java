package com.estrongs.fs.b;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.fs.FileSystemException;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class o extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    protected com.estrongs.fs.d f3014a;

    /* renamed from: b, reason: collision with root package name */
    protected List<com.estrongs.fs.g> f3015b;
    public List<com.estrongs.fs.g> c;
    protected boolean d;
    public List<String> e;
    public List<String> f;
    public List<String> g;
    public List<String> h;
    public int i;
    public List<String> j;
    private List<String> k;
    private boolean l;
    private long m;
    private boolean n;

    public o(com.estrongs.fs.d dVar, com.estrongs.fs.g gVar, boolean z) {
        this(dVar, gVar, z, false);
    }

    public o(com.estrongs.fs.d dVar, com.estrongs.fs.g gVar, boolean z, boolean z2) {
        this.f3015b = new LinkedList();
        this.c = new LinkedList();
        this.d = false;
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.h = new ArrayList();
        this.k = new ArrayList();
        this.i = 1;
        this.l = false;
        this.m = 0L;
        this.n = false;
        this.f3014a = dVar;
        this.f3015b = new ArrayList();
        this.d = z;
        this.f3015b.add(gVar);
        this.task_type = 4;
        this.processData.j = gVar.getName();
        this.processData.m = false;
        boolean aP = com.estrongs.android.util.ak.aP(gVar.getPath());
        this.processData.l = !aP;
        this.processData.k = false;
        this.processData.n = false;
        this.processData.o = aP ? false : true;
        recordSummary("source", com.estrongs.android.util.ak.B(com.estrongs.android.util.ak.aY(gVar.getPath())));
        this.canPause = false;
        if (z2) {
            c();
        }
    }

    public o(com.estrongs.fs.d dVar, List<com.estrongs.fs.g> list, boolean z) {
        this(dVar, list, z, false);
    }

    public o(com.estrongs.fs.d dVar, List<com.estrongs.fs.g> list, boolean z, boolean z2) {
        this.f3015b = new LinkedList();
        this.c = new LinkedList();
        this.d = false;
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.h = new ArrayList();
        this.k = new ArrayList();
        this.i = 1;
        this.l = false;
        this.m = 0L;
        this.n = false;
        this.f3014a = dVar;
        this.f3015b.addAll(list);
        this.d = z;
        this.task_type = 4;
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            sb.append(list.get(i).getName());
            if (i + 1 != size) {
                sb.append(" , ");
                if (i >= 4) {
                    sb.append("...");
                    break;
                }
            }
            i++;
        }
        boolean aP = size > 0 ? com.estrongs.android.util.ak.aP(list.get(0).getPath()) : false;
        this.processData.j = sb.toString();
        this.processData.m = false;
        this.processData.l = !aP;
        this.processData.k = false;
        this.processData.n = false;
        this.processData.o = aP ? false : true;
        if (size > 0) {
            recordSummary("source", com.estrongs.android.util.ak.B(com.estrongs.android.util.ak.aY(list.get(0).getPath())));
        }
        if (z2) {
            c();
        }
        this.canPause = false;
    }

    private String b(String str) {
        int lastIndexOf;
        String bo = com.estrongs.android.util.ak.bo(str);
        String bn = com.estrongs.android.util.ak.bn(bo);
        if (bn == null || (lastIndexOf = bo.lastIndexOf("/")) == -1) {
            return null;
        }
        return bn + "/.estrongs/recycle/" + this.m + bo.substring(0, lastIndexOf) + "/es_recycle_content" + bo.substring(lastIndexOf);
    }

    private void c() {
        this.m = System.currentTimeMillis();
        com.estrongs.fs.impl.k.a.a(this.m);
    }

    private boolean d() {
        int i = 0;
        w wVar = new w(this.f3015b, this.f3014a);
        wVar.processData.k = false;
        wVar.addProgressListeners(getProgressListeners());
        wVar.execute(false);
        if (wVar.getTaskStatus() != 4) {
            com.estrongs.a.p taskResult = wVar.getTaskResult();
            setTaskResult(taskResult.f229a, taskResult.f230b);
            return false;
        }
        List<x> a2 = wVar.a();
        while (true) {
            int i2 = i;
            if (i2 >= a2.size()) {
                break;
            }
            x xVar = a2.get(i2);
            this.processData.c += xVar.d + xVar.e;
            this.processData.e += xVar.c;
            i = i2 + 1;
        }
        if (this.processData.e > 0) {
            this.processData.l = true;
        }
        return true;
    }

    public List<com.estrongs.fs.g> a() {
        return this.f3015b;
    }

    public void a(String str) {
        if (str.endsWith("/")) {
            this.k.add(str);
        } else {
            this.k.add(str + "/");
        }
    }

    public boolean a(File file) {
        String str;
        String str2;
        boolean z;
        File file2 = null;
        String absolutePath = file.getAbsolutePath();
        boolean aZ = com.estrongs.android.util.ak.aZ(absolutePath);
        if (aZ) {
            str2 = com.estrongs.android.util.ak.bo(absolutePath);
            str = com.estrongs.android.util.ak.bB(absolutePath);
            if (str == null) {
                aZ = false;
            }
        } else {
            str = null;
            str2 = null;
        }
        if (this.m == 0 || !aZ || str2.startsWith(str)) {
            if (com.estrongs.android.util.ak.bE(absolutePath)) {
                this.n = true;
            }
            return file.delete();
        }
        File file3 = new File(str + "/.nomedia");
        if (!file3.exists()) {
            com.estrongs.fs.impl.local.d.g(file3.getAbsolutePath());
        }
        File file4 = new File(b(absolutePath));
        File parentFile = file4.getParentFile();
        if (parentFile == null) {
            return false;
        }
        if (!parentFile.exists()) {
            file2 = parentFile.getParentFile();
            while (file2 != null && !file2.exists()) {
                file2 = file2.getParentFile();
            }
            if (!com.estrongs.fs.impl.local.d.g(parentFile.getAbsolutePath())) {
                return false;
            }
            z = true;
        } else {
            if (!parentFile.isDirectory()) {
                return false;
            }
            z = false;
        }
        if (file4.exists()) {
            return false;
        }
        boolean renameTo = str2.equals(absolutePath) ? file.renameTo(file4) : new File(str2).renameTo(file4);
        if (renameTo || !z || file2 == null) {
            return renameTo;
        }
        String absolutePath2 = file2.getAbsolutePath();
        if (!absolutePath2.endsWith("/")) {
            absolutePath2 = absolutePath2 + "/";
        }
        parentFile.delete();
        for (File parentFile2 = parentFile.getParentFile(); parentFile2 != null && parentFile2.getAbsolutePath().startsWith(absolutePath2); parentFile2 = parentFile2.getParentFile()) {
            parentFile2.delete();
        }
        return renameTo;
    }

    public boolean b() {
        return this.m != 0;
    }

    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        switch (i) {
            case 1:
                this.processData.d += ((Long) objArr[0]).longValue();
                this.processData.f196a = (String) objArr[1];
                return;
            case 2:
                this.processData.f += ((Long) objArr[0]).longValue();
                this.processData.f196a = (String) objArr[1];
                return;
            default:
                super.handleMessage(i, objArr);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.a.a
    public void postTask() {
        if (com.estrongs.android.util.aw.e()) {
            com.estrongs.fs.impl.media.e.b(this.h);
            if (this.k.size() > 0) {
                com.estrongs.fs.impl.media.e.a(this.k);
            }
        } else {
            if (this.e.size() > 0) {
                com.estrongs.fs.impl.j.b.b().c(this.e);
            }
            if (this.f.size() > 0) {
                com.estrongs.fs.impl.h.b.b().c(this.f);
            }
            if (this.g.size() > 0) {
                com.estrongs.fs.impl.p.b.b().c(this.g);
            }
            if (this.k.size() > 0) {
                com.estrongs.fs.impl.j.b.b().c(this.k);
                com.estrongs.fs.impl.h.b.b().c(this.k);
                com.estrongs.fs.impl.p.b.b().c(this.k);
            }
        }
        if (this.m != 0 || this.n) {
            com.estrongs.fs.a.b.a().c("recycle://");
            if (this.m != 0) {
                com.estrongs.fs.impl.k.a.b(this.m);
            } else {
                com.estrongs.fs.impl.k.a.a();
            }
        }
    }

    @Override // com.estrongs.a.a
    public boolean task() {
        String message;
        boolean z;
        this.l = false;
        if (!this.d) {
            this.processData.l = false;
            this.processData.m = false;
            this.processData.o = false;
        }
        try {
            try {
                if (this.processData.c == -1 && this.processData.e == -1 && this.d) {
                    this.processData.c = 0L;
                    this.processData.e = 0L;
                    if (!d()) {
                        return false;
                    }
                }
                onProgress(this.processData);
                if (hasProgressListener()) {
                    new p(this).start();
                }
                z = this.f3014a.a(this.f3015b, this.c);
                try {
                    String path = this.f3015b.get(0).getPath();
                    if (!com.estrongs.android.util.ak.aC(path)) {
                        for (com.estrongs.fs.g gVar : this.f3015b) {
                            if (!(gVar instanceof com.estrongs.fs.impl.b.f)) {
                                break;
                            }
                            String a2 = ((com.estrongs.fs.impl.b.f) gVar).a();
                            if (a2 != null) {
                                new File(a2).delete();
                                com.estrongs.fs.a.b.a().a(a2, (String) null);
                            }
                        }
                    } else {
                        com.estrongs.fs.g g = com.estrongs.fs.a.b.a().g(com.estrongs.fs.a.a.a(path));
                        if (g != null && com.estrongs.android.util.aw.a(g.getExtra("item_count")) == this.f3015b.size() && !com.estrongs.android.util.ak.aB(g.getPath())) {
                            com.estrongs.fs.a.b.a().b(g);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                message = null;
            } catch (Exception e2) {
                e2.printStackTrace();
                message = null;
                z = false;
            }
        } catch (FileSystemException e3) {
            message = e3.getMessage();
            z = false;
        }
        if (!z) {
            if (message == null) {
                message = (this.f3015b.size() > 0 ? this.f3015b.get(0).getName() : "") + " " + FexApplication.a().getString(C0000R.string.operation_delete_fail);
            }
            if (this.f3015b.size() >= 2) {
                message = FexApplication.a().getString(C0000R.string.operation_failed);
            }
            setTaskResult(7, new com.estrongs.a.q(message, (Exception) null));
        }
        this.l = true;
        return z;
    }
}
