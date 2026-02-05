package com.estrongs.io.archive;

/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public static String f3215a = ".zip";

    /* renamed from: b, reason: collision with root package name */
    public static String f3216b = ".gz";
    public static String c = ".gzip";
    public static String d = ".7z";
    public static String e = ".esc";

    public static String a(String str) {
        return str.endsWith(f3215a) ? f3215a : (str.endsWith(f3216b) || str.endsWith(c)) ? f3216b : str.endsWith(d) ? d : str.endsWith(e) ? e : "";
    }
}
