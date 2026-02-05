package com.estrongs.fs.b;

import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

/* loaded from: classes.dex */
public class w extends com.estrongs.a.a {
    public static int e = 1;
    public static int f = 2;

    /* renamed from: a, reason: collision with root package name */
    private int f3025a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f3026b;
    private com.estrongs.fs.d c;
    private boolean d;
    List<x> g;
    Stack<x> h;

    public w(com.estrongs.fs.d dVar, List<k> list) {
        this.f3025a = e;
        this.f3026b = true;
        this.d = false;
        this.g = new ArrayList();
        this.h = new Stack<>();
        this.c = dVar;
        this.processData.m = false;
        if (list != null && list.size() >= 1) {
            this.processData.l = !com.estrongs.android.util.ak.au(list.get(0).f3008a.getPath());
        }
        sendMessage(10, 1);
        for (int i = 0; i < list.size(); i++) {
            x xVar = new x();
            try {
                xVar.f3027a = list.get(i).f3008a.getPath();
                xVar.f3028b = list.get(i).f3008a;
                this.g.add(xVar);
                this.h.push(xVar);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        this.task_type = 1;
        this.canRestart = true;
    }

    public w(List<com.estrongs.fs.g> list, com.estrongs.fs.d dVar) {
        this(list, dVar, false);
    }

    public w(List<com.estrongs.fs.g> list, com.estrongs.fs.d dVar, boolean z) {
        this.f3025a = e;
        this.f3026b = true;
        this.d = false;
        this.g = new ArrayList();
        this.h = new Stack<>();
        this.d = z;
        this.c = dVar;
        this.processData.m = false;
        if (list != null && list.size() >= 1) {
            this.processData.l = !com.estrongs.android.util.ak.au(list.get(0).getPath());
        }
        sendMessage(10, 1);
        for (int i = 0; i < list.size(); i++) {
            x xVar = new x();
            try {
                xVar.f3027a = list.get(i).getPath();
                xVar.f3028b = list.get(i);
                xVar.l = this.d;
                this.g.add(xVar);
                this.h.push(xVar);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        this.task_type = 1;
        this.canRestart = true;
    }

    private void a(x xVar, x xVar2) {
        xVar.c += xVar2.c;
        xVar.d += xVar2.d;
        xVar.e += xVar2.e;
        xVar.f += xVar2.f;
        xVar.g += xVar2.g;
        xVar.h += xVar2.h;
        xVar.i += xVar2.i;
        xVar.j += xVar2.j;
        xVar.k += xVar2.k;
    }

    private void a(x xVar, String str, long j) {
        int a2 = com.estrongs.android.util.av.a(str);
        if (com.estrongs.android.util.av.A(a2)) {
            xVar.i += j;
            return;
        }
        if (com.estrongs.android.util.av.d(a2)) {
            xVar.g += j;
            return;
        }
        if (com.estrongs.android.util.av.e(a2)) {
            xVar.h += j;
            return;
        }
        if (com.estrongs.android.util.av.a(a2)) {
            xVar.f += j;
            return;
        }
        if (com.estrongs.android.util.av.h(a2) || com.estrongs.android.util.av.s(a2) || com.estrongs.android.util.av.w(a2) || com.estrongs.android.util.av.t(a2) || com.estrongs.android.util.av.k(a2)) {
            xVar.j += j;
        } else {
            xVar.k += j;
        }
    }

    public List<x> a() {
        return this.g;
    }

    public void a(boolean z) {
        this.f3026b = z;
    }

    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        switch (i) {
            case 10:
                this.processData.i = ((Integer) objArr[0]).intValue();
                onProgress(this.processData);
                return;
            default:
                super.handleMessage(i, objArr);
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00af A[Catch: Exception -> 0x01b9, TryCatch #0 {Exception -> 0x01b9, blocks: (B:32:0x00a3, B:34:0x00af, B:35:0x00b1, B:75:0x00d4), top: B:31:0x00a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ea A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00b8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d4 A[Catch: Exception -> 0x01b9, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x01b9, blocks: (B:32:0x00a3, B:34:0x00af, B:35:0x00b1, B:75:0x00d4), top: B:31:0x00a3 }] */
    @Override // com.estrongs.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean task() {
        boolean z;
        List<com.estrongs.fs.g> a2;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(com.estrongs.android.util.ak.a());
        while (this.h.size() > 0) {
            if (taskStopped()) {
                return false;
            }
            x peek = this.h.peek();
            if (peek.m) {
                x xVar = peek.p;
                if (xVar != null) {
                    a(xVar, peek);
                }
                peek.n = true;
                this.h.pop();
            } else {
                boolean z2 = peek.l;
                x xVar2 = new x();
                if (peek.f3028b.getFileType().a()) {
                    try {
                        if (z2) {
                            String bt = com.estrongs.android.util.ak.bt(peek.f3028b.getAbsolutePath());
                            if (bt != null) {
                                int i = 0;
                                while (i < arrayList.size() && !bt.equals(arrayList.get(i))) {
                                    i++;
                                }
                                if (i < arrayList.size()) {
                                    arrayList.remove(i);
                                    z = false;
                                } else {
                                    this.h.pop();
                                }
                            } else if (com.estrongs.android.util.ak.bn(peek.f3028b.getAbsolutePath()) != null) {
                                z = false;
                            }
                            peek.e++;
                            a2 = this.c.a(!peek.f3027a.endsWith("/") ? peek.f3027a : peek.f3027a + "/", true);
                            if (a2 != null) {
                                peek.m = true;
                            } else {
                                for (int i2 = 0; i2 < a2.size(); i2++) {
                                    if (taskStopped()) {
                                        peek.o.clear();
                                        this.processData.d -= xVar2.c;
                                        this.processData.f -= xVar2.d + xVar2.e;
                                        onProgress(this.processData);
                                        return false;
                                    }
                                    try {
                                        com.estrongs.fs.g gVar = a2.get(i2);
                                        this.processData.f196a = gVar.getAbsolutePath();
                                        if (gVar.getFileType().a()) {
                                            xVar2.e++;
                                            this.processData.d++;
                                            if (this.f3026b) {
                                                x xVar3 = new x();
                                                xVar3.f3027a = gVar.getAbsolutePath();
                                                xVar3.p = peek;
                                                xVar3.f3028b = gVar;
                                                xVar3.l = z;
                                                peek.o.add(xVar3);
                                            }
                                            onProgress(this.processData);
                                        } else {
                                            xVar2.d++;
                                            this.processData.d++;
                                            long length = gVar.length();
                                            xVar2.c += length;
                                            if ((this.f3025a & f) == 1) {
                                                a(xVar2, gVar.getAbsolutePath(), length);
                                            }
                                            com.estrongs.a.a.i iVar = this.processData;
                                            iVar.f = length + iVar.f;
                                            onProgress(this.processData);
                                        }
                                    } catch (Exception e2) {
                                    }
                                }
                                a(peek, xVar2);
                                for (int i3 = 0; i3 < peek.o.size(); i3++) {
                                    this.h.push(peek.o.get(i3));
                                }
                                peek.m = true;
                            }
                        }
                        a2 = this.c.a(!peek.f3027a.endsWith("/") ? peek.f3027a : peek.f3027a + "/", true);
                        if (a2 != null) {
                        }
                    } catch (Exception e3) {
                        return false;
                    }
                    z = z2;
                    peek.e++;
                } else {
                    peek.m = true;
                    peek.d++;
                    this.processData.d++;
                    long length2 = peek.f3028b.length();
                    peek.c += length2;
                    com.estrongs.a.a.i iVar2 = this.processData;
                    iVar2.f = length2 + iVar2.f;
                    onProgress(this.processData);
                }
            }
        }
        setTaskResult(0, null);
        return true;
    }
}
