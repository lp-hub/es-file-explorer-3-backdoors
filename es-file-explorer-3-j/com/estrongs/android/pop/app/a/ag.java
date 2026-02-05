package com.estrongs.android.pop.app.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.provider.MediaStore;
import com.estrongs.android.pop.FexApplication;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.tika.parser.mp3.Mp3Parser;

/* loaded from: classes.dex */
public class ag {

    /* renamed from: a, reason: collision with root package name */
    public long f398a;

    /* renamed from: b, reason: collision with root package name */
    private String f399b;
    private int c;
    private List<af> d;
    private boolean e;

    public ag(int i) {
        this.f398a = -1L;
        this.c = -1;
        this.d = null;
        this.e = true;
        this.c = i;
        this.d = new ArrayList();
    }

    public ag(long j, String str) {
        this.f398a = -1L;
        this.c = -1;
        this.d = null;
        this.e = true;
        this.f398a = j;
        this.f399b = str;
    }

    public ag(String str) {
        this.f398a = -1L;
        this.c = -1;
        this.d = null;
        this.e = true;
        this.f399b = str;
        this.d = new ArrayList();
    }

    private long a(long j, long j2) {
        long j3;
        if (j == j2) {
            return 0L;
        }
        SQLiteDatabase c = ai.a().c();
        long j4 = this.f398a;
        c.beginTransaction();
        try {
            c.execSQL("UPDATE audio_playlists_map SET play_order=-1 WHERE play_order=" + j + " AND playlist_id=" + j4);
            if (j < j2) {
                c.execSQL("UPDATE audio_playlists_map SET play_order=play_order-1 WHERE play_order<=" + j2 + " AND play_order>" + j + " AND playlist_id=" + j4);
                j3 = (j2 - j) + 1;
            } else {
                c.execSQL("UPDATE audio_playlists_map SET play_order=play_order+1 WHERE play_order>=" + j2 + " AND play_order<" + j + " AND playlist_id=" + j4);
                j3 = (j - j2) + 1;
            }
            c.execSQL("UPDATE audio_playlists_map SET play_order=" + j2 + " WHERE play_order=-1 AND playlist_id=" + j4);
            c.setTransactionSuccessful();
            return j3;
        } finally {
            c.endTransaction();
        }
    }

    public String a() {
        return this.f399b;
    }

    public void a(af afVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(afVar);
        a(arrayList);
    }

    public void a(af afVar, long j) {
        long j2 = this.d.get((int) j).d;
        if (afVar.f396a != -1) {
            a(afVar.d, j2);
        }
        long indexOf = this.d.indexOf(afVar);
        if (indexOf == j) {
            return;
        }
        if (indexOf < j) {
            long j3 = indexOf + 1;
            while (true) {
                long j4 = j3;
                if (j4 > j) {
                    break;
                }
                this.d.get((int) j4).d--;
                j3 = j4 + 1;
            }
        } else {
            for (long j5 = j; j5 < indexOf; j5++) {
                this.d.get((int) j5).d++;
            }
        }
        afVar.d = j2;
        this.d.remove((int) indexOf);
        this.d.add((int) j, afVar);
    }

    public void a(String str) {
        this.f399b = str;
    }

