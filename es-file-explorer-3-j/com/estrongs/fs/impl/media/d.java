package com.estrongs.fs.impl.media;

import android.annotation.SuppressLint;
import android.media.MediaMetadataRetriever;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static MediaMetadataRetriever f3133a = null;

    @SuppressLint({"NewApi"})
    public static MediaMetadataRetriever a() {
        if (f3133a == null) {
            f3133a = new MediaMetadataRetriever();
        }
        return f3133a;
    }
}
