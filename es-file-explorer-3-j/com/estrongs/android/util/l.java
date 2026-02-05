package com.estrongs.android.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class l {
    public static int a() {
        return a(System.currentTimeMillis());
    }

    public static int a(long j) {
        return Integer.parseInt(new SimpleDateFormat("yyyyMMdd").format(new Date(j)));
    }
}
