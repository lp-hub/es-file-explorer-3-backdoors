package com.estrongs.fs.impl.p;

import android.provider.MediaStore;
import com.estrongs.android.util.ak;
import com.estrongs.fs.g;
import java.io.File;

/* loaded from: classes.dex */
public class b extends com.estrongs.fs.impl.media.b {
    private static b g;

    private b() {
        this.c = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        this.d = "_data";
        this.e = "title";
    }

    public static b b() {
        if (g == null) {
            g = new b();
        }
        return g;
    }

    public static boolean d(String str) {
        String substring;
        if (str.equals("video://")) {
            substring = ak.d();
        } else {
            if (!str.startsWith("video://")) {
                return false;
            }
            substring = str.substring("video://".length());
        }
        return new File(substring).exists();
    }

    @Override // com.estrongs.fs.impl.media.b
    protected g a(File file) {
        return new a(file);
    }

    @Override // com.estrongs.fs.impl.media.b
    protected String a() {
        return null;
    }
}
