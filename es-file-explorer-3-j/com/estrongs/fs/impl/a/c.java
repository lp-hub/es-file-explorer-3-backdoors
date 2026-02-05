package com.estrongs.fs.impl.a;

import android.database.DatabaseUtils;
import com.estrongs.fs.g;
import com.estrongs.fs.impl.media.e;

/* loaded from: classes.dex */
public class c extends e {
    @Override // com.estrongs.fs.impl.media.e
    protected g a(com.estrongs.fs.impl.local.b bVar) {
        return new a(bVar);
    }

    @Override // com.estrongs.fs.impl.media.e
    protected String a() {
        return "_data like " + DatabaseUtils.sqlEscapeString("%.apk");
    }
}
