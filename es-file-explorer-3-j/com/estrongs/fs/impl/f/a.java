package com.estrongs.fs.impl.f;

import android.net.Uri;
import com.estrongs.android.pop.utils.bt;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.g;
import com.estrongs.fs.h;
import com.estrongs.fs.k;
import com.estrongs.fs.m;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class a extends k {

    /* renamed from: a, reason: collision with root package name */
    private HashMap<String, a> f3071a = new HashMap<>();

    public static String[] a(Uri uri) {
        String path = uri.getPath();
        if (path.startsWith("/")) {
            path = path.substring(1);
        }
        return path.split("/");
    }

    @Override // com.estrongs.fs.k, com.estrongs.fs.j
    public g a(String str) {
        return new m(str);
    }

    protected List<g> a() {
        return null;
    }

    public List<g> a(g gVar, TypedMap typedMap) {
        int i;
        if (gVar != null && bt.a(typedMap)) {
            Uri parse = Uri.parse(gVar.getPath());
            a aVar = this.f3071a.get(parse.getAuthority());
            if (aVar == null) {
                return null;
            }
            String[] a2 = a(parse);
            if (a2 != null) {
                int length = a2.length;
                if (length == 1) {
                    return aVar.a();
                }
                if (length == 2) {
                    int i2 = -1;
                    if (typedMap != null) {
                        i = typedMap.getInt(TypedMap.KEY_FROM, 1);
                        i2 = typedMap.getInt(TypedMap.KEY_TO, -1);
                    } else {
                        i = 1;
                    }
                    return aVar.a(a2[1], i, i2, gVar.getAbsolutePath());
                }
            }
            return null;
        }
        return null;
    }

    @Override // com.estrongs.fs.k, com.estrongs.fs.j
    public List<g> a(g gVar, h hVar, TypedMap typedMap) {
        if (gVar == null) {
            return null;
        }
        return a(gVar, (TypedMap) null);
    }

    protected List<g> a(String str, int i, int i2, String str2) {
        return null;
    }

    public void a(String str, a aVar) {
        this.f3071a.put(str, aVar);
    }

    public boolean a(g gVar, String str) {
        Uri parse = Uri.parse(gVar.getPath());
        String[] a2 = a(parse);
        if (a2 != null) {
            int length = a2.length;
            a aVar = this.f3071a.get(parse.getAuthority());
            if (length == 2) {
                return aVar.c(a2[1], str);
            }
            if (length == 3) {
                return aVar.d(a2[2], str);
            }
        }
        return false;
    }

    public boolean a(String str, String str2) {
        Uri parse = Uri.parse(str);
        a aVar = this.f3071a.get(parse.getAuthority());
        if (aVar == null) {
            return false;
        }
        String[] a2 = a(parse);
        if (a2 != null) {
            int length = a2.length;
            if (length == 2) {
                return aVar.b(a2[1], str2);
            }
            if (length == 3) {
                return aVar.d(a2[2]);
            }
        }
        return false;
    }

    @Override // com.estrongs.fs.k, com.estrongs.fs.j
    public boolean b(String str) {
        return false;
    }

    protected boolean b(String str, String str2) {
        return false;
    }

    protected boolean c(String str, String str2) {
        return false;
    }

    protected boolean d(String str) {
        return false;
    }

    protected boolean d(String str, String str2) {
        return false;
    }
}
