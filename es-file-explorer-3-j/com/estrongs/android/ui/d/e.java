package com.estrongs.android.ui.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.q;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static int f1932a;

    /* renamed from: b, reason: collision with root package name */
    private static List<d> f1933b = new ArrayList();

    public static int a() {
        int i;
        synchronized (f1933b) {
            i = f1932a;
        }
        return i;
    }

    public static int a(String str) {
        if (str == null) {
            return 0;
        }
        synchronized (f1933b) {
            int E = ak.E(str);
            for (int i = 0; i < f1933b.size(); i++) {
                d dVar = f1933b.get(i);
                if (E == ak.E(dVar.b())) {
                    dVar.a(str);
                    return i;
                }
            }
            if (f1933b.size() >= 8) {
                f1933b.get(7).a(str);
                return 7;
            }
            f1933b.add(new d(str));
            return f1933b.size() - 1;
        }
    }

    public static void a(int i) {
        if (i >= c()) {
            i = 0;
        }
        f1932a = i;
    }

    public static void a(Context context) {
        JSONArray jSONArray = new JSONArray();
        try {
            synchronized (f1933b) {
                for (d dVar : f1933b) {
                    if (dVar.a() != -1) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("key_window_path", dVar.b());
                        jSONArray.put(jSONObject);
                    }
                }
            }
            SharedPreferences.Editor edit = context.getSharedPreferences("cached_windows", 0).edit();
            edit.putString("key_windows", jSONArray.toString());
            edit.commit();
        } catch (Exception e) {
        }
    }

    public static void a(d dVar) {
        try {
            synchronized (f1933b) {
                f1933b.add(dVar);
            }
        } catch (Exception e) {
        }
    }

    public static void a(d dVar, int i) {
        try {
            synchronized (f1933b) {
                if (i >= f1933b.size()) {
                    f1933b.add(dVar);
                } else {
                    f1933b.add(i, dVar);
                }
            }
        } catch (Exception e) {
        }
    }

    public static int b(d dVar) {
        synchronized (f1933b) {
            for (int i = 0; i < f1933b.size(); i++) {
                if (dVar == f1933b.get(i)) {
                    return i;
                }
            }
            return -1;
        }
    }

    public static d b() {
        synchronized (f1933b) {
            if (!aw.a((List<?>) f1933b, f1932a)) {
                return null;
            }
            return f1933b.get(f1932a);
        }
    }

    public static void b(Context context) {
        synchronized (f1933b) {
            q a2 = q.a(context);
            LinkedList<String> O = a2.O();
            f1933b = new ArrayList();
            if ("mounted".equals(Environment.getExternalStorageState())) {
                Iterator<String> it = O.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if ("#home#".equals(next)) {
                        next = a2.e("market");
                    }
                    if (next != null && m.j && next.equals("/")) {
                        if (O.size() <= 1) {
                            next = "/sdcard";
                        }
                    }
                    f1933b.add(new d(next));
                }
            } else {
                f1933b.add(new d(com.estrongs.android.pop.b.b()));
            }
        }
    }

    public static boolean b(int i) {
        if (i < 0) {
            return false;
        }
        synchronized (f1933b) {
            if (f1933b.size() <= 1 || f1933b.size() <= i) {
                return false;
            }
            d remove = f1933b.remove(i);
            if (i <= f1932a || f1932a == c()) {
                f1932a--;
            }
            if (remove.c() != null) {
                remove.c().recycle();
            }
            return true;
        }
    }

    public static int c() {
        int size;
        synchronized (f1933b) {
            size = f1933b.size();
        }
        return size;
    }

    public static d c(int i) {
        synchronized (f1933b) {
            if (!aw.a((List<?>) f1933b, i)) {
                return d.f1930b;
            }
            return f1933b.get(i);
        }
    }

    public static void d() {
        synchronized (f1933b) {
            f1932a = 0;
            for (d dVar : f1933b) {
                if (dVar.c() != null && !dVar.c().isRecycled()) {
                    dVar.c().recycle();
                }
            }
            f1933b.clear();
        }
    }
}
