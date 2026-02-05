package org.mozilla.a.a;

import jcifs.smb.SmbConstants;

/* loaded from: classes.dex */
public class x extends z {

    /* renamed from: a, reason: collision with root package name */
    static int[] f3508a;

    /* renamed from: b, reason: collision with root package name */
    static int[] f3509b;
    static int c;
    static String d;

    public x() {
        f3508a = new int[32];
        f3508a[0] = 0;
        f3508a[1] = 2097408;
        f3508a[2] = 0;
        f3508a[3] = 12288;
        f3508a[4] = 0;
        f3508a[5] = 3355440;
        f3508a[6] = 0;
        f3508a[7] = 0;
        f3508a[8] = 0;
        f3508a[9] = 0;
        f3508a[10] = 0;
        f3508a[11] = 0;
        f3508a[12] = 0;
        f3508a[13] = 0;
        f3508a[14] = 0;
        f3508a[15] = 0;
        f3508a[16] = 0;
        f3508a[17] = 0;
        f3508a[18] = 0;
        f3508a[19] = 0;
        f3508a[20] = 0;
        f3508a[21] = 0;
        f3508a[22] = 0;
        f3508a[23] = 0;
        f3508a[24] = 0;
        f3508a[25] = 0;
        f3508a[26] = 0;
        f3508a[27] = 0;
        f3508a[28] = 0;
        f3508a[29] = 0;
        f3508a[30] = 0;
        f3508a[31] = 1409286144;
        f3509b = new int[7];
        f3509b[0] = 288647014;
        f3509b[1] = 572657937;
        f3509b[2] = 303387938;
        f3509b[3] = 1712657749;
        f3509b[4] = 357927015;
        f3509b[5] = 1427182933;
        f3509b[6] = 1381717;
        d = SmbConstants.UNI_ENCODING;
        c = 6;
    }

    @Override // org.mozilla.a.a.z
    public int[] a() {
        return f3508a;
    }

    @Override // org.mozilla.a.a.z
    public int[] b() {
        return f3509b;
    }

    @Override // org.mozilla.a.a.z
    public int c() {
        return c;
    }

    @Override // org.mozilla.a.a.z
    public String d() {
        return d;
    }

    @Override // org.mozilla.a.a.z
    public boolean e() {
        return true;
    }
}
