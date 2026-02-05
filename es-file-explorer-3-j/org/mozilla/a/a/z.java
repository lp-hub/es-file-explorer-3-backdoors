package org.mozilla.a.a;

/* loaded from: classes.dex */
public abstract class z {
    public static byte a(z zVar, byte b2, byte b3) {
        return (byte) ((zVar.b()[(((zVar.c() * b3) + ((zVar.a()[(b2 & 255) >> 3] >> ((b2 & 7) << 2)) & 15)) & 255) >> 3] >> (((((zVar.c() * b3) + ((zVar.a()[(b2 & 255) >> 3] >> ((b2 & 7) << 2)) & 15)) & 255) & 7) << 2)) & 15 & 255);
    }

    public abstract int[] a();

    public abstract int[] b();

    public abstract int c();

    public abstract String d();

    public abstract boolean e();
}
