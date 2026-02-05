package com.estrongs.android.util;

import java.io.File;
import java.util.Comparator;

/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public static final t f2708a = new t();

    /* renamed from: b, reason: collision with root package name */
    public static final u f2709b = new u();
    public static final Comparator<File> c = new r();

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, boolean z) {
        return z ? "0" + str.toLowerCase() : "1" + str.toLowerCase();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, boolean z, boolean z2) {
        return z ? "0" + str : "1" + str;
    }
}
