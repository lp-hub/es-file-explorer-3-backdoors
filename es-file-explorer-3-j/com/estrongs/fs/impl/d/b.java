package com.estrongs.fs.impl.d;

import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.fs.c.d;
import com.estrongs.fs.g;
import com.estrongs.fs.h;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class b extends com.estrongs.fs.impl.n.a {

    /* renamed from: a, reason: collision with root package name */
    private static b f3067a;

    /* renamed from: b, reason: collision with root package name */
    private static final String f3068b = d.f3039a + "/cache/book.cache";
    private static boolean c = true;

    private b() {
    }

    public static b a() {
        if (f3067a == null) {
            f3067a = new b();
        }
        return f3067a;
    }

    public static boolean d(String str) {
        String substring;
        if (str.equals("book://")) {
            substring = ak.d();
        } else {
            if (!str.startsWith("book://")) {
                return false;
            }
            substring = str.substring("book://".length());
        }
        return new File(substring).exists();
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
        return f3068b;
    }

    @Override // com.estrongs.fs.impl.n.a
    protected String c() {
        return "document";
    }

    @Override // com.estrongs.fs.impl.n.a
    protected boolean d() {
        return c;
    }
}
