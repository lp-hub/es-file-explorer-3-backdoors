package com.estrongs.fs.b;

import android.os.StatFs;
import com.estrongs.android.pop.utils.bt;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class i extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    private byte[] f3004a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f3005b;
    protected com.estrongs.fs.d c;
    protected int d;
    protected HashMap<String, String> e;
    protected ArrayList<k> f;
    protected int g;
    protected int h;
    protected boolean i;
    protected boolean j;
    l k;
    boolean l;
    boolean m;
    public final com.estrongs.fs.g n;
    protected boolean o;
    public List<String> p;
    public List<String> q;
    public List<String> r;
    public List<String> s;
    public Set<String> t;
    public int u;
    protected List<com.estrongs.fs.g> v;
    w w;
    Long x;
    private boolean y;
    private boolean z;

    public i(com.estrongs.fs.d dVar, com.estrongs.fs.g gVar, com.estrongs.fs.g gVar2) {
        this(dVar, gVar, gVar2, null);
    }

    public i(com.estrongs.fs.d dVar, com.estrongs.fs.g gVar, com.estrongs.fs.g gVar2, String str) {
        this.c = null;
        this.d = 0;
        this.e = new HashMap<>();
        this.f = new ArrayList<>();
        this.g = 0;
        this.h = 0;
        this.i = false;
        this.j = true;
        this.k = new l();
        this.l = false;
        this.m = false;
        this.o = false;
        this.p = new ArrayList();
        this.q = new ArrayList();
        this.r = new ArrayList();
        this.s = new ArrayList();
        this.t = new HashSet();
        this.u = 1;
        this.f3004a = null;
        this.v = new ArrayList();
        this.f3005b = true;
        this.y = false;
        this.w = null;
        this.z = false;
        this.x = 0L;
        this.c = dVar;
        this.n = gVar2;
        this.g = 1;
        this.v.add(gVar);
        String absolutePath = !gVar2.getAbsolutePath().endsWith("/") ? gVar2.getAbsolutePath() + "/" : gVar2.getAbsolutePath();
        String name = gVar.getName();
        name = name == null ? com.estrongs.android.util.ak.d(gVar.getAbsolutePath()) : name;
        this.processData.j = name;
        this.f.add(new k(gVar, absolutePath + ((str == null || str.length() <= 0) ? gVar.getExtra("item_paste_name") != null ? (String) gVar.getExtra("item_paste_name") : name : str), 0L));
        this.o = gVar2.getAbsolutePath().startsWith(gVar.getAbsolutePath());
        this.d = com.estrongs.android.util.ak.E(gVar.getAbsolutePath());
        this.processData.l = !com.estrongs.android.util.ak.au(gVar.getPath());
        this.l = true;
        this.canRestart = true;
        this.task_type = 2;
        recordSummary("title", com.estrongs.android.util.ak.d(gVar.getName()));
        recordSummary("items_ori_count", 1);
        h();
    }

    public i(com.estrongs.fs.d dVar, List<com.estrongs.fs.g> list, com.estrongs.fs.g gVar) {
        this.c = null;
        this.d = 0;
        this.e = new HashMap<>();
        this.f = new ArrayList<>();
        this.g = 0;
        this.h = 0;
        this.i = false;
        this.j = true;
        this.k = new l();
        this.l = false;
        this.m = false;
        this.o = false;
        this.p = new ArrayList();
        this.q = new ArrayList();
        this.r = new ArrayList();
        this.s = new ArrayList();
        this.t = new HashSet();
        this.u = 1;
        this.f3004a = null;
        this.v = new ArrayList();
        this.f3005b = true;
        this.y = false;
        this.w = null;
        this.z = false;
        this.x = 0L;
        this.c = dVar;
        this.n = gVar;
        this.g = list.size();
        this.v.addAll(list);
        String absolutePath = !gVar.getAbsolutePath().endsWith("/") ? gVar.getAbsolutePath() + "/" : gVar.getAbsolutePath();
        LinkedList linkedList = new LinkedList();
        linkedList.addAll(list);
        int size = linkedList.size();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            String name = ((com.estrongs.fs.g) linkedList.get(i)).getName();
            sb.append(name == null ? com.estrongs.android.util.ak.d(((com.estrongs.fs.g) linkedList.get(i)).getAbsolutePath()) : name);
            if (i + 1 != size) {
                sb.append(" , ");
                if (i >= 4) {
                    sb.append("...");
                    break;
                }
            }
            i++;
        }
        for (int i2 = 0; i2 < size; i2++) {
            String name2 = ((com.estrongs.fs.g) linkedList.get(i2)).getName();
            this.f.add(new k((com.estrongs.fs.g) linkedList.get(i2), absolutePath + (((com.estrongs.fs.g) linkedList.get(i2)).getExtra("item_paste_name") != null ? (String) ((com.estrongs.fs.g) linkedList.get(i2)).getExtra("item_paste_name") : name2 == null ? com.estrongs.android.util.ak.d(((com.estrongs.fs.g) linkedList.get(i2)).getAbsolutePath()) : name2), 0L));
            if (!this.o) {
                String absolutePath2 = ((com.estrongs.fs.g) linkedList.get(i2)).getAbsolutePath();
                this.o = absolutePath.startsWith(absolutePath2.endsWith("/") ? absolutePath2 : absolutePath2 + "/");
            }
        }
        this.processData.j = sb.toString();
        this.processData.l = !com.estrongs.android.util.ak.au(list.get(0).getPath());
        this.d = com.estrongs.android.util.ak.E(((com.estrongs.fs.g) linkedList.get(0)).getAbsolutePath());
        this.l = true;
        this.canRestart = true;
        this.task_type = 2;
        int size2 = linkedList.size();
        String str = "";
        int i3 = 0;
        while (i3 < 3 && i3 != size2) {
            String str2 = str + ((com.estrongs.fs.g) linkedList.get(i3)).getName() + ",";
            i3++;
            str = str2;
        }
        recordSummary("title", str.endsWith(",") ? str.substring(0, str.length() - 1) : str);
        recordSummary("items_ori_count", Integer.valueOf(size2));
        h();
    }

    private void h() {
        com.estrongs.fs.g gVar = this.f.get(0).f3008a;
        if (this.startTime == -1) {
            this.startTime = System.currentTimeMillis();
        }
        recordSummary("task_id", Long.valueOf(getTaskId()));
        recordSummary("start_time", Long.valueOf(this.startTime));
        recordSummary("task_type", Integer.valueOf(this.task_type));
        recordSummary("restartable", false);
        if (gVar.getFileType().a()) {
            recordSummary("file_type", gVar.getFileType().c());
        } else {
            recordSummary("file_type", Integer.valueOf(com.estrongs.android.util.av.a(gVar.getName())));
        }
        recordSummary("items_selected_count", Integer.valueOf(this.f.size()));
        recordSummary("source", com.estrongs.android.util.ak.B(com.estrongs.android.util.ak.aY(gVar.getPath())));
        recordSummary("target", com.estrongs.android.util.ak.B(this.n.getPath()));
        recordSummary("status", 1);
    }

    private boolean i() {
        int i = 0;
        this.w = new w(this.c, this.f);
        this.w.addProgressListeners(getProgressListeners());
        this.w.execute(false);
        if (this.w.getTaskStatus() != 4) {
            com.estrongs.a.p taskResult = this.w.getTaskResult();
            setTaskResult(taskResult.f229a, taskResult.f230b);
            return false;
        }
        List<x> a2 = this.w.a();
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
        recordSummary("size", Long.valueOf(this.processData.e));
        return true;
    }

    public void a() {
        this.processData.c = -1L;
        this.processData.e = -1L;
        this.processData.d = -1L;
        this.processData.f = -1L;
        this.l = true;
    }

    public void a(boolean z) {
        this.m = z;
    }

    @Override // com.estrongs.a.a
    public void addProgressListener(com.estrongs.a.a.h hVar) {
        super.addProgressListener(hVar);
        if (this.w != null) {
            this.w.addProgressListener(hVar);
        }
    }

    public void b(boolean z) {
        this.i = z;
    }

    public byte[] b() {
        return this.f3004a;
    }

    public List<com.estrongs.fs.g> c() {
        return this.v;
    }

    public void c(boolean z) {
        this.j = z;
    }

    @Override // com.estrongs.a.a
    public boolean canPause() {
        return false;
    }

    public void d(boolean z) {
        this.f3005b = z;
    }

    public boolean d() {
        return this.i;
    }

    public void e(boolean z) {
        this.y = z;
    }

    public boolean e() {
        return this.j;
    }

    public com.estrongs.a.a.i f() {
        if (this.w == null) {
            return null;
        }
        return this.w.processData;
    }

    public boolean g() {
        return this.y;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0003. Please report as an issue. */
    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        switch (i) {
            case 1:
                com.estrongs.a.a.i iVar = this.processData;
                iVar.d = ((Long) objArr[0]).longValue() + iVar.d;
                this.processData.f196a = (String) objArr[1];
                return;
            case 2:
                if (objArr.length == 3 && "RBT".equals(objArr[2])) {
                    this.processData.f = ((Long) objArr[0]).longValue();
                    this.x = (Long) objArr[0];
                } else {
                    com.estrongs.a.a.i iVar2 = this.processData;
                    iVar2.f = ((Long) objArr[0]).longValue() + iVar2.f;
                }
                this.processData.f196a = (String) objArr[1];
                return;
            case 3:
            case 5:
            case 6:
            case 7:
            case 10:
            case 11:
            default:
                super.handleMessage(i, objArr);
                return;
            case 4:
                ArrayList<k> arrayList = (ArrayList) objArr[0];
                if (arrayList != null) {
                    for (int i2 = 0; i2 < this.f.size(); i2++) {
                        arrayList.add(this.f.get(i2));
                    }
                    this.f = arrayList;
                    return;
                }
                return;
            case 8:
                this.h++;
                this.k.f3010a = true;
                super.handleMessage(i, objArr);
                return;
            case 9:
                this.processData.g = ((Long) objArr[0]).longValue();
                this.processData.h = ((Long) objArr[1]).longValue();
                return;
            case 12:
                if (objArr == null || objArr.length != 2) {
                    return;
                }
                this.e.put(objArr[0].toString(), objArr[1].toString());
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.a.a
    public void postTask() {
        try {
            if (com.estrongs.android.util.aw.e()) {
                if (this.s.size() > 0) {
                    com.estrongs.fs.impl.media.e.a(this.s, this.t);
                    return;
                }
                return;
            }
            if (this.p.size() > 0) {
                com.estrongs.fs.impl.j.b.b().a(this.p);
            }
            if (this.q.size() > 0) {
                com.estrongs.fs.impl.h.b.b().a(this.q);
            }
            if (this.r.size() > 0) {
                com.estrongs.fs.impl.p.b.b().a(this.r);
            }
        } catch (MediaStoreInsertException e) {
            e.printStackTrace();
            bt.b();
        }
    }

    @Override // com.estrongs.a.a
    public void removeProgressListener(com.estrongs.a.a.h hVar) {
        super.removeProgressListener(hVar);
        if (this.w != null) {
            this.w.removeProgressListener(hVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x016b A[Catch: Exception -> 0x0232, all -> 0x03c0, TryCatch #0 {all -> 0x03c0, blocks: (B:3:0x0001, B:5:0x0005, B:6:0x0014, B:8:0x002e, B:10:0x0075, B:12:0x008a, B:15:0x0041, B:17:0x004e, B:26:0x009f, B:28:0x00a9, B:30:0x00b3, B:32:0x00b7, B:34:0x00c9, B:41:0x00ef, B:138:0x00fb, B:140:0x011a, B:43:0x015b, B:45:0x016b, B:46:0x0183, B:121:0x0233, B:149:0x0158, B:150:0x01b6, B:152:0x01ba, B:155:0x01c6, B:157:0x01ea, B:166:0x022d), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0195 A[Catch: Exception -> 0x032f, all -> 0x0345, TRY_LEAVE, TryCatch #6 {Exception -> 0x032f, all -> 0x0345, blocks: (B:48:0x018d, B:50:0x0195, B:52:0x025f, B:54:0x0274, B:56:0x027e, B:65:0x02a7, B:68:0x02b5, B:80:0x02bd, B:82:0x02c6, B:90:0x02d8, B:70:0x0303, B:77:0x0311, B:73:0x0333, B:100:0x0360, B:102:0x036a, B:103:0x0372, B:105:0x037c, B:106:0x0384, B:108:0x0393, B:110:0x0399, B:118:0x03ba), top: B:47:0x018d }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0360 A[SYNTHETIC] */
    @Override // com.estrongs.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean task() {
        boolean z;
        Object extra;
        ArrayList arrayList = null;
        try {
            try {
                if (!this.l) {
                    this.processData.l = false;
                    this.processData.m = false;
                    this.processData.o = false;
                }
                this.z = false;
                this.f3004a = new byte[(com.estrongs.android.util.ak.aJ(this.f.get(0).f3008a.getAbsolutePath()) || com.estrongs.android.util.ak.aJ(this.f.get(0).f3009b)) ? 5120 : (com.estrongs.android.util.ak.an(this.f.get(0).f3008a.getAbsolutePath()) || com.estrongs.android.util.ak.an(this.f.get(0).f3009b)) ? 32768 : 131072];
                this.k.f3010a = false;
                if (this.o) {
                    setTaskResult(10, new com.estrongs.a.q("Error", (Exception) null));
                    z = false;
                    this.z = true;
                    if (this.f3005b && 0 != 0 && arrayList.size() > 0) {
                        com.estrongs.fs.a.b.a().b(null, this.u);
                    }
                } else if (this.processData.c == -1 && this.processData.e == -1 && this.l) {
                    this.processData.c = 0L;
                    this.processData.e = 0L;
                    if (i()) {
                        if (com.estrongs.android.util.ak.aZ(this.n.getAbsolutePath())) {
                            try {
                                StatFs statFs = new StatFs(this.n.getAbsolutePath());
                                long blockSize = statFs.getBlockSize();
                                long availableBlocks = statFs.getAvailableBlocks();
                                if (this.processData.e > availableBlocks * blockSize) {
                                    setTaskResult(9, new com.estrongs.a.q("Error", new Long[]{Long.valueOf(this.processData.e), Long.valueOf(blockSize * availableBlocks)}));
                                    z = false;
                                    this.z = true;
                                    if (this.f3005b && 0 != 0 && arrayList.size() > 0) {
                                        com.estrongs.fs.a.b.a().b(null, this.u);
                                    }
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        new j(this).start();
                        if (this.f.size() > 0) {
                        }
                        this.processData.i = 2;
                        ArrayList arrayList2 = new ArrayList();
                        while (true) {
                            if (this.f.size() > 0) {
                            }
                        }
                    } else {
                        this.processData.c = -1L;
                        this.processData.e = -1L;
                        z = false;
                        this.z = true;
                        if (this.f3005b && 0 != 0 && arrayList.size() > 0) {
                            com.estrongs.fs.a.b.a().b(null, this.u);
                        }
                    }
                } else {
                    if (this.l && com.estrongs.android.util.ak.aZ(this.n.getAbsolutePath())) {
                        try {
                            StatFs statFs2 = new StatFs(this.n.getAbsolutePath());
                            long blockSize2 = statFs2.getBlockSize();
                            long availableBlocks2 = statFs2.getAvailableBlocks();
                            if (this.processData.e - this.processData.f > availableBlocks2 * blockSize2) {
                                setTaskResult(9, new com.estrongs.a.q("Error", new Long[]{Long.valueOf(this.processData.e - this.processData.f), Long.valueOf(blockSize2 * availableBlocks2)}));
                                z = false;
                                this.z = true;
                                if (this.f3005b && 0 != 0 && arrayList.size() > 0) {
                                    com.estrongs.fs.a.b.a().b(null, this.u);
                                }
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    new j(this).start();
                    if (this.f.size() > 0) {
                        this.processData.f196a = this.f.get(0).f3008a.getAbsolutePath();
                        onProgress(this.processData);
                    }
                    this.processData.i = 2;
                    ArrayList arrayList22 = new ArrayList();
                    while (true) {
                        try {
                            if (this.f.size() > 0) {
                                if (this.processData.c > 0) {
                                    this.processData.d = this.processData.c;
                                }
                                if (this.processData.e > 0) {
                                    this.processData.f = this.processData.e;
                                }
                                onProgress(this.processData);
                                if (((com.estrongs.a.a.e) getDecisionData(com.estrongs.a.a.e.class)) == null || this.h != this.g) {
                                    setTaskResult(0, this.k);
                                } else {
                                    setTaskResult(3, null);
                                }
                                z = true;
                                this.z = true;
                                if (this.f3005b && arrayList22 != null && arrayList22.size() > 0) {
                                    com.estrongs.fs.a.b.a().b(arrayList22, this.u);
                                }
                            } else if (taskStopped()) {
                                z = false;
                                this.z = true;
                                if (this.f3005b && arrayList22 != null && arrayList22.size() > 0) {
                                    com.estrongs.fs.a.b.a().b(arrayList22, this.u);
                                }
                            } else {
                                k remove = this.f.remove(0);
                                if (com.estrongs.android.util.ak.ao(remove.f3008a.getAbsolutePath()) && (extra = remove.f3008a.getExtra("user_info")) != null && !com.estrongs.android.util.aw.a(extra, com.estrongs.android.ui.pcs.aw.a().f())) {
                                    z = false;
                                    this.z = true;
                                    if (this.f3005b && arrayList22 != null && arrayList22.size() > 0) {
                                        com.estrongs.fs.a.b.a().b(arrayList22, this.u);
                                    }
                                } else if (!com.estrongs.android.util.ak.d(remove.f3008a.getAbsolutePath(), remove.f3009b)) {
                                    if (!this.c.a(remove)) {
                                        if (getTaskResult().f229a == 1 || com.estrongs.fs.d.a().a(this.n.getPath(), false, false) != null) {
                                            arrayList22.add(new com.estrongs.fs.n(this.n, remove.f3008a.getName()));
                                        }
                                        z = false;
                                        this.z = true;
                                        if (this.f3005b && arrayList22 != null && arrayList22.size() > 0) {
                                            com.estrongs.fs.a.b.a().b(arrayList22, this.u);
                                        }
                                    } else if (this.e.containsKey(remove.f3008a.getPath())) {
                                        arrayList22.add(new com.estrongs.fs.n(this.n, com.estrongs.android.util.ak.d(this.e.get(remove.f3008a.getPath()))));
                                    } else {
                                        arrayList22.add(new com.estrongs.fs.n(this.n, remove.f3008a.getName()));
                                    }
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                            arrayList = arrayList22;
                            e.printStackTrace();
                            setTaskResult(10000, new com.estrongs.a.q(e.toString(), e));
                            z = false;
                            this.z = true;
                            if (this.f3005b && arrayList != null && arrayList.size() > 0) {
                                com.estrongs.fs.a.b.a().b(arrayList, this.u);
                            }
                            return z;
                        } catch (Throwable th) {
                            th = th;
                            arrayList = arrayList22;
                            this.z = true;
                            if (this.f3005b && arrayList != null && arrayList.size() > 0) {
                                com.estrongs.fs.a.b.a().b(arrayList, this.u);
                            }
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e4) {
            e = e4;
        }
        return z;
    }
}
