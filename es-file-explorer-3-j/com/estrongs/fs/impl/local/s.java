package com.estrongs.fs.impl.local;

import android.content.Context;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    private static s f3118a;

    /* renamed from: b, reason: collision with root package name */
    private Context f3119b;
    private NumberFormat c = NumberFormat.getInstance();

    private s(Context context) {
        this.f3119b = null;
        this.f3119b = context;
        this.c.setMaximumFractionDigits(1);
    }

    public static s a(Context context) {
        if (f3118a == null) {
            f3118a = new s(context);
        } else if (context != null) {
            f3118a.f3119b = context;
        }
        return f3118a;
    }

    public List<com.estrongs.fs.g> a(String str) {
        LinkedList linkedList;
        Exception e;
        boolean z;
        boolean p;
        HashMap hashMap;
        if (str == null) {
            return null;
        }
        try {
            z = com.estrongs.android.pop.q.a(this.f3119b).g() == 2;
            p = com.estrongs.android.pop.q.a(this.f3119b).p();
            hashMap = new HashMap();
            linkedList = new LinkedList();
        } catch (Exception e2) {
            linkedList = null;
            e = e2;
        }
        try {
            u uVar = new u(this);
            if (str.equals("/") || str.endsWith("/")) {
                uVar.f3120a = str;
            } else {
                uVar.f3120a = str + "/";
            }
            uVar.f3121b = null;
            uVar.c = z;
            uVar.d = p;
            uVar.e = hashMap;
            uVar.f = false;
            uVar.h = linkedList;
            h.a(str, uVar);
            return linkedList;
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            return linkedList;
        }
    }

    public boolean a(com.estrongs.fs.c cVar, Object obj) {
        u uVar = (u) obj;
        if (uVar.f) {
            uVar.g.add(cVar);
        } else if (cVar.d && uVar.i) {
            uVar.i = false;
        } else if (uVar.d || cVar.o.charAt(0) != '.') {
            r rVar = new r(cVar.f3034b, cVar.n);
            rVar.a(cVar.j);
            rVar.setName(cVar.o);
            if (cVar.d) {
                rVar.setFileType(com.estrongs.fs.l.f3183a);
            } else {
                rVar.setFileType(com.estrongs.fs.l.f3184b);
            }
            rVar.b(cVar.e);
            rVar.a(cVar.p);
            com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
            if (currentTask != null) {
                currentTask.sendMessage(11, rVar);
            }
            uVar.h.add(rVar);
        }
        return true;
    }

    public boolean a(String str, long j, int i, int i2, String str2, Object obj) {
        u uVar = (u) obj;
        com.estrongs.fs.c cVar = new com.estrongs.fs.c("");
        cVar.o = str2;
        cVar.d = str.charAt(0) == 'd' || str.charAt(0) == 'e';
        if (cVar.d) {
            cVar.f3034b = uVar.f3120a + cVar.o + "/";
        } else {
            cVar.f3034b = uVar.f3120a + cVar.o;
        }
        if (cVar.d) {
            cVar.e = 0L;
        } else {
            cVar.e = j;
        }
        cVar.j = i;
        cVar.j *= 1000;
        cVar.q = i2;
        cVar.p = str.substring(1, 10);
        if (str.charAt(0) == 'l' || str.charAt(0) == 'e') {
            cVar.n = true;
        }
        return a(cVar, obj);
    }

    public boolean b(String str) {
        return h.d(str) != null;
    }
}
