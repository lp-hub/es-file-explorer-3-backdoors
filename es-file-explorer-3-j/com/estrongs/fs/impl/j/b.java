package com.estrongs.fs.impl.j;

import android.provider.MediaStore;
import com.estrongs.android.util.ak;
import com.estrongs.fs.g;
import java.io.File;

/* loaded from: classes.dex */
public class b extends com.estrongs.fs.impl.media.b {
    private static b g;

    private b() {
        this.c = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        this.d = "_data";
        this.e = "bucket_display_name";
    }

    public static b b() {
        if (g == null) {
            g = new b();
        }
        return g;
    }

    public static boolean d(String str) {
        String substring;
        if (str.equals("pic://")) {
            substring = ak.d();
        } else {
            if (!str.startsWith("pic://")) {
                return false;
            }
            substring = str.substring("pic://".length());
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
