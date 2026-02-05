package com.estrongs.android.pop.utils;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class by {

    /* renamed from: a, reason: collision with root package name */
    static HashMap<String, Boolean> f1246a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    static LinkedList<bz> f1247b = new LinkedList<>();
    public static int c = 0;
    public static int d = 1;
    public static int e = 2;
    public static int f = 3;
    public static int g = 4;
    public static int h = 5;

    public static int a(String str) {
        if (!com.estrongs.android.util.ak.aZ(str)) {
            return d;
        }
        if (!str.endsWith("/.estrongs") && !str.endsWith("/.estrongs/") && !str.endsWith("/.estrongs/recycle/") && !str.endsWith("/.estrongs/recycle")) {
            Iterator<bz> it = f1247b.iterator();
            while (it.hasNext()) {
                bz next = it.next();
                if (str.startsWith(next.f1248a)) {
                    return next.f1249b;
                }
            }
        }
        int b2 = b(str);
        if (b2 == g || b2 == h) {
            return b2;
        }
        a(str, b2);
        return b2;
    }

    private static void a(String str, int i) {
        int lastIndexOf;
        if (str.endsWith("/")) {
            int length = str.length() - 2;
            if (length < 0) {
                return;
            } else {
                lastIndexOf = str.lastIndexOf("/", length);
            }
        } else {
            lastIndexOf = str.lastIndexOf("/");
        }
        if (lastIndexOf != -1) {
            String str2 = str.substring(0, lastIndexOf) + "/";
            bz bzVar = new bz();
            bzVar.f1248a = str2;
            bzVar.f1249b = i;
            f1247b.addFirst(bzVar);
            if (f1247b.size() > 5) {
                f1247b.removeLast();
            }
        }
    }

    protected static int b(String str) {
        String bn = com.estrongs.android.util.ak.bn(str);
        if (bn == null) {
            return f;
        }
        if ((str.endsWith("/.estrongs") || str.endsWith("/.estrongs/")) && com.estrongs.android.util.ak.d(str, com.estrongs.android.util.ak.bC(bn))) {
            return g;
        }
        if ((str.endsWith("/.estrongs/recycle/") || str.endsWith("/.estrongs/recycle")) && com.estrongs.android.util.ak.d(str, com.estrongs.android.util.ak.bD(bn))) {
            return h;
        }
        String str2 = !bn.endsWith("/") ? bn + "/" : bn;
        Boolean bool = f1246a.get(str2);
        if (bool == null) {
            String str3 = str2 + "/.es_recycle_test____" + System.currentTimeMillis();
            try {
                int i = 1;
                File file = new File(str3 + "(1)");
                while (file.exists()) {
                    int i2 = i + 1;
                    i = i2;
                    file = new File(str3 + "(" + i2 + ")");
                }
                if (file.createNewFile()) {
                    bool = new Boolean(true);
                    file.delete();
                } else {
                    bool = new Boolean(false);
                }
            } catch (Exception e2) {
                bool = new Boolean(false);
            }
            f1246a.put(str2, bool);
        }
        return bool.booleanValue() ? c : e;
    }
}
