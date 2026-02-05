package com.estrongs.android.pop.app.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.provider.MediaStore;
import com.estrongs.android.pop.FexApplication;
import java.io.InputStream;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.mp3.Mp3Parser;

/* loaded from: classes.dex */
public class af {

    /* renamed from: a, reason: collision with root package name */
    public long f396a;

    /* renamed from: b, reason: collision with root package name */
    public String f397b;
    public long c;
    public long d;
    public String e;
    public String f;
    public String g;
    public long h;
    private String i;
    private boolean j;
    private Object k;
    private Bitmap l;

    public af(long j, String str, long j2, long j3, String str2, String str3, String str4, long j4) {
        this.f396a = -1L;
        this.h = -1L;
        this.j = false;
        this.k = new Object();
        this.f396a = j;
        this.f397b = str;
        this.c = j2;
        this.d = j3;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.h = j4;
    }

    public af(String str, long j) {
        this.f396a = -1L;
        this.h = -1L;
        this.j = false;
        this.k = new Object();
        this.f397b = str;
        this.d = j;
    }

    public Bitmap a(Context context) {
        if (this.l != null && !this.l.isRecycled()) {
            return this.l;
        }
        Cursor query = context.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "album_id"}, "_data=?", new String[]{com.estrongs.android.util.ak.bo(this.f397b)}, null);
        if (query == null) {
            return null;
        }
        if (query.moveToFirst()) {
            this.l = com.estrongs.android.util.ah.a(context, query.getLong(query.getColumnIndex("_id")), query.getLong(query.getColumnIndex("album_id")));
        }
        query.close();
        return this.l;
    }

    public String a() {
        if (this.i == null && this.h != -1) {
            long j = this.h;
            if (j <= 0) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            long j2 = j / 60000;
            if (j2 < 10) {
                sb.append(0);
            }
            sb.append(j2).append(':');
            long j3 = (j - (j2 * 60000)) / 1000;
            if (j3 < 10) {
                sb.append(0);
            }
            sb.append(j3);
            this.i = sb.toString();
        }
        return this.i;
    }

    public void b() {
        if (this.f396a == -1) {
            SQLiteDatabase c = ai.a().c();
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", this.f397b);
            contentValues.put("playlist_id", Long.valueOf(this.c));
            contentValues.put("play_order", Long.valueOf(this.d));
            contentValues.put("title", this.e);
            contentValues.put("album", this.f);
            contentValues.put(Mp3Parser.ARTIST, this.g);
            contentValues.put("duration", Long.valueOf(this.h));
            this.f396a = c.insert("audio_playlists_map", null, contentValues);
        }
    }

    public boolean c() {
        return (!this.j && this.e == null && this.f == null && this.g == null && this.h == -1) ? false : true;
    }

    /* JADX WARN: Finally extract failed */
    public void d() {
        InputStream inputStream = null;
        synchronized (this.k) {
            if (c()) {
                return;
            }
            if (com.estrongs.android.util.ak.aO(this.f397b)) {
                try {
                    Cursor query = FexApplication.a().getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"title", "album", Mp3Parser.ARTIST, "duration"}, "_data = " + DatabaseUtils.sqlEscapeString(this.f397b) + "", null, null);
                    if (query != null) {
                        while (query.moveToNext()) {
                            String string = query.getString(query.getColumnIndex("title"));
                            String string2 = query.getString(query.getColumnIndex("album"));
                            String string3 = query.getString(query.getColumnIndex(Mp3Parser.ARTIST));
                            long j = query.getLong(query.getColumnIndex("duration"));
                            this.e = string;
                            this.f = string2;
                            this.g = string3;
                            this.h = j;
                        }
                        query.close();
                    }
                    this.j = true;
                    return;
                } finally {
                    this.j = true;
                }
            }
            InputStream inputStream2 = null;
            try {
                String be = com.estrongs.android.util.ak.be(this.f397b);
                if (!be.endsWith(".mp3")) {
                    this.j = true;
                    if (0 != 0) {
                        try {
                            inputStream2.close();
                        } catch (Exception e) {
                        }
                    }
                    return;
                }
                InputStream e2 = com.estrongs.fs.d.a().e(be);
                if (e2 == null) {
                    this.j = true;
                    if (e2 != null) {
                        try {
                            e2.close();
                        } catch (Exception e3) {
                        }
                    }
                    return;
                }
                Metadata metadata = new Metadata();
                new Mp3Parser().parse(e2, metadata);
                this.e = metadata.get("title");
                this.g = metadata.get(Mp3Parser.ARTIST);
                this.f = metadata.get(Mp3Parser.ALBUM);
                e2.close();
                SQLiteDatabase c = ai.a().c();
                ContentValues contentValues = new ContentValues();
                contentValues.put("title", this.e);
                contentValues.put("album", this.f);
                contentValues.put(Mp3Parser.ARTIST, this.g);
                c.update("audio_playlists_map", contentValues, "_id=" + this.f396a, null);
                this.j = true;
                if (e2 != null) {
                    try {
                        e2.close();
                    } catch (Exception e4) {
                    }
                }
                return;
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (Exception e5) {
                    }
                }
                throw th;
            }
        }
    }
}
