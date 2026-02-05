package com.estrongs.fs.impl.h;

import android.provider.MediaStore;
import com.estrongs.android.util.ak;
import com.estrongs.fs.g;
import java.io.File;

/* loaded from: classes.dex */
public class b extends com.estrongs.fs.impl.media.b {
    private static b g;

    private b() {
        this.c = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
        this.d = "_data";
        this.e = "title_key";
    }

    public static b b() {
        if (g == null) {
            g = new b();
        }
        return g;
    }

    public static boolean d(String str) {
        String substring;
        if (str.equals("music://")) {
            substring = ak.d();
        } else {
            if (!str.startsWith("music://")) {
                return false;
            }
            substring = str.substring("music://".length());
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
