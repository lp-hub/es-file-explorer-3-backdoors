package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.android.pop.utils.bt;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ac extends com.estrongs.a.a {

    /* renamed from: b, reason: collision with root package name */
    protected List<com.estrongs.fs.g> f2964b;
    com.estrongs.fs.d c;
    Activity d;
    y e;

    /* renamed from: a, reason: collision with root package name */
    protected List<com.estrongs.fs.g> f2963a = new ArrayList();
    Object f = new Object();
    private List<String> h = new ArrayList();
    private List<String> i = new ArrayList();
    private List<String> j = new ArrayList();
    private List<String> k = new ArrayList();
    long g = 0;

    public ac(Activity activity, com.estrongs.fs.d dVar, List<com.estrongs.fs.g> list) {
        this.c = dVar;
        this.f2964b = list;
        this.canRestart = false;
        this.d = activity;
        this.task_type = 24;
    }

    private String a(com.estrongs.fs.g gVar) {
        int indexOf;
        String absolutePath = gVar.getAbsolutePath();
        if (absolutePath.indexOf("/.estrongs/recycle/") == -1 || (indexOf = absolutePath.indexOf("/es_recycle_content/")) == -1) {
            return null;
        }
        return absolutePath.substring(0, (indexOf + "/es_recycle_content/".length()) - 1);
    }

    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        switch (i) {
            case 1:
                this.processData.d += ((Long) objArr[0]).longValue();
                this.processData.f196a = (String) objArr[1];
                onProgress(this.processData);
                return;
            default:
                super.handleMessage(i, objArr);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.a.a
    public void postTask() {
        super.postTask();
        try {
            if (com.estrongs.android.util.aw.e()) {
                if (this.k.size() > 0) {
                    com.estrongs.fs.impl.media.e.a(this.k, null);
                    return;
                }
                return;
            }
            if (this.h.size() > 0) {
                com.estrongs.fs.impl.j.b.b().a(this.h);
            }
            if (this.i.size() > 0) {
                com.estrongs.fs.impl.h.b.b().a(this.i);
            }
            if (this.j.size() > 0) {
                com.estrongs.fs.impl.p.b.b().a(this.j);
            }
        } catch (MediaStoreInsertException e) {
            e.printStackTrace();
            bt.b();
        }
    }

    @Override // com.estrongs.a.a
    public void requestStop() {
        synchronized (this.f) {
            if (this.e != null) {
                try {
                    this.e.requestStop();
                } catch (Exception e) {
                }
            }
        }
        super.requestStop();
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x0137, code lost:
    
        r1 = (java.util.ArrayList) r0.getValue();
        r8 = new com.estrongs.fs.impl.local.b(new java.io.File((java.lang.String) r0.getKey()));
        r13.g = 0;
        r9 = r13.f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0153, code lost:
    
        monitor-enter(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0154, code lost:
    
        r13.e = new com.estrongs.fs.b.y(r13.c, r1, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x015d, code lost:
    
        monitor-exit(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x015e, code lost:
    
        r13.e.a(r13);
        r13.e.f(false);
        r13.e.processData.i = 3;
        r13.e.processData.k = false;
        r13.e.addProgressListeners(getProgressListeners());
        r13.e.addProgressListener(r6);
        r13.e.setTaskDecisionListener(r7);
        r13.e.execute(false);
        r13.h.addAll(r13.e.h());
        r13.i.addAll(r13.e.i());
        r13.j.addAll(r13.e.j());
        r13.k.addAll(r13.e.k());
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01cd  */
    @Override // com.estrongs.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean task() {
        Iterator it;
        File parentFile;
        StringBuilder sb = new StringBuilder();
        int size = this.f2964b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            sb.append(this.f2964b.get(i).getName());
            if (i + 1 != size) {
                sb.append(" , ");
                if (i >= 4) {
                    sb.append("...");
                    break;
                }
            }
            i++;
        }
        this.processData.j = sb.toString();
        this.processData.c = this.f2964b.size();
        this.processData.m = false;
        this.processData.l = false;
        this.processData.k = false;
        this.processData.n = false;
        this.processData.o = true;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        for (com.estrongs.fs.g gVar : this.f2964b) {
            String bA = com.estrongs.android.util.ak.bA(gVar.getAbsolutePath());
            if (bA != null) {
                String substring = bA.substring(0, bA.lastIndexOf("/"));
                ArrayList arrayList = (ArrayList) hashMap.get(substring);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    hashMap.put(substring, arrayList);
                }
                arrayList.add(gVar);
                String a2 = a(gVar);
                if (a2 != null) {
                    hashSet.add(a2);
                }
            }
        }
        ad adVar = new ad(this);
        com.estrongs.android.pop.g gVar2 = new com.estrongs.android.pop.g(this.d);
        for (Map.Entry entry : hashMap.entrySet()) {
            synchronized (this.f) {
                if (taskStopped() && (this.e == null || this.e.taskStopped())) {
                    if (this.e != null && this.e.getTaskStatus() != 4) {
                        com.estrongs.a.p taskResult = this.e.getTaskResult();
                        setTaskResult(taskResult.f229a, taskResult.f230b);
                    }
                }
            }
            it = hashSet.iterator();
            while (it.hasNext()) {
                File file = new File((String) it.next());
                while (file != null && file.isDirectory()) {
                    String[] list = file.list();
                    if (list == null || list.length == 0) {
                        parentFile = file.getParentFile();
                        file.delete();
                        if (parentFile == null || parentFile.getAbsolutePath().endsWith("/.estrongs/recycle")) {
                            parentFile = null;
                        }
                    } else {
                        parentFile = null;
                    }
                    file = parentFile;
                }
            }
            if (!taskStopped()) {
                setTaskStatus(4);
            }
            return true;
        }
        it = hashSet.iterator();
        while (it.hasNext()) {
        }
        if (!taskStopped()) {
        }
        return true;
    }
}
