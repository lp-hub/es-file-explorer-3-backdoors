package com.estrongs.fs.impl.d;

import android.database.DatabaseUtils;
import com.estrongs.android.util.av;
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
        String[] split = av.c().split(";");
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < split.length; i++) {
            if (i > 0) {
                stringBuffer.append(" or ");
            }
            stringBuffer.append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString("%" + split[i]));
        }
        return stringBuffer.toString();
    }
}
