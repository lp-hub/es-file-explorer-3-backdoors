package com.estrongs.android.pop.app.editor;

import android.content.Context;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public abstract class a {
    public static a a(Context context, File file) {
        if (file == null) {
            return null;
        }
        return (com.estrongs.android.util.ak.aZ(file.getAbsolutePath()) || !com.estrongs.fs.impl.local.h.a(context, false)) ? new d(file) : new am(file);
    }

    public static boolean a(String str) {
        return com.estrongs.android.util.ak.aO(str) && !com.estrongs.android.util.ak.aZ(str);
    }

    public abstract int a(byte[] bArr, int i, int i2);

    public abstract long a();

    public abstract void a(long j);

    public abstract boolean a(File file);

    public abstract boolean b();

    public abstract long c();

    public abstract void d();

    public abstract InputStream e();

    public abstract OutputStream f();

    public abstract boolean g();

    public abstract String h();
}
