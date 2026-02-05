package com.estrongs.android.pop.app.a;

import android.database.sqlite.SQLiteDatabase;
import com.estrongs.android.pop.FexApplication;
import java.io.File;

/* loaded from: classes.dex */
public class ai {

    /* renamed from: a, reason: collision with root package name */
    private static String f402a = "/sdcard/.estrongs/";

    /* renamed from: b, reason: collision with root package name */
    private static ai f403b = null;
    private SQLiteDatabase c;

    private ai() {
    }

    public static ai a() {
        if (f403b == null) {
            f403b = new ai();
            if (com.estrongs.android.pop.q.a(FexApplication.a()).x()) {
                if (!new File(f402a).exists()) {
                    new File(f402a).mkdirs();
                }
                try {
                    f403b.c = SQLiteDatabase.openOrCreateDatabase(f402a + "playlists.db", (SQLiteDatabase.CursorFactory) null);
                } catch (Exception e) {
                    com.estrongs.android.pop.q.a(FexApplication.a()).g(false);
                    f403b.c = FexApplication.a().openOrCreateDatabase("playlists.db", 0, null);
                }
            } else {
                f403b.c = FexApplication.a().openOrCreateDatabase("playlists.db", 0, null);
            }
            f();
        }
        return f403b;
    }

    public static void d() {
        if (f403b != null) {
            if (f403b.c != null) {
                f403b.c.close();
                f403b.c = null;
            }
            f403b = null;
        }
    }

    public static String e() {
        return com.estrongs.android.pop.q.a(FexApplication.a()).x() ? f402a + "playlists.db" : FexApplication.a().getDatabasePath("playlists.db").getAbsolutePath();
    }

    private static void f() {
        f403b.c.execSQL("CREATE TABLE IF NOT EXISTS audio_playlists (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT NOT NULL)");
        f403b.c.execSQL("CREATE TABLE IF NOT EXISTS audio_playlists_map (_id INTEGER PRIMARY KEY AUTOINCREMENT,_data TEXT NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL,title TEXT,album TEXT,artist TEXT,duration INTEGER)");
    }

    public SQLiteDatabase b() {
        return this.c;
    }

    public SQLiteDatabase c() {
        return this.c;
    }
}
