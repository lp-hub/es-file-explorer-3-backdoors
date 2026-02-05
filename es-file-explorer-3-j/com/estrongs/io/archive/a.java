package com.estrongs.io.archive;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    protected static Map<String, h> f3187a = Collections.synchronizedMap(new LinkedHashMap(5));

    /* renamed from: b, reason: collision with root package name */
    protected static Map<String, Long> f3188b = Collections.synchronizedMap(new LinkedHashMap(5));
    private static boolean c = true;
    private static final Thread d = new b();

    static {
        d.start();
    }

    public static h a(String str) {
        f3188b.put(str, Long.valueOf(System.currentTimeMillis()));
        return f3187a.get(str);
    }

    public static void a(String str, h hVar) {
        f3187a.put(str, hVar);
        f3188b.put(str, Long.valueOf(System.currentTimeMillis()));
    }
}
