package com.estrongs.android.util;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDiskIOException;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.io.File;
import java.util.HashMap;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public class ax {

    /* renamed from: a, reason: collision with root package name */
    private static String f2686a = null;

    /* renamed from: b, reason: collision with root package name */
    private static ax f2687b = null;
    private static int d = 0;
    private static String[] e = new String[10];
    private static boolean[] f = new boolean[10];
    private static HashMap<String, Integer> g = new HashMap<>();
    private static int h = 0;
    private SQLiteDatabase c = null;
    private boolean i = false;

    private ax() {
    }

    public static void a(String str) {
        f2686a = str + "/";
    }

    private static String b(String str) {
        return str == null ? "\"\"" : "\"" + str + "\"";
    }

    private static void b(int i) {
        if (i == 3) {
            return;
        }
        if (i < 2) {
            try {
                f2687b.c.execSQL("ALTER TABLE visit_history ADD isdir INTEGER");
            } catch (Exception e2) {
                return;
            }
        }
        if (i < 3) {
            l();
        }
        f2687b.c.execSQL("UPDATE cachedb_version SET dbver=3");
    }

    public static synchronized ax c() {
        File file;
        ax axVar = null;
        synchronized (ax.class) {
            if (f2687b == null) {
                if (f2686a == null) {
                    axVar = new ax();
                } else {
                    File file2 = new File(f2686a);
                    try {
                        try {
                            file = new File(f2686a);
                        } catch (SQLiteDiskIOException e2) {
                            e = e2;
                            file = file2;
                        }
                        try {
                            if (!file.exists()) {
                                file.mkdirs();
                            }
                            f2687b = new ax();
                            f2687b.c = SQLiteDatabase.openOrCreateDatabase(f2686a + "visit_history", (SQLiteDatabase.CursorFactory) null);
                            if (f2687b.c == null) {
                                new File(f2686a + "visit_history").delete();
                                f2687b.c = SQLiteDatabase.openOrCreateDatabase(f2686a + "visit_history", (SQLiteDatabase.CursorFactory) null);
                                if (f2687b.c == null) {
                                    f2687b = null;
                                }
                            }
                            j();
                        } catch (SQLiteDiskIOException e3) {
                            e = e3;
                            f2687b = null;
                            file.delete();
                            e.printStackTrace();
                            axVar = new ax();
                            return axVar;
                        }
                    } catch (Exception e4) {
                        f2687b = null;
                        e4.printStackTrace();
                        axVar = new ax();
                    }
                }
            }
            axVar = f2687b;
        }
        return axVar;
    }

    private static void j() {
        try {
            f2687b.c.execSQL("CREATE TABLE IF NOT EXISTS visit_history (id INTEGER PRIMARY KEY,isdir INTEGER,path TEXT UNIQUE)");
            f2687b.c.execSQL("CREATE TABLE IF NOT EXISTS cachedb_version (dbver INTEGER UNIQUE)");
            b(k());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int k() {
        Cursor cursor;
        int i;
        try {
            try {
                cursor = f2687b.c.query("cachedb_version", new String[]{"dbver"}, null, null, null, null, null);
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
            e.printStackTrace();
            if (cursor != null) {
            }
            i = 0;
            return i;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
        if (cursor != null) {
            try {
            } catch (Exception e3) {
                e = e3;
                e.printStackTrace();
                if (cursor != null) {
                    cursor.close();
                }
                i = 0;
                return i;
            }
            if (cursor.getCount() != 0) {
                cursor.moveToFirst();
                i = cursor.getInt(0);
                if (cursor != null) {
                    cursor.close();
                }
                return i;
            }
        }
        f2687b.c.execSQL("INSERT INTO cachedb_version (dbver) values(3)");
        if (cursor != null) {
            cursor.close();
        }
        i = 0;
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void l() {
        Cursor cursor;
        if (f2687b == null || f2687b.c == null) {
            return;
        }
        try {
            cursor = f2687b.c.query("visit_history", new String[]{Name.MARK, "path"}, null, null, null, null, null);
            if (cursor != null) {
                try {
                    try {
                        if (cursor.getCount() != 0) {
                            for (boolean moveToFirst = cursor.moveToFirst(); moveToFirst; moveToFirst = cursor.moveToNext()) {
                                String string = cursor.getString(1);
                                String bq = ak.bq(string);
                                if (!bq.endsWith(string)) {
                                    f2687b.c.execSQL("UPDATE visit_history  SET path=" + b(bq) + " WHERE " + Name.MARK + "=" + b("" + cursor.getInt(0)));
                                }
                            }
                            if (cursor != null) {
                                cursor.close();
                                return;
                            }
                            return;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    public void a(int i) {
        if (i == d) {
            return;
        }
        synchronized (e) {
            h = 0;
            g.clear();
            d = i;
            if (d > 0) {
                f = new boolean[d];
                e = new String[d];
            }
        }
    }

    public void a(String str, boolean z) {
        com.estrongs.android.view.ar t;
        int E = ak.E(str);
        if (d == 0 || ak.aK(str) || ak.aU(str) || E == 3 || E == 13 || E == 17 || E == 24 || E == 12 || E == 14 || E == 16) {
            return;
        }
        try {
            FileExplorerActivity E2 = FileExplorerActivity.E();
            if (E2 != null && (t = E2.t()) != null) {
                if (com.estrongs.android.pop.utils.aa.b(str, t.hashCode())) {
                    return;
                }
            }
        } catch (Exception e2) {
        }
        if (z && !str.endsWith("/")) {
            str = str + "/";
        }
        synchronized (e) {
            Integer num = g.get(str);
            if (num != null) {
                for (int intValue = num.intValue(); intValue < h - 1; intValue++) {
                    e[intValue] = e[intValue + 1];
                    f[intValue] = f[intValue + 1];
                    g.put(e[intValue], Integer.valueOf(intValue));
                }
                e[h - 1] = str;
                f[h - 1] = z;
                g.put(str, Integer.valueOf(h - 1));
                return;
            }
            if (h < d) {
                e[h] = str;
                f[h] = z;
                g.put(str, Integer.valueOf(h));
                h++;
            } else {
                g.remove(e[0]);
                for (int i = 0; i < d - 1; i++) {
                    e[i] = e[i + 1];
                    f[i] = f[i + 1];
                    g.put(e[i], Integer.valueOf(i));
                }
                e[d - 1] = str;
                f[d - 1] = z;
                g.put(str, Integer.valueOf(d - 1));
            }
        }
    }

    public boolean a() {
        return this.i;
    }

    public void b() {
        if (this.i) {
            return;
        }
        this.i = true;
        a(20);
        i();
    }

    public void d() {
        try {
            if (this.c != null) {
                f2687b = null;
                this.c.close();
                this.c = null;
            }
        } catch (Exception e2) {
        }
    }

    public ay[] e() {
        ay[] ayVarArr = new ay[h];
        for (int i = 0; i < h; i++) {
            ayVarArr[i] = new ay();
            ayVarArr[i].f2688a = e[(h - i) - 1];
            ayVarArr[i].f2689b = f[(h - i) - 1];
        }
        return ayVarArr;
    }

    public void f() {
        synchronized (e) {
            h = 0;
            g.clear();
        }
    }

    public void g() {
        if (this.c == null) {
            return;
        }
        try {
            this.c.execSQL("DELETE FROM visit_history");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void h() {
        if (this.c == null) {
            return;
        }
        try {
            g();
            for (int i = 0; i < h && i < d; i++) {
                f2687b.c.execSQL("INSERT INTO visit_history (path,isdir) values(" + b(ak.bq(e[i])) + "," + (f[i] ? 1 : 0) + ")");
            }
        } catch (Exception e2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void i() {
        Cursor cursor;
        if (f2687b == null || f2687b.c == null || d == 0) {
            return;
        }
        try {
            cursor = f2687b.c.query("visit_history", new String[]{"path", "isdir"}, null, null, null, null, null);
            if (cursor != null) {
                try {
                    try {
                        if (cursor.getCount() != 0) {
                            int count = cursor.getCount();
                            h = 0;
                            g.clear();
                            for (boolean moveToPosition = count > d ? cursor.moveToPosition(count - d) : cursor.moveToFirst(); moveToPosition; moveToPosition = cursor.moveToNext()) {
                                a(ak.br(cursor.getString(0)), cursor.getInt(1) != 0);
                            }
                            if (cursor != null) {
                                cursor.close();
                                return;
                            }
                            return;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }
}