    public void a(List<af> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).f396a != -1) {
                arrayList.add(list.get(i));
            }
        }
        if (arrayList.size() > 0) {
            SQLiteDatabase c = ai.a().c();
            try {
                c.beginTransaction();
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    String[] strArr = {"", ""};
                    strArr[0] = "" + this.f398a;
                    strArr[1] = "" + ((af) arrayList.get(i2)).d;
                    c.execSQL("UPDATE audio_playlists_map SET play_order=play_order-1 WHERE playlist_id=? AND play_order>?", strArr);
                    for (int indexOf = this.d.indexOf(arrayList.get(i2)) + 1; indexOf < this.d.size(); indexOf++) {
                        this.d.get(indexOf).d--;
                    }
                }
                int size = arrayList.size() % 500 == 0 ? arrayList.size() / 500 : (arrayList.size() / 500) + 1;
                int i3 = 0;
                while (i3 < size) {
                    StringBuffer stringBuffer = new StringBuffer();
                    int size2 = i3 < size + (-1) ? 500 : arrayList.size() - ((size - 1) * 500);
                    for (int i4 = 0; i4 < size2; i4++) {
                        long j = ((af) arrayList.get((i3 * 500) + i4)).f396a;
                        if (i4 == 0) {
                            stringBuffer.append(j);
                        } else {
                            stringBuffer.append(",").append(j);
                        }
                    }
                    c.delete("audio_playlists_map", "_id IN (" + stringBuffer.toString() + ")", null);
                    i3++;
                }
                c.setTransactionSuccessful();
            } finally {
                c.endTransaction();
            }
        }
        this.d.removeAll(list);
    }

    public void a(boolean z) {
        this.e = z;
    }

    public int b() {
        return this.c;
    }

    public void b(String str) {
        if (com.estrongs.android.util.ak.aZ(str)) {
            str = com.estrongs.android.util.ak.bo(str);
        }
        af afVar = new af(str, c().size());
        afVar.c = this.f398a;
        c().add(afVar);
        if (this.f398a != -1) {
            afVar.b();
        }
    }

    public List<af> c() {
        HashMap hashMap;
        if (this.d != null) {
            return this.d;
        }
        this.d = new ArrayList();
        Cursor query = ai.a().b().query("audio_playlists_map", null, "playlist_id=" + this.f398a, null, null, null, "play_order");
        if (query != null) {
            HashMap hashMap2 = null;
            while (query.moveToNext()) {
                long j = query.getLong(query.getColumnIndex("_id"));
                String string = query.getString(query.getColumnIndex("_data"));
                long j2 = query.getLong(query.getColumnIndex("play_order"));
                String str = null;
                String str2 = null;
                String str3 = null;
                long j3 = -1;
                if (com.estrongs.android.util.ak.aP(string)) {
                    str = query.getString(query.getColumnIndex("title"));
                    str2 = query.getString(query.getColumnIndex("album"));
                    str3 = query.getString(query.getColumnIndex(Mp3Parser.ARTIST));
                    j3 = query.getLong(query.getColumnIndex("duration"));
                }
                af afVar = new af(j, string, j, j2, str, str2, str3, j3);
                this.d.add(afVar);
                if (com.estrongs.android.util.ak.aO(string)) {
                    hashMap = hashMap2 == null ? new HashMap() : hashMap2;
                    hashMap.put(string, afVar);
                } else {
                    hashMap = hashMap2;
                }
                hashMap2 = hashMap;
            }
            query.close();
            if (hashMap2 != null) {
                ArrayList arrayList = new ArrayList(hashMap2.keySet());
                int size = arrayList.size() % 500 == 0 ? arrayList.size() / 500 : (arrayList.size() / 500) + 1;
                int i = 0;
                while (i < size) {
                    StringBuffer stringBuffer = new StringBuffer();
                    int size2 = i < size + (-1) ? 500 : arrayList.size() - ((size - 1) * 500);
                    for (int i2 = 0; i2 < size2; i2++) {
                        String str4 = (String) arrayList.get((i * 500) + i2);
                        if (i2 == 0) {
                            stringBuffer.append(DatabaseUtils.sqlEscapeString(str4));
                        } else {
                            stringBuffer.append(",").append(DatabaseUtils.sqlEscapeString(str4));
                        }
                    }
                    try {
                        Cursor query2 = FexApplication.a().getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_data", "title", "album", Mp3Parser.ARTIST, "duration"}, "_data IN (" + stringBuffer.toString() + ")", null, null);
                        if (query2 != null) {
                            while (query2.moveToNext()) {
                                String string2 = query2.getString(query2.getColumnIndex("_data"));
                                String string3 = query2.getString(query2.getColumnIndex("title"));
                                String string4 = query2.getString(query2.getColumnIndex("album"));
                                String string5 = query2.getString(query2.getColumnIndex(Mp3Parser.ARTIST));
                                long j4 = query2.getLong(query2.getColumnIndex("duration"));
                                af afVar2 = (af) hashMap2.get(string2);
                                if (afVar2 != null) {
                                    afVar2.e = string3;
                                    afVar2.f = string4;
                                    afVar2.g = string5;
                                    afVar2.h = j4;
                                }
                            }
                            query2.close();
                        }
                    } catch (Exception e) {
                    }
                    i++;
                }
            }
        }
        return this.d;
    }

    public void c(String str) {
        this.f399b = str;
        if (this.f398a != -1) {
            SQLiteDatabase c = ai.a().c();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", this.f399b);
            c.update("audio_playlists", contentValues, "_id=" + this.f398a, null);
        }
    }

    public void d() {
        this.d.clear();
        if (this.f398a != -1) {
            SQLiteDatabase c = ai.a().c();
            try {
                c.beginTransaction();
                c.delete("audio_playlists_map", "playlist_id=" + this.f398a, null);
                c.setTransactionSuccessful();
            } finally {
                c.endTransaction();
            }
        }
    }

    public void e() {
        boolean z;
        boolean z2 = true;
        if (this.f398a != -1) {
            return;
        }
        if (this.f398a == -1) {
            SQLiteDatabase c = ai.a().c();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", this.f399b);
            this.f398a = c.insert("audio_playlists", null, contentValues);
            z = true;
        } else {
            z = false;
        }
        if (this.d != null) {
            try {
                SQLiteDatabase c2 = ai.a().c();
                SQLiteStatement compileStatement = c2.compileStatement("INSERT into audio_playlists_map (_data,playlist_id,play_order,title,album,artist,duration) values(?,?,?,?,?,?,?)");
                c2.beginTransaction();
                for (int i = 0; i < this.d.size(); i++) {
                    try {
                        try {
                            if (z) {
                                this.d.get(i).c = this.f398a;
                            }
                            compileStatement.bindString(1, this.d.get(i).f397b);
                            compileStatement.bindLong(2, this.d.get(i).c);
                            compileStatement.bindLong(3, this.d.get(i).d);
                            if (this.d.get(i).e != null) {
                                compileStatement.bindString(4, this.d.get(i).e);
                            }
                            if (this.d.get(i).f != null) {
                                compileStatement.bindString(5, this.d.get(i).f);
                            }
                            if (this.d.get(i).g != null) {
                                compileStatement.bindString(6, this.d.get(i).g);
                            }
                            if (0 <= this.d.get(i).h) {
                                compileStatement.bindLong(7, this.d.get(i).h);
                            }
                            compileStatement.execute();
                        } finally {
                            c2.endTransaction();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        c2.endTransaction();
                        z2 = false;
                    }
                }
                c2.setTransactionSuccessful();
                if (z2) {
                    Cursor query = c2.query("audio_playlists_map", new String[]{"_id", "_data"}, null, null, null, null, null);
                    while (query.moveToNext()) {
                        long j = query.getLong(0);
                        String string = query.getString(1);
                        int i2 = 0;
                        while (true) {
                            if (i2 >= this.d.size()) {
                                break;
                            }
                            if (this.d.get(i2).f397b.equals(string)) {
                                this.d.get(i2).f396a = j;
                                break;
                            }
                            i2++;
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public boolean f() {
        return this.e;
    }
}
