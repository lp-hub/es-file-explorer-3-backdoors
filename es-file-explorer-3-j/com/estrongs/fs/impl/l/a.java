package com.estrongs.fs.impl.l;

import android.content.Context;
import android.os.Looper;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.q;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.pop.utils.bs;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.fs.g;
import com.estrongs.fs.l;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class a {
    private static List<g> a(Context context) {
        ArrayList arrayList = new ArrayList();
        q.a(context).a(arrayList);
        return arrayList;
    }

    public static List<g> a(Context context, String str) {
        if (!ak.aU(str)) {
            throw new IllegalArgumentException(str);
        }
        if (ak.F(str)) {
            return a(context);
        }
        if (ak.H(str)) {
            return b(context);
        }
        if (ak.aN(str)) {
            return c(context);
        }
        if (ak.an(str)) {
            return d(context);
        }
        if (ak.au(str)) {
            return e(context);
        }
        return null;
    }

    private static List<g> b(Context context) {
        ArrayList arrayList = new ArrayList();
        q.a(context).d(arrayList);
        return arrayList;
    }

    private static List<g> c(Context context) {
        ArrayList arrayList = new ArrayList();
        if (!aw.a()) {
            return arrayList;
        }
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        if (!com.estrongs.android.pop.app.b.a.d) {
            return com.estrongs.fs.impl.c.a.c();
        }
        com.estrongs.fs.impl.c.a.a(context, (ArrayList<g>) arrayList);
        return arrayList;
    }

    private static List<g> d(Context context) {
        ArrayList arrayList = new ArrayList();
        q.a(context).b(arrayList);
        return arrayList;
    }

    private static List<g> e(Context context) {
        ArrayList arrayList = new ArrayList();
        q.a(context).c(arrayList);
        String f = com.estrongs.android.ui.pcs.aw.a().f();
        if (bs.a()) {
            arrayList.add(new b("SP://" + (f == null ? ":" : f) + "@pcs", l.K, f == null ? FexApplication.a().getString(C0000R.string.category_pcs) : f.split(":")[0]));
        }
        arrayList.add(new CreateSiteFileObject(context.getResources().getString(C0000R.string.create_site)));
        return arrayList;
    }
}
