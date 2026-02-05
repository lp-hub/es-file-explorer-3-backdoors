package com.estrongs.fs.impl.a;

import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.c.d;
import com.estrongs.fs.g;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class b extends com.estrongs.fs.impl.n.a {

    /* renamed from: a, reason: collision with root package name */
    private static b f3048a;

    /* renamed from: b, reason: collision with root package name */
    private static final String f3049b = d.f3039a + "/cache/apk.cache";
    private static boolean c = true;

    private b() {
    }

    public static b a() {
        if (f3048a == null) {
            f3048a = new b();
        }
        return f3048a;
    }

    @Override // com.estrongs.fs.impl.n.a, com.estrongs.fs.j
    public List<g> a(g gVar, h hVar, TypedMap typedMap) {
        ArrayList arrayList = new ArrayList();
        List<g> a2 = super.a(gVar, hVar, typedMap);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= a2.size()) {
                return arrayList;
            }
            arrayList.add(new a(a2.get(i2)));
            i = i2 + 1;
        }
    }

    @Override // com.estrongs.fs.impl.n.a
    protected void a(boolean z) {
        c = z;
    }

    @Override // com.estrongs.fs.impl.n.a
    protected String b() {
        return f3049b;
    }

    @Override // com.estrongs.fs.impl.n.a
    protected String c() {
        return "apk";
    }

    @Override // com.estrongs.fs.impl.n.a
    protected boolean d() {
        return c;
    }
}
